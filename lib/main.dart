import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(), // 先ほど作った MyApp() を表示したいので runApp() の中に書きます。
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 55, 158, 149),
            centerTitle: true,
            actions: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Material(
                  shape: CircleBorder(),
                  elevation: 5,
                  color: Color.fromARGB(255, 94, 91, 91),
                  child: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                ),
              )
            ],
            leading: Padding(
              padding: EdgeInsets.all(8.0),
              child: Material(
                shape: CircleBorder(),
                elevation: 5,
                color: Color.fromARGB(255, 94, 91, 91),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 14, 8, 8),
                  child: Text('tatsuro @ PlayGround',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                ),
                Text('tweet 37,564', style: TextStyle(fontSize: 12)),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Container(
                color: Colors.black,
                child: TabBar(
                  tabs: [
                    Tab(text: 'ツイート'),
                    Tab(text: '返信'),
                    Tab(text: 'メディア'),
                    Tab(text: 'いいね')
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
                TweetTile(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            iconSize: 28,
            backgroundColor: Colors.black,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_rounded), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.manage_accounts), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_alert_outlined), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.mail_outline), label: ''),
            ],
            unselectedItemColor: Colors.white,
            selectedItemColor: Color.fromARGB(255, 89, 163, 126),
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 6, 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1697541283989-bbefb5982de9?auto=format&fit=crop&q=80&w=3027&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 8, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'tatsuro @ PlayGround',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          color: Color.fromARGB(255, 230, 230, 230)),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '2022/05/05',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 145, 145, 145)),
                    ),
                  ],
                ),
                Text(
                  'この所、体の節々が悲鳴を上げています。',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: const Color.fromARGB(255, 230, 230, 230)),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.chat_bubble_outline,
                        color: const Color.fromARGB(255, 190, 187, 187),
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.cached_outlined,
                        color: Color.fromARGB(255, 177, 174, 175),
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Color.fromARGB(255, 174, 171, 172),
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_upward,
                        color: const Color.fromARGB(255, 175, 172, 173),
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.view_week_rounded,
                            color: Color.fromARGB(255, 178, 173, 173),
                            size: 20))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
