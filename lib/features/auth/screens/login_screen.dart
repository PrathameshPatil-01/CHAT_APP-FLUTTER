import 'package:chatapp_prathamesh/common/utils/utils.dart';
import 'package:chatapp_prathamesh/features/auth/controller/auth_controller.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  void pickCountry() {
    showCountryPicker(
        countryListTheme: CountryListThemeData(
          searchTextStyle: Theme.of(context).textTheme.labelMedium,
        ),
        context: context,
        onSelect: (Country c) {
          setState(() {
            country = c;
          });
        });
  }

  void sendPhoneNumber() {
    String phoneNumber = phoneController.text.trim();
    if (country != null && phoneNumber.isNotEmpty) {
      ref
          .read(authControllerProvider)
          .signInWithPhone(context, '+${country!.phoneCode}$phoneNumber');
    } else {
      showSnackBar(context: context, content: 'Fill out all the fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
          title: const Text('Enter your phone number'),
          elevation: 0,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Please verify your phone number.',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: pickCountry,
                  child: const Text(
                    'Pick Country',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (country != null)
                      Text(
                        '+${country!.phoneCode}',
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    else
                      const Icon(color: Colors.redAccent, Icons.public_sharp),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: size.width * 0.6,
                      child: TextField(
                        style: Theme.of(context).textTheme.labelMedium,
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                        decoration: InputDecoration(
                          hintText: 'phone number',
                          hintStyle: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.6),
                SizedBox(
                  width: 140, // Adjust the button width as needed
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.tertiary,
                      foregroundColor: Theme.of(context)
                          .colorScheme
                          .onTertiary, // Set button color
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      padding: const EdgeInsets.all(15), // Set button padding
                    ),
                    onPressed: sendPhoneNumber,
                    child: const Text('NEXT'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
