import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../initial/initial_module.dart';
import '../profile/profile_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController();
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          RouterOutlet(module: InitialModule()),
          // Work's with this
          // KeepAliveWidget(
          //   child: RouterOutlet(
          //     module: InitialModule(),
          //     keepAlive: false,
          //   ),
          // ),
          RouterOutlet(module: ProfileModule()),
          // Work's with this
          // KeepAliveWidget(
          //   child: RouterOutlet(
          //     module: ProfileModule(),
          //     keepAlive: false,
          //   ),
          // ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: (index) {
          pageController.jumpToPage(index);
          setState(() => currentPageIndex = index);
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Initial"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
