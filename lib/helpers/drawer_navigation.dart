import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tickapp/main.dart';
import 'package:tickapp/screens/home_screen.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://www.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png',
                ),
              ),
              accountName: Text("User"),
              accountEmail: Text("user@gmail.com"),
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
            ListTile(
              leading: Icon(Icons.today),
              title: Text("Today"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Today())),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Inbox"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Inbox())),
            ),
            ListTile(
              leading: Icon(Icons.waving_hand),
              title: Text("Welcome"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Welcome())),
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag_outlined),
              title: Text("Work"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Work())),
            ),
            ListTile(
              leading: Icon(Icons.house),
              title: Text("Personal"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Personal())),
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Shopping"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Shopping())),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Wish List"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => WishList())),
            ),
            ListTile(
              leading: Icon(Icons.cake),
              title: Text("Birthday"),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Birthday())),
            ),
          ],
        ),
      ),
    );
  }
}
