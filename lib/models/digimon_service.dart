import 'package:digimon/models/digimon_model.dart';
import 'package:dio/dio.dart';

class DigimonService {
  Dio dio = Dio();
  Future<List<Digimon>> getDigimons() async {
    List<Digimon> digimons = [];
    Response transform =
        await dio.get('https://digimon-api.vercel.app/api/digimon');
    for (var digimon in transform.data) {
      digimons.add(Digimon.fromJson(digimon));
    }
    return digimons;
  }
}
