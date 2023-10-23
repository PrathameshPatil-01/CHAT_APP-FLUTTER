import 'package:chatapp_prathamesh/features/auth/screens/login_screen.dart';
import 'package:chatapp_prathamesh/chatapptheme.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ChatAppTheme.lightTheme,
      darkTheme: ChatAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(
        // Set background color
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/background.jpg'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'ChatApp',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context)
                            .colorScheme
                            .tertiary, // Set text color
                      ),
                    ),
                    SizedBox(height:size.height / 18),
                    const Text(
                      'Welcome to Chat App',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0), // Set text color
                      ),
                    ),
                    SizedBox(height:size.height / 10),
                    Image.asset(
                      'assets/bg.png',
                      height: 200,
                      width: 200,
                    ),
                    SizedBox(height:size.height / 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.tertiary,
                          foregroundColor:
                              Theme.of(context).colorScheme.onTertiary,
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          padding:
                              const EdgeInsets.all(15), // Set button padding
                        ),
                        onPressed: () {
                          navigateToLoginScreen(context);
                        },
                        child: const Text('GET STARTED'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
