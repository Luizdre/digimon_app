import 'package:digimon/models/digimon_model.dart';
import 'package:digimon/models/digimon_service.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  DigimonService digimonService;
  HomeStoreBase(this.digimonService);

  @observable
  List<Digimon> digimons = [];

  getData() async {
    await digimonService.getDigimons().then((value) => digimons = value);
  }
}
