// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homeController.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  Computed<String>? _$textoComputed;

  @override
  String get texto => (_$textoComputed ??=
          Computed<String>(() => super.texto, name: '_HomeController.texto'))
      .value;

  final _$counterAtom = Atom(name: '_HomeController.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$_HomeControllerActionController =
      ActionController(name: '_HomeController');

  @override
  dynamic incrementCounter() {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.incrementCounter');
    try {
      return super.incrementCounter();
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter},
texto: ${texto}
    ''';
  }
}
