import 'package:flutter/cupertino.dart';

import 'StatusPage/Status.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Whatsapp Clone IOS',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  
  MainPage();

  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  List<BottomNavigationBarItem> barItems = [
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.add_circled), title: Text("Status")),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.phone), title: Text("Calls")),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.photo_camera), title: Text("Camera")),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.book),
      title: Text("Chats"),
    ),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.settings), title: Text("Settings"))
  ];

  

  var callsPage = CupertinoTabView(
    builder: (BuildContext context) {
      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            child: Text("Edit"),
            onPressed: () {},
          ),
        ),
        child: Center(
          child: Text("Call page"),
        ),
      );
    },
  );

  var cameraPage = CupertinoTabView(
    builder: (BuildContext context) {
      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            child: Text("Edit"),
            onPressed: () {},
          ),
        ),
        child: Center(
          child: Text("Camera  page"),
        ),
      );
    },
  );

  var chatsPage = CupertinoTabView(
    builder: (BuildContext context) {
      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            child: Text("Edit"),
            onPressed: () {},
          ),
        ),
        child: Center(
          child: Text("Chats  page"),
        ),
      );
    },
  );

  var settingsPage = CupertinoTabView(
    builder: (BuildContext context) {
      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            child: Text("Edit"),
            onPressed: () {},
          ),
        ),
        child: Center(
          child: Text("Settings  page"),
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: barItems,
      ),
      tabBuilder: (BuildContext content, int index) {
        assert(index >= 0 && index <= 4);

        switch (index) {
          case 0:
            return statusPage;
            break;
          case 1:
            return callsPage;
          case 2:
            return cameraPage;
          case 3:
            return chatsPage;
          case 4:
            return settingsPage;
          default:
        }
      },
    );
  }
}
