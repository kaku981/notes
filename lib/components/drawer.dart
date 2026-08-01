import 'package:flutter/material.dart';
import 'package:notes/components/drawer_tile.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(Icons.note),
          ),

          DrawerTile(
            title: "Notes",
            leading: Icon(Icons.home),
            onTap: () {},
          ),

          DrawerTile(
            title: "Settings",
            leading: Icon(Icons.settings),
            onTap: () {},
          ),

        ],
      ),
    );
  }
}