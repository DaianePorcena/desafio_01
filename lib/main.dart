import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'App List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
        ),
        backgroundColor: Colors.amber[900],
        toolbarHeight: 80,
        title: Text(widget.title),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'Search',
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Limpeza',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: ListView(
                children: const <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 16,
                      color: Colors.black26,
                    ),
                    title: Text(
                      'Detergente',
                      style: TextStyle(
                          color: Color.fromARGB(255, 157, 86, 0), fontSize: 16),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 16,
                      color: Colors.black26,
                    ),
                    title: Text(
                      'Sabão em pó',
                      style: TextStyle(
                          color: Color.fromARGB(255, 157, 86, 0), fontSize: 16),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 16,
                      color: Colors.black26,
                    ),
                    title: Text(
                      'Desinfetante',
                      style: TextStyle(
                          color: Color.fromARGB(255, 157, 86, 0), fontSize: 16),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 16,
                      color: Colors.black26,
                    ),
                    title: Text(
                      'Bombril',
                      style: TextStyle(
                          color: Color.fromARGB(255, 157, 86, 0), fontSize: 16),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 16,
                      color: Colors.black26,
                    ),
                    title: Text(
                      'Água Sanitária',
                      style: TextStyle(
                          color: Color.fromARGB(255, 157, 86, 0), fontSize: 16),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 16,
                      color: Colors.black26,
                    ),
                    title: Text(
                      'Saco de Lixo',
                      style: TextStyle(color: Color(0xFF9D5600), fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
