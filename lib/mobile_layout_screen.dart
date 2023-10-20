import 'dart:io';

import 'package:chatapp_prathamesh/common/utils/colors.dart';
import 'package:chatapp_prathamesh/common/utils/utils.dart';
import 'package:chatapp_prathamesh/features/auth/controller/auth_controller.dart';
import 'package:chatapp_prathamesh/features/chat/widgets/contacts_list.dart';
import 'package:chatapp_prathamesh/features/group/screens/create_group_screen.dart';
import 'package:chatapp_prathamesh/features/search/screen/search.dart';
import 'package:chatapp_prathamesh/features/select_contacts/screens/select_contacts_screen.dart';
import 'package:chatapp_prathamesh/features/status/screens/confirm_status_screen.dart';
import 'package:chatapp_prathamesh/features/status/screens/status_contacts_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MobileLayoutScreen extends ConsumerStatefulWidget {
  const MobileLayoutScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MobileLayoutScreen> createState() => _MobileLayoutScreenState();
}

class _MobileLayoutScreenState extends ConsumerState<MobileLayoutScreen>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  String name = "";

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        ref.read(authControllerProvider).setUserState(true);
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.detached:
      case AppLifecycleState.paused:
        ref.read(authControllerProvider).setUserState(false);
        break;
      case AppLifecycleState.hidden:
    }
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    ContactsList(),
    StatusContactsScreen(),
    Text(
      'Index 2: Calls',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          centerTitle: false,
          title: const Text(
            'chatAPP',
            style: TextStyle(
              fontSize: 20,
              color: Colors.amber,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.grey),
              onPressed: () {
                Navigator.pushNamed(context, SearchList.routeName);
              },
            ),
            PopupMenuButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
              itemBuilder: (context) => [
                if (_selectedIndex == 0)
                  PopupMenuItem(
                    child: const Text(
                      'Create Group',
                    ),
                    onTap: () => Future(
                      () => Navigator.pushNamed(
                          context, CreateGroupScreen.routeName),
                    ),
                  )
                else
                  PopupMenuItem(
                      child: const Text(
                        'Settings',
                      ),
                      onTap: () {})
              ],
            ),
          ],
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: 'CHAT',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.auto_awesome_outlined),
              label: 'STATUS',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone_outlined),
              label: 'CALLS',
              backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        floatingActionButton: switch (_selectedIndex) {
          0 => FloatingActionButton(
              onPressed: () async {
                Navigator.pushNamed(context, SelectContactsScreen.routeName);
              },
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.message,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          1 => FloatingActionButton(
              onPressed: () async {
                File? pickedImage = await pickImageFromGallery(context);
                if (pickedImage != null) {
                  if (!context.mounted) return;
                  Navigator.pushNamed(
                    context,
                    ConfirmStatusScreen.routeName,
                    arguments: pickedImage,
                  );
                }
              },
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.add_a_photo_outlined,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          2 => FloatingActionButton(
              onPressed: () async {},
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.add_call,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          int() => null,
        });
  }
}
