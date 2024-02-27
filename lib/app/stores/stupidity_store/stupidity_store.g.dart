// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stupidity_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StupidityStore on StupidityBase, Store {
  Computed<List<StupidityModel>>? _$modelsComputed;

  @override
  List<StupidityModel> get models =>
      (_$modelsComputed ??= Computed<List<StupidityModel>>(() => super.models,
              name: 'StupidityBase.models'))
          .value;

  late final _$_modelsAtom =
      Atom(name: 'StupidityBase._models', context: context);

  @override
  List<StupidityModel> get _models {
    _$_modelsAtom.reportRead();
    return super._models;
  }

  @override
  set _models(List<StupidityModel> value) {
    _$_modelsAtom.reportWrite(value, super._models, () {
      super._models = value;
    });
  }

  late final _$stupidityOnAtom =
      Atom(name: 'StupidityBase.stupidityOn', context: context);

  @override
  bool get stupidityOn {
    _$stupidityOnAtom.reportRead();
    return super.stupidityOn;
  }

  @override
  set stupidityOn(bool value) {
    _$stupidityOnAtom.reportWrite(value, super.stupidityOn, () {
      super.stupidityOn = value;
    });
  }

  late final _$addStupidityToFirestoreAsyncAction =
      AsyncAction('StupidityBase.addStupidityToFirestore', context: context);

  @override
  Future<String?> addStupidityToFirestore() {
    return _$addStupidityToFirestoreAsyncAction
        .run(() => super.addStupidityToFirestore());
  }

  late final _$fetchStupiditiesAsyncAction =
      AsyncAction('StupidityBase.fetchStupidities', context: context);

  @override
  Future<String?> fetchStupidities() {
    return _$fetchStupiditiesAsyncAction.run(() => super.fetchStupidities());
  }

  late final _$StupidityBaseActionController =
      ActionController(name: 'StupidityBase', context: context);

  @override
  void setStupidity() {
    final _$actionInfo = _$StupidityBaseActionController.startAction(
        name: 'StupidityBase.setStupidity');
    try {
      return super.setStupidity();
    } finally {
      _$StupidityBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
stupidityOn: ${stupidityOn},
models: ${models}
    ''';
  }
}
