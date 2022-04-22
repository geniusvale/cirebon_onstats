import 'package:json_annotation/json_annotation.dart';
part 'berita_model.g.dart';

@JsonSerializable()
class BeritaModel {
  int news_id;
  String? newscat_id;
  String? newscat_name;
  String? news_type;
  String title;
  String news;
  String rl_date;
  String? picture;

  BeritaModel({
    required this.news_id,
    required this.title,
    required this.news,
    required this.rl_date,
  });

  factory BeritaModel.fromJson(Map<String, dynamic> json) =>
      _$BeritaModelFromJson(json);

  Map<String, dynamic> toJson() => _$BeritaModelToJson(this);
}
