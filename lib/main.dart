import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumina_app/controllers/homeController.controller.dart';
import 'package:rumina_app/views/homePage.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<HomeController>(
          create: (_) => HomeController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Gerenciamento de Estados'),
      ),
    );
  }
}
