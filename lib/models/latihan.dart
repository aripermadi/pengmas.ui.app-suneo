part of 'models.dart';

class Latihans {
  bool success;
  List<Latihan> latihan;
  String message;

  Latihans({this.success, this.latihan, this.message});

  Latihans.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      latihan = new List<Latihan>();
      json['data'].forEach((v) {
        latihan.add(new Latihan.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> latihan = new Map<String, dynamic>();
    latihan['success'] = this.success;
    if (this.latihan != null) {
      latihan['data'] = this.latihan.map((v) => v.toJson()).toList();
    }
    latihan['message'] = this.message;
    return latihan;
  }
}

class Latihan {
  int id;
  String panduan;
  String urlGambar;
  Null urlAudio;
  Null urlVideo;
  int idMateri;
  String createdAt;
  String updatedAt;
  Null deletedAt;

  Latihan(
      {this.id,
      this.panduan,
      this.urlGambar,
      this.urlAudio,
      this.urlVideo,
      this.idMateri,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Latihan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    panduan = json['panduan'];
    urlGambar = json['url_gambar'];
    urlAudio = json['url_audio'];
    urlVideo = json['url_video'];
    idMateri = json['id_materi'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['panduan'] = this.panduan;
    data['url_gambar'] = this.urlGambar;
    data['url_audio'] = this.urlAudio;
    data['url_video'] = this.urlVideo;
    data['id_materi'] = this.idMateri;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
