import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:rumina_app/components/MainButton.component.dart';
import 'package:rumina_app/controllers/homeController.controller.dart';
import 'package:rumina_app/views/homePage.view.dart';

class SecoundPage extends StatefulWidget {
  const SecoundPage({Key? key}) : super(key: key);

  @override
  _SecoundPageState createState() => _SecoundPageState();
}

class _SecoundPageState extends State<SecoundPage> {
  @override
  Widget build(BuildContext context) {
    final homeController = Provider.of<HomeController>(context);

    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Numero de vezes clicadas',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Observer(
                builder: (_) => Column(
                  children: [
                    Text(
                      '${homeController.counter}',
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Segundo Widget',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              child: const MainButton(
                page: MyHomePage(title: 'Voltando'),
                text: 'Voltar para HomePage',
              ),
            )
          ],
        ),
      ),
    );
  }
}
