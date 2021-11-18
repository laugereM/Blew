import 'package:flutter/material.dart';

import 'src/menu/menu.dart';

import 'src/utility/web_service.dart';

import 'src/widgets/list_widget.dart';

void main() {
  runApp(const Blew());
}

List<RouteBuilder> routes = <RouteBuilder>[];

class Blew extends StatelessWidget {
  const Blew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WebService webService = WebService();
    List<YoudayObject> objectList = webService.getObjectList();

    for (YoudayObject object in objectList) {
      switch (object.type) {
        case 0:
          {
            // List View //
            routes.add(RouteBuilder(
              name: object.name,
              route: '/list_' + object.id,
              builder: (context) => ListWidget(object: object),
            ));
          }
          break;
      }
    }

    return MaterialApp(
      title: 'Form Samples',
      theme: ThemeData(
        primarySwatch: Palette.indigo,
      ),
      routes: Map.fromEntries(routes.map((d) => MapEntry(d.route, d.builder))),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
      ),
      drawer: MenuDrawer(routes: routes),
    );
  }
}

class RouteBuilder {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const RouteBuilder(
      {required this.name, required this.route, required this.builder});
}

class Palette {
  static const MaterialColor indigo = MaterialColor(
    0xFF3D5AFE, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFE8EAF6), //10%
      100: Color(0xFFC5CAE9), //20%
      200: Color(0xFF9FA8DA), //30%
      300: Color(0xFF7986CB), //40%
      400: Color(0xFF5C6BC0), //50%
      500: Color(0xFF3F51B5), //60%
      600: Color(0xFF3949AB), //70%
      700: Color(0xFF303F9F), //80%
      800: Color(0xFF283593), //90%
      900: Color(0xFF1A237E), //100%
    },
  );
}
