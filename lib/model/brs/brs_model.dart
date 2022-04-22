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
    required this.title,
    required this.rl_date,
  });

  factory BRSModel.fromJson(Map<String, dynamic> json) =>
      _$BRSModelFromJson(json);

  Map<String, dynamic> toJson() => _$BRSModelToJson(this);
}
