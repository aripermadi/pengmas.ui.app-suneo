part of 'services.dart';

class KategoriServices {
  static Future<List<Kategori>> getKategoris(String page,
      {http.Client client}) async {
    String url =
        "http://rsiaisyiyahnganjuk.com/infy/public/index.php/api/$page";

    client ??= http.Client();

    var response = await client.get(url);

    if (response.statusCode != 200) {
      return [];
    }

    var dataBody = json.decode(response.body);
    List data = dataBody['data'];

    return data.map((e) => Kategori.fromJson(e)).toList();
  }
}
