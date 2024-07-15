import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: const Text('Whatsapp'),
              actions: [
                const Icon(Icons.search),
                const SizedBox(
                  width: 5,
                ),
                PopupMenuButton(
                    itemBuilder: (context) => const [
                          PopupMenuItem(
                            value: 1,
                            child: Text('New Group'),
                          ),
                          PopupMenuItem(
                            value: 2,
                            child: Text('Setting'),
                          ),
                          PopupMenuItem(
                            value: 3,
                            child: Text('Log out'),
                          ),
                        ]),
              ],
              bottom: const TabBar(tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                )
              ]),
            ),
            body: TabBarView(
              children: [
                Text('Camera'),
                ListView.builder(
                  itemCount: 10,
                    itemBuilder: (context, index){
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/733767/pexels-photo-733767.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('Tanveer Ahmad'),
                      subtitle: Text('Last Message'),
                      trailing: Text('1:26 am'),
                    );
                    }),
                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index){
                      return  Column(
                        children: [
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3,
                                  color: Colors.green
                                )
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/733767/pexels-photo-733767.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                            ),
                            title: Text('Tanveer Ahmad'),
                            subtitle: Text('1:26 am'),
                          ),
                        ],
                      );
                    }),
                ListView.builder(
                    itemBuilder: (context, index){
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/733767/pexels-photo-733767.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('Tanveer Ahmad'),
                    subtitle: Text(index/2 == 0 ? 'you missed a call' : 'you missed video call'),
                    trailing: Icon(
                      index/2 == 0 ? Icons.phone : Icons.video_call
                    ),
                  );
                })
              ],
            ),
          ),
        ));
  }
}
