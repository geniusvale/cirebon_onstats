import 'package:json_annotation/json_annotation.dart';
part 'brs_model.g.dart';

@JsonSerializable()
class BRSModel {
  int brs_id;
  int? subj_id;
  String? subj;
  String title;
  String? abstract;
  String rl_date;
  String? updt_date;
  String? pdf;
  String? size;

  BRSModel({
    required this.brs_id,
    this.subj_id,
    this.subj,
    required this.title,
    this.abstract,
    required this.rl_date,
    this.updt_date,
    this.pdf,
    this.size,
  });

  factory BRSModel.fromJson(Map<String, dynamic> json) =>
      _$BRSModelFromJson(json);

  Map<String, dynamic> toJson() => _$BRSModelToJson(this);
}
