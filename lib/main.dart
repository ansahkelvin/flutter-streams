import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

import 'package:flubb/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flubb Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
          channel: IOWebSocketChannel.connect(
              Uri.parse("wss://echo.websocket.events"))),
    );
  }
}
