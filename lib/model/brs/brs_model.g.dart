// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BRSModel _$BRSModelFromJson(Map<String, dynamic> json) => BRSModel(
      brs_id: json['brs_id'] as int,
      subj_id: json['subj_id'] as int?,
      subj: json['subj'] as String?,
      title: json['title'] as String,
      abstract: json['abstract'] as String?,
      rl_date: json['rl_date'] as String,
      updt_date: json['updt_date'] as String?,
      pdf: json['pdf'] as String?,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$BRSModelToJson(BRSModel instance) => <String, dynamic>{
      'brs_id': instance.brs_id,
      'subj_id': instance.subj_id,
      'subj': instance.subj,
      'title': instance.title,
      'abstract': instance.abstract,
      'rl_date': instance.rl_date,
      'updt_date': instance.updt_date,
      'pdf': instance.pdf,
      'size': instance.size,
    };
