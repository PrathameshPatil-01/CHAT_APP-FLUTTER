import 'dart:io';

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

  static const List<Widget> _widgetOptions = <Widget>[
    ContactsList(),
    StatusContactsScreen(),
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
          elevation: 30,
          foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          centerTitle: false,
          title: Text(
            'chatAPP',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search,
                  color: Theme.of(context).colorScheme.onPrimary),
              onPressed: () {
                Navigator.pushNamed(context, SearchList.routeName);
              },
            ),
            PopupMenuButton(
              icon: Icon(
                Icons.more_vert,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              itemBuilder: (context) => [
                if (_selectedIndex == 0)
                  PopupMenuItem(
                    textStyle: Theme.of(context).textTheme.titleMedium,
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
                      textStyle: Theme.of(context).textTheme.bodySmall,
                      child: const Text(
                        'Settings',
                      ),
                      onTap: () {})
              ],
            ),
          ],
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          color: Theme.of(context).colorScheme.primary,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              children: <Widget>[
                IconButton(
                  iconSize: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  tooltip: 'CHAT',
                  icon: Icon(Icons.chat_outlined,
                      color: _selectedIndex == 0
                          ? const Color.fromARGB(255, 0, 0, 0)
                          : Theme.of(context).colorScheme.onPrimary),
                  onPressed: () {
                    _onItemTapped(0);
                  },
                ),
                const Spacer(),
                IconButton(
                  iconSize: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  tooltip: 'Status',
                  icon: Icon(Icons.auto_awesome_sharp,
                      color: _selectedIndex == 1
                          ? const Color.fromARGB(255, 0, 0, 0)
                          : Theme.of(context).colorScheme.onPrimary),
                  onPressed: () {
                    _onItemTapped(1);
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: switch (_selectedIndex) {
          0 => FloatingActionButton.large(
              shape: Theme.of(context).floatingActionButtonTheme.shape,
              elevation: Theme.of(context).floatingActionButtonTheme.elevation,
              onPressed: () async {
                Navigator.pushNamed(context, SelectContactsScreen.routeName);
              },
              backgroundColor:
                  Theme.of(context).floatingActionButtonTheme.backgroundColor,
              child: Icon(
                Icons.add_circle_outline_sharp,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          1 => FloatingActionButton.large(
              shape: Theme.of(context).floatingActionButtonTheme.shape,
              elevation: Theme.of(context).floatingActionButtonTheme.elevation,
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
              backgroundColor:
                  Theme.of(context).floatingActionButtonTheme.backgroundColor,
              child: Icon(
                Icons.add_a_photo_outlined,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          int() => null,
        });
  }
}
