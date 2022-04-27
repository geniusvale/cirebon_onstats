// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publikasi_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublikasiModel _$PublikasiModelFromJson(Map<String, dynamic> json) =>
    PublikasiModel(
      pub_id: json['pub_id'] as String,
      title: json['title'] as String,
      kat_no: json['kat_no'] as String?,
      pub_no: json['pub_no'] as String?,
      issn: json['issn'] as String,
      abstract: json['abstract'] as String?,
      sch_date: json['sch_date'] as String?,
      rl_date: json['rl_date'] as String,
      updt_date: json['updt_date'] as String?,
      cover: json['cover'] as String,
      pdf: json['pdf'] as String?,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$PublikasiModelToJson(PublikasiModel instance) =>
    <String, dynamic>{
      'pub_id': instance.pub_id,
      'title': instance.title,
      'kat_no': instance.kat_no,
      'pub_no': instance.pub_no,
      'issn': instance.issn,
      'abstract': instance.abstract,
      'sch_date': instance.sch_date,
      'rl_date': instance.rl_date,
      'updt_date': instance.updt_date,
      'cover': instance.cover,
      'pdf': instance.pdf,
      'size': instance.size,
    };
