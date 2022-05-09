import 'package:json_annotation/json_annotation.dart';
part 'infografis_model.g.dart';

@JsonSerializable()
class InfografisModel {
  int inf_id;
  String title;
  String img;
  String? desc;
  int? category;
  String? dl;

  InfografisModel({
    required this.inf_id,
    required this.title,
    required this.img,
    this.desc,
    this.category,
    this.dl,
  });

  factory InfografisModel.fromJson(Map<String, dynamic> json) =>
      _$InfografisModelFromJson(json);

  Map<String, dynamic> toJson() => _$InfografisModelToJson(this);
}
