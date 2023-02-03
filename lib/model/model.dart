// class Api {
//   String? id;
//   String? url;
//   int? width;
//   int? height;

//   Api({this.id, this.url, this.width, this.height});

//   Api.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     url = json['url'];
//     width = json['width'];
//     height = json['height'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['url'] = this.url;
//     data['width'] = this.width;
//     data['height'] = this.height;
//     return data;
//   }
// }
// To parse this JSON data, do
//
//     final api = apiFromJson(jsonString);

import 'dart:convert';

List<Api> apiFromJson(String str) => List<Api>.from(json.decode(str).map((x) => Api.fromJson(x)));

String apiToJson(List<Api> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Api {
    Api({
        required this.id,
        required this.url,
        required this.width,
        required this.height,
    });

    String id;
    String url;
    int width;
    int height;

    factory Api.fromJson(Map<String, dynamic> json) => Api(
        id: json["id"],
        url: json["url"],
        width: json["width"],
        height: json["height"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "width": width,
        "height": height,
    };
}
