import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static const String routeName = '/Settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Account'),
            leading: const Icon(Icons.account_circle),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigate to account settings screen
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Chats'),
            leading: const Icon(Icons.chat),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigate to chat settings screen
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Notifications'),
            leading: const Icon(Icons.notifications),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigate to notification settings screen
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Privacy'),
            leading: const Icon(Icons.lock),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigate to privacy settings screen
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Help'),
            leading: const Icon(Icons.help),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigate to help screen
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Log Out'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {
              // Perform log out action
            },
          ),
        ],
      ),
    );
  }
}