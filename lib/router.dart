import 'dart:io';

import 'package:chatapp_prathamesh/common/widgets/error.dart';
import 'package:chatapp_prathamesh/features/auth/screens/login_screen.dart';
import 'package:chatapp_prathamesh/features/auth/screens/otp_screen.dart';
import 'package:chatapp_prathamesh/features/auth/screens/user_information_screen.dart';
import 'package:chatapp_prathamesh/features/chat/screens/mobile_chat_screen.dart';
import 'package:chatapp_prathamesh/features/group/screens/create_group_screen.dart';
import 'package:chatapp_prathamesh/features/select_contacts/screens/select_contacts_screen.dart';
import 'package:chatapp_prathamesh/features/status/screens/confirm_status_screen.dart';
import 'package:chatapp_prathamesh/features/settings/screen/settings.dart';
import 'package:chatapp_prathamesh/features/status/screens/status_screen.dart';
import 'package:chatapp_prathamesh/features/search/screen/search.dart';
import 'package:chatapp_prathamesh/models/status_model.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case OTPScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OTPScreen(
          verificationId: verificationId,
        ),
      );
    case UserInformationScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const UserInformationScreen(),
      );
    case SelectContactsScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const SelectContactsScreen(),
      );
    case SearchList.routeName:
      return MaterialPageRoute(
        builder: (context) => const SearchList(),
      );
    case MobileChatScreen.routeName:
      final arguments = settings.arguments as Map<String, dynamic>;
      final name = arguments['name'];
      final uid = arguments['uid'];
      final isGroupChat = arguments['isGroupChat'];
      final profilePic = arguments['profilePic'];
      return MaterialPageRoute(
        builder: (context) => MobileChatScreen(
          name: name,
          uid: uid,
          isGroupChat: isGroupChat,
          profilePic: profilePic,
        ),
      );
    case ConfirmStatusScreen.routeName:
      final file = settings.arguments as File;
      return MaterialPageRoute(
        builder: (context) => ConfirmStatusScreen(
          file: file,
        ),
      );
    case StatusScreen.routeName:
      final status = settings.arguments as Status;
      return MaterialPageRoute(
        builder: (context) => StatusScreen(
          status: status,
        ),
      );
    case CreateGroupScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const CreateGroupScreen(),
      );
    case SettingsScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const SettingsScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: 'This page doesn\'t exist'),
        ),
      );
  }
}
