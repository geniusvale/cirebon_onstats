import 'package:json_annotation/json_annotation.dart';
part 'statistik_model.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'var')
  List<Var> dataVar;
  List<TurVar>? turvar;
  String labelvervar;
  List<VerVar>? vervar;
  List<Tahun>? tahun;
  List<TurTahun>? turtahun;
  Map datacontent;

  Data({
    required this.dataVar,
    this.turvar,
    required this.labelvervar,
    this.vervar,
    this.tahun,
    this.turtahun,
    required this.datacontent,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class TurTahun {
  int? turth_id;
  int? val;
  String? label;
  String? turth;
  int? group_turth_id;
  String? name_group_turth;

  TurTahun({
    this.turth_id,
    this.val,
    this.label,
    this.turth,
    this.group_turth_id,
    this.name_group_turth,
  });

  factory TurTahun.fromJson(Map<String, dynamic> json) =>
      _$TurTahunFromJson(json);

  Map<String, dynamic> toJson() => _$TurTahunToJson(this);
}

@JsonSerializable()
class TurVar {
  int? turvar_id;
  int? val;
  String? label;
  String? turvar;
  int? group_turvar_id;
  String? name_group_turvar;

  TurVar({
    this.turvar_id,
    this.val,
    this.label,
    this.turvar,
    this.group_turvar_id,
    this.name_group_turvar,
  });

  factory TurVar.fromJson(Map<String, dynamic> json) => _$TurVarFromJson(json);

  Map<String, dynamic> toJson() => _$TurVarToJson(this);
}

@JsonSerializable()
class Tahun {
  int? th_id;
  int? val;
  String? label;
  String? th;

  Tahun({this.th_id, this.val, this.label, this.th});

  factory Tahun.fromJson(Map<String, dynamic> json) => _$TahunFromJson(json);

  Map<String, dynamic> toJson() => _$TahunToJson(this);
}

@JsonSerializable()
class Unit {
  int unit_id;
  String? unit;

  Unit({required this.unit_id, this.unit});

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);

  Map<String, dynamic> toJson() => _$UnitToJson(this);
}

@JsonSerializable()
class Var {
  int? val;
  String? label;
  String? subj;
  int? var_id;
  String? title;
  int? sub_id;
  String? sub_name;
  String? def;
  String? note;
  int? vertical;
  String? unit;
  int? graph_id;
  String? graph_name;

  Var({
    this.val,
    this.label,
    this.subj,
    this.var_id,
    this.title,
    this.sub_id,
    this.sub_name,
    this.def,
    this.note,
    this.vertical,
    this.unit,
    this.graph_id,
    this.graph_name,
  });

  factory Var.fromJson(Map<String, dynamic> json) => _$VarFromJson(json);

  Map<String, dynamic> toJson() => _$VarToJson(this);
}

@JsonSerializable()
class VerVar {
  int? kode_ver_id;
  String? vervar;
  int? item_ver_id;
  int? group_ver_id;
  String? name_group_ver_id;
  int? val;
  String? label;

  VerVar({
    this.kode_ver_id,
    this.vervar,
    this.item_ver_id,
    this.group_ver_id,
    this.name_group_ver_id,
    this.val,
    this.label,
  });

  factory VerVar.fromJson(Map<String, dynamic> json) => _$VerVarFromJson(json);

  Map<String, dynamic> toJson() => _$VerVarToJson(this);
}

@JsonSerializable()
class Subject {
  int sub_id;
  String title;
  int? subcat_id;
  String? subcat;
  var ntabel;

  Subject({
    required this.sub_id,
    required this.title,
    this.subcat_id,
    this.subcat,
    this.ntabel,
  });

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);

  Map<String, dynamic> toJson() => _$SubjectToJson(this);
}
