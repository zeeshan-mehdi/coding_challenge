import 'package:coding_challenge/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/connections.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Connections>(create: (_) => Connections())
      ],
      child: MaterialApp(
        title: 'Coding Challenge',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage()),
    );
  }
}