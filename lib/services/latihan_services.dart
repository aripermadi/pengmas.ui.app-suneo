part of 'services.dart';

abstract class LatihansRepo {
  Future<List<Latihan>> getLatihans(id);
}

class LatihansRepoImpl implements LatihansRepo {
  @override
  Future<List<Latihan>> getLatihans(id) async {
    var params = "latihans?materi_id=$id";

    var response = await http.get(Apiurl.apiURL + params);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Latihan> latihan = Latihans.fromJson(data).latihan;
      return latihan;
    } else {
      throw Exception();
    }
  }
}
