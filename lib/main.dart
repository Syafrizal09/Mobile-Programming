import 'package:flutter/material.dart';

class AplikasiKu extends StatelessWidget {
  const AplikasiKu({required this.title, Key? key}) : super(key: key);
  final Widget title;
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.red[500]),
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu Navigasi',
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          AplikasiKu(
            title: Text(
              'Menu',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          const Expanded(
            child: Center(
              child: Text('Hallo Dunia'),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      title: 'AplikasiKu',
      home: SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}
