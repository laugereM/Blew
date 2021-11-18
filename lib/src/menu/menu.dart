import 'package:flutter/material.dart';

import '../../main.dart';

class MenuDrawer extends StatelessWidget {
  final List<RouteBuilder> routes;

  const MenuDrawer({Key? key, required this.routes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerList = <Widget>[_createHeaderDrawer()];

    for (RouteBuilder route in routes) {
      drawerList.add(_createDrawerItem(
          icon: Icons.contacts,
          text: route.name,
          onTap: () {
            Navigator.popAndPushNamed(context, route.route);
          }));
    }

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: drawerList,
      ),
    );
  }

  Widget _createHeaderDrawer() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://picsum.photos/1000/1000'))),
        child: Stack(children: const <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Youday CRM",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
