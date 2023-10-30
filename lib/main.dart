import 'package:chatapp_prathamesh/chatapptheme.dart';
import 'package:chatapp_prathamesh/common/widgets/error.dart';
import 'package:chatapp_prathamesh/common/widgets/loader.dart';
import 'package:chatapp_prathamesh/features/auth/controller/auth_controller.dart';
import 'package:chatapp_prathamesh/features/landing/screens/landing_screen.dart';
import 'package:chatapp_prathamesh/firebase_options.dart';
import 'package:chatapp_prathamesh/mobile_layout_screen.dart';
import 'package:chatapp_prathamesh/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      theme: ChatAppTheme.lightTheme,
      darkTheme: ChatAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      onGenerateRoute: (settings) => generateRoute(settings),
      home: ref.watch(userDataAuthProvider).when(
            data: (user) {
              if (user == null) {
                return const LandingScreen();
              }
              return const MobileLayoutScreen();
            },
            error: (err, trace) {
              return ErrorScreen(
                error: err.toString(),
              );
            },
            loading: () => const Loader(),
          ),
    );
  }
}
