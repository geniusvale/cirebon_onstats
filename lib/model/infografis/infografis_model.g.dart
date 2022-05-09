// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infografis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfografisModel _$InfografisModelFromJson(Map<String, dynamic> json) =>
    InfografisModel(
      inf_id: json['inf_id'] as int,
      title: json['title'] as String,
      img: json['img'] as String,
      desc: json['desc'] as String?,
      category: json['category'] as int?,
      dl: json['dl'] as String?,
    );

Map<String, dynamic> _$InfografisModelToJson(InfografisModel instance) =>
    <String, dynamic>{
      'inf_id': instance.inf_id,
      'title': instance.title,
      'img': instance.img,
      'desc': instance.desc,
      'category': instance.category,
      'dl': instance.dl,
    };
