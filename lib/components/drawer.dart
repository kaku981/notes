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
          const DrawerHeader(
            child: Icon(Icons.note),
          ),

          DrawerTile(
            title: "Notes",
            leading: const Icon(Icons.home),
            onTap: () => Navigator.pop(context),
          ),

          DrawerTile(
            title: "Settings",
            leading: const Icon(Icons.settings),
            onTap: () {},
          ),

        ],
      ),
    );
  }
}