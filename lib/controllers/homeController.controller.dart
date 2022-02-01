import 'package:mobx/mobx.dart';
part 'homeController.controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  @observable
  int counter = 0;

  @computed
  String get texto {
    return (counter + 3).toString();
  }

  @action
  incrementCounter() {
    counter++;
  }
}
