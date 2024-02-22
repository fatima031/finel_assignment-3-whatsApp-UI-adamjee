import 'package:flutter/material.dart';

class page_view extends StatefulWidget {
  const page_view({super.key});

  @override
  State<page_view> createState() => _page_viewState();
}

class _page_viewState extends State<page_view> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: false,
          title: const Text(
            "WhatsApp",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(
                child: Text("CHATS"),
              ),
              Tab(
                child: Text("STATUS"),
              ),
              Tab(
                child: Text("CALLS"),
              )
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                      const PopupMenuItem(value: "1", child: Text("new group")),
                      const PopupMenuItem(value: "2", child: Text("settings")),
                      const PopupMenuItem(value: "3", child: Text("Logout")),
                    ]),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: TabBarView(children: [
          const Text("camera"),
          ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text("Saman"),
                  subtitle: Text("hey Flutter!"),
                  trailing: Text("2:25pm"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("url"),
                  ),
                );
              }),
           ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text("Saman"),
                  subtitle: Text("hey Flutter!"),
                  trailing: Text("2:25pm"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("url"),
                  ),
                );
              }),
          ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text("Saman"),
                  subtitle: Text("hey Flutter!"),
                  trailing: Text("2:25pm"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("url"),
                  ),
                );
              }),
        ]),
      ),
    );
  }
}

// myTile() {
//   return ListView.builder(
//       itemCount: 2,
//       itemBuilder: (context, index) {
//         return const ListTile(
//           title: Text("Saman"),
//           subtitle: Text("hey Flutter!"),
//           trailing: Text("2:25pm"),
//           leading: CircleAvatar(
//             backgroundImage: NetworkImage("url"),
//           ),
//         );
//       });
// }