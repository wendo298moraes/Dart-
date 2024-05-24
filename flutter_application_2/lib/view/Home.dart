import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrange
              ),
              child: Text("Menu"),
            ),
            ListTile(
              title: const Text("item 1"),
              onTap: (){},             
            ),
            ListTile(
              title: const Text("item 2"),
              onTap: (){},
            ),
            ListTile(
              title: const Text("item 3"),
              onTap: (){},
            ),
            ListTile(
              title: const Text("item 4"),
              onTap: (){},
            ),
            ListTile(
              title: const Text("item 5"),
              onTap: (){},
            )
          
          ],
        ),
      ),
    );
  }
}