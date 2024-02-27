import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Resume',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> _sections = [
    {'title': 'Name', 'content': 'Utkarsh Srivastava'},
    {'title': 'Title', 'content': 'Android App Developer'},
    {'title': 'Email', 'content': 'utkarshsrivastav6543@gmail.com'},
    {'title': 'Phone', 'content': '9205041431'},
    {'title': 'Summary', 'content': '''
As, I am a fresher. I don't have any experience. I need a platform to prove myself and enhance my skills. If you hire me, I will do my best effort for the development of the company because it will give me the opportunity to improve myself and gain more knowledge.

Thank you.
'''},
    {'title': 'Skills', 'content': 'Java, XML, Dart, Flutter, Java , C, AndroidAppDeveloper '},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Resume'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ..._sections.map((section) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    section['title']!,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    section['content']!,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                ],
              );
            }).toList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _sections.add({'title': '', 'content': ''});
                    });
                  },
                  child: Text('Add Section'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _sections.removeLast();
                    });
                  },
                  child: Text('Delete Section'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}