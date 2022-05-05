// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistik_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      dataVar: (json['var'] as List<dynamic>)
          .map((e) => Var.fromJson(e as Map<String, dynamic>))
          .toList(),
      turvar: (json['turvar'] as List<dynamic>?)
          ?.map((e) => TurVar.fromJson(e as Map<String, dynamic>))
          .toList(),
      labelvervar: json['labelvervar'] as String,
      vervar: (json['vervar'] as List<dynamic>?)
          ?.map((e) => VerVar.fromJson(e as Map<String, dynamic>))
          .toList(),
      tahun: (json['tahun'] as List<dynamic>?)
          ?.map((e) => Tahun.fromJson(e as Map<String, dynamic>))
          .toList(),
      turtahun: (json['turtahun'] as List<dynamic>?)
          ?.map((e) => TurTahun.fromJson(e as Map<String, dynamic>))
          .toList(),
      datacontent: json['datacontent'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'var': instance.dataVar,
      'turvar': instance.turvar,
      'labelvervar': instance.labelvervar,
      'vervar': instance.vervar,
      'tahun': instance.tahun,
      'turtahun': instance.turtahun,
      'datacontent': instance.datacontent,
    };

TurTahun _$TurTahunFromJson(Map<String, dynamic> json) => TurTahun(
      turth_id: json['turth_id'] as int?,
      val: json['val'] as int?,
      label: json['label'] as String?,
      turth: json['turth'] as String?,
      group_turth_id: json['group_turth_id'] as int?,
      name_group_turth: json['name_group_turth'] as String?,
    );

Map<String, dynamic> _$TurTahunToJson(TurTahun instance) => <String, dynamic>{
      'turth_id': instance.turth_id,
      'val': instance.val,
      'label': instance.label,
      'turth': instance.turth,
      'group_turth_id': instance.group_turth_id,
      'name_group_turth': instance.name_group_turth,
    };

TurVar _$TurVarFromJson(Map<String, dynamic> json) => TurVar(
      turvar_id: json['turvar_id'] as int?,
      val: json['val'] as int?,
      label: json['label'] as String?,
      turvar: json['turvar'] as String?,
      group_turvar_id: json['group_turvar_id'] as int?,
      name_group_turvar: json['name_group_turvar'] as String?,
    );

Map<String, dynamic> _$TurVarToJson(TurVar instance) => <String, dynamic>{
      'turvar_id': instance.turvar_id,
      'val': instance.val,
      'label': instance.label,
      'turvar': instance.turvar,
      'group_turvar_id': instance.group_turvar_id,
      'name_group_turvar': instance.name_group_turvar,
    };

Tahun _$TahunFromJson(Map<String, dynamic> json) => Tahun(
      th_id: json['th_id'] as int?,
      val: json['val'] as int?,
      label: json['label'] as String?,
      th: json['th'] as String?,
    );

Map<String, dynamic> _$TahunToJson(Tahun instance) => <String, dynamic>{
      'th_id': instance.th_id,
      'val': instance.val,
      'label': instance.label,
      'th': instance.th,
    };

Unit _$UnitFromJson(Map<String, dynamic> json) => Unit(
      unit_id: json['unit_id'] as int,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$UnitToJson(Unit instance) => <String, dynamic>{
      'unit_id': instance.unit_id,
      'unit': instance.unit,
    };

Var _$VarFromJson(Map<String, dynamic> json) => Var(
      val: json['val'] as int?,
      label: json['label'] as String?,
      subj: json['subj'] as String?,
      var_id: json['var_id'] as int?,
      title: json['title'] as String?,
      sub_id: json['sub_id'] as int?,
      sub_name: json['sub_name'] as String?,
      def: json['def'] as String?,
      note: json['note'] as String?,
      vertical: json['vertical'] as int?,
      unit: json['unit'] as String?,
      graph_id: json['graph_id'] as int?,
      graph_name: json['graph_name'] as String?,
    );

Map<String, dynamic> _$VarToJson(Var instance) => <String, dynamic>{
      'val': instance.val,
      'label': instance.label,
      'subj': instance.subj,
      'var_id': instance.var_id,
      'title': instance.title,
      'sub_id': instance.sub_id,
      'sub_name': instance.sub_name,
      'def': instance.def,
      'note': instance.note,
      'vertical': instance.vertical,
      'unit': instance.unit,
      'graph_id': instance.graph_id,
      'graph_name': instance.graph_name,
    };

VerVar _$VerVarFromJson(Map<String, dynamic> json) => VerVar(
      kode_ver_id: json['kode_ver_id'] as int?,
      vervar: json['vervar'] as String?,
      item_ver_id: json['item_ver_id'] as int?,
      group_ver_id: json['group_ver_id'] as int?,
      name_group_ver_id: json['name_group_ver_id'] as String?,
      val: json['val'] as int?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$VerVarToJson(VerVar instance) => <String, dynamic>{
      'kode_ver_id': instance.kode_ver_id,
      'vervar': instance.vervar,
      'item_ver_id': instance.item_ver_id,
      'group_ver_id': instance.group_ver_id,
      'name_group_ver_id': instance.name_group_ver_id,
      'val': instance.val,
      'label': instance.label,
    };

Subject _$SubjectFromJson(Map<String, dynamic> json) => Subject(
      sub_id: json['sub_id'] as int,
      title: json['title'] as String,
      subcat_id: json['subcat_id'] as int?,
      subcat: json['subcat'] as String?,
      ntabel: json['ntabel'],
    );

Map<String, dynamic> _$SubjectToJson(Subject instance) => <String, dynamic>{
      'sub_id': instance.sub_id,
      'title': instance.title,
      'subcat_id': instance.subcat_id,
      'subcat': instance.subcat,
      'ntabel': instance.ntabel,
    };
