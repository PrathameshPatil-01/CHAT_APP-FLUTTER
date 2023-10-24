import 'package:chatapp_prathamesh/common/widgets/error.dart';
import 'package:chatapp_prathamesh/common/widgets/loader.dart';
import 'package:chatapp_prathamesh/features/select_contacts/controller/select_contact_controller.dart';
import 'package:chatapp_prathamesh/features/group/screens/create_group_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectContactsScreen extends ConsumerStatefulWidget {
  static const String routeName = '/select-contact';
  const SelectContactsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SelectContactsScreen> createState() {
    return SelectContactsScreenState();
  }
}

class SelectContactsScreenState extends ConsumerState<SelectContactsScreen> {
  String name = "";
  bool isSearch = false;

  void selectContact(
      WidgetRef ref, Contact selectedContact, BuildContext context) {
    ref
        .read(selectContactControllerProvider)
        .selectContact(selectedContact, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isSearch
          ? AppBar(
              title: Card(
                child: TextField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search), hintText: 'Search...'),
                  onChanged: (val) {
                    setState(() {
                      name = val;
                    });
                  },
                ),
              ),
            )
          : AppBar(
              title: Text(
                'Select contact',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).appBarTheme.foregroundColor,
                    ),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  onPressed: () {
                    setState(() {
                      isSearch = !isSearch;
                    });
                  },
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                  ),
                ),
              ],
            ),
      body: ref.watch(getContactsProvider).when(
            data: (contactList) => ListView.builder(
                itemCount: contactList.length,
                itemBuilder: (context, index) {
                  final contact = contactList[index];
                  if (name.isEmpty) {
                    return InkWell(
                      onTap: () => selectContact(ref, contact, context),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ListTile(
                          title: Text(
                            contact.displayName,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          leading: contact.photo == null
                              ? const Icon(
                                  Icons.account_circle,
                                )
                              : CircleAvatar(
                                  backgroundImage: MemoryImage(contact.photo!),
                                  radius: 30,
                                ),
                        ),
                      ),
                    );
                  }

                  if (contact.displayName
                      .toString()
                      .toLowerCase()
                      .contains(name.toLowerCase())) {
                    return InkWell(
                      onTap: () => selectContact(ref, contact, context),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ListTile(
                          title: Text(
                            contact.displayName,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          leading: contact.photo == null
                              ? const Icon(Icons.account_circle)
                              : CircleAvatar(
                                  backgroundImage: MemoryImage(contact.photo!),
                                  radius: 30,
                                ),
                        ),
                      ),
                    );
                  }
                  return Container();
                }),
            error: (err, trace) => ErrorScreen(error: err.toString()),
            loading: () => const Loader(),
          ),
      persistentFooterButtons: [
        InkWell(
          onTap: () => Future(
            () => Navigator.pushNamed(context, CreateGroupScreen.routeName),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ListTile(
              title: Text(
                "Create Group",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              leading: const Icon(
                Icons.group_add_outlined,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
