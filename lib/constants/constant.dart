import 'package:flutter/material.dart';

var defaultBackgroundColor = Colors.grey[300];

var appBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var drawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: [
      const DrawerHeader(
        child: Icon(
          Icons.favorite,
        ),
      ),
      ListTile(
        leading: const Icon(
          Icons.home,
        ),
        title: Text(
          'D A S H B O A R D'.toUpperCase(),
        ),
      ),
      ListTile(
        leading: const Icon(
          Icons.message,
        ),
        title: Text(
          'M E S S A G E'.toUpperCase(),
        ),
      ),
      ListTile(
        leading: const Icon(
          Icons.settings,
        ),
        title: Text(
          'S E T T I N G S'.toUpperCase(),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.logout),
        title: Text(
          'L O G O U T'.toUpperCase(),
        ),
      ),
    ],
  ),
);
