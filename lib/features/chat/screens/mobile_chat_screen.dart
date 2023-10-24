import 'package:chatapp_prathamesh/common/widgets/loader.dart';
import 'package:chatapp_prathamesh/features/auth/controller/auth_controller.dart';
import 'package:chatapp_prathamesh/features/call/controller/call_controller.dart';
import 'package:chatapp_prathamesh/features/call/screens/call_pickup_screen.dart';
import 'package:chatapp_prathamesh/features/chat/widgets/bottom_chat_field.dart';
import 'package:chatapp_prathamesh/features/chat/widgets/chat_list.dart';
import 'package:chatapp_prathamesh/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MobileChatScreen extends ConsumerWidget {
  static const String routeName = '/mobile-chat-screen';
  final String name;
  final String uid;
  final bool isGroupChat;
  final String profilePic;
  const MobileChatScreen({
    Key? key,
    required this.name,
    required this.uid,
    required this.isGroupChat,
    required this.profilePic,
  }) : super(key: key);

  void makeCall(WidgetRef ref, BuildContext context) {
    ref.read(callControllerProvider).makeCall(
          context,
          name,
          uid,
          profilePic,
          isGroupChat,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CallPickupScreen(
      scaffold: Scaffold(
        appBar: AppBar(
          foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: isGroupChat
              ? Text(
                  name,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).appBarTheme.foregroundColor,
                      ),
                )
              : StreamBuilder<UserModel>(
                  stream: ref.read(authControllerProvider).userDataById(uid),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Loader();
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Theme.of(context)
                                        .appBarTheme
                                        .foregroundColor,
                                  ),
                        ),
                        Row(
                          children: [
                            Text(
                              snapshot.data!.isOnline ? '🙂' : '😴',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              snapshot.data!.isOnline ? 'online' : 'offline',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }),
          centerTitle: false,
          actions: [
            IconButton(
              color: Theme.of(context).colorScheme.onPrimary,
              onPressed: () => makeCall(ref, context),
              icon: const Icon(Icons.videocam),
            ),
            IconButton(
              color: Theme.of(context).colorScheme.onPrimary,
              onPressed: () {},
              icon: const Icon(Icons.call),
            ),
            IconButton(
              color: Theme.of(context).colorScheme.onPrimary,
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ChatList(
                recieverUserId: uid,
                isGroupChat: isGroupChat,
              ),
            ),
            BottomChatField(
              recieverUserId: uid,
              isGroupChat: isGroupChat,
            ),
          ],
        ),
      ),
    );
  }
}
