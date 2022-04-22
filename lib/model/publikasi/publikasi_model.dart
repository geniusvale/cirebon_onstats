import 'package:json_annotation/json_annotation.dart';
part 'publikasi_model.g.dart';

@JsonSerializable()
class PublikasiModel {
  var pub_id;
  String title;
  String? kat_no;
  String? pub_no;
  String issn;
  String? abstract;
  String? sch_date;
  String rl_date;
  String? updt_date;
  String cover;
  String? pdf;
  String? size;

  PublikasiModel({
    required this.pub_id,
    required this.title,
    required this.issn,
    required this.rl_date,
    required this.cover,
  });

  factory PublikasiModel.fromJson(Map<String, dynamic> json) =>
      _$PublikasiModelFromJson(json);

  Map<String, dynamic> toJson() => _$PublikasiModelToJson(this);
}
