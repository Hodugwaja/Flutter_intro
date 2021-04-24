import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Scattfold",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ScaffoldSample(),
    );
  }
}

class ScaffoldSample extends StatefulWidget {
  @override
  _ScaffoldSampleState createState() => _ScaffoldSampleState();
}

class _ScaffoldSampleState extends State<ScaffoldSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scaffold 알아보기')),
      body: Center(
        child: TextField(),
      ),
      drawer: Drawer(
        child: Center(
          child: Text("Slide Contents"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child : Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){
          print("PRESSED");
        }
      ),
      resizeToAvoidBottomInset: false,
      drawerEdgeDragWidth: 100,
      drawerScrimColor: Colors.black.withOpacity(0.8),
      drawerEnableOpenDragGesture: true,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          print(index);
        },
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "messages"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
