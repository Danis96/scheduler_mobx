import 'package:mobx/mobx.dart';

import '../../models/stupidity_model.dart';
import '../../repositories/stupidity_firestore_repository/stupidity_firestore_repository.dart';
import '../../utils/helpers/stupidity_helper.dart';

part 'stupidity_store.g.dart';

class StupidityStore = StupidityBase with _$StupidityStore;

abstract class StupidityBase with Store {
  StupidityBase() {
    _stupidityFirestoreRepository = StupidityFirestoreRepository();
  }

  StupidityFirestoreRepository? _stupidityFirestoreRepository;

  @observable
  List<StupidityModel> _models = <StupidityModel>[];

  @computed
  List<StupidityModel> get models => _models;

  @action
  Future<String?> addStupidityToFirestore() async {
    try {
      await _stupidityFirestoreRepository!.addStupidityToFirestore(StupidityHelper().stupidList);
      return null;
    } catch (e) {
      print(e);
      return e.toString();
    }
  }

  @action
  Future<String?> fetchStupidities() async {
    final dynamic result = await _stupidityFirestoreRepository!.fetchStupidity();
    if (result is List<StupidityModel>) {
      _models = result;
      _models.shuffle();
      return null;
    } else {
      return result.toString();
    }
  }

  @observable
  bool stupidityOn = true;

  @action
  void setStupidity() {
    stupidityOn = !stupidityOn;
  }
}
