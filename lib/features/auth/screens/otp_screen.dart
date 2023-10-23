import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:chatapp_prathamesh/features/auth/controller/auth_controller.dart';

class OTPScreen extends ConsumerWidget {
  static const String routeName = '/otp-screen';
  final String verificationId;
  const OTPScreen({
    Key? key,
    required this.verificationId,
  }) : super(key: key);

  void verifyOTP(WidgetRef ref, BuildContext context, String userOTP) {
    ref.read(authControllerProvider).verifyOTP(
          context,
          verificationId,
          userOTP,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Verifying your number'),
          elevation: 0,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text('We have sent an SMS with a code.',
              style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(
                width: size.width * 0.5,
                child: TextField(
                  style: Theme.of(context).textTheme.labelMedium,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration:  InputDecoration(
                    hintText: '- - - - - -',
                    hintStyle: Theme.of(context).textTheme.labelMedium,
                  ),
                  onChanged: (val) {
                    if (val.length == 6) {
                      verifyOTP(ref, context, val.trim());
                    }
                  },
                ),
              ),
            ],
          ),
      ),
    );
  }
}
