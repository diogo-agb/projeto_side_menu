import 'package:flutter/material.dart';
import '../models/customListTile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Drawer Tutorial'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orange[700],
                    Colors.orange[200],
                  ],
                ),
              ),
              child: Container(
                child: Column(
                  children: [
                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Image.asset(
                          "assets/images/flutter_logo_transp.png",
                          width: 70,
                          height: 70,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Flutter',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
            CustomListTile(Icons.person, "Profile", () => {}),
            CustomListTile(Icons.notifications, "Notification", () => {}),
            CustomListTile(Icons.settings, "Settings", () => {}),
            CustomListTile(Icons.lock, "Log out", () => {}),
          ],
        ),
      ),
    );
  }
}
