// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'berita_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BeritaModel _$BeritaModelFromJson(Map<String, dynamic> json) => BeritaModel(
      news_id: json['news_id'] as int,
      newscat_id: json['newscat_id'] as String?,
      newscat_name: json['newscat_name'] as String?,
      news_type: json['news_type'] as String?,
      title: json['title'] as String,
      news: json['news'] as String,
      rl_date: json['rl_date'] as String,
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$BeritaModelToJson(BeritaModel instance) =>
    <String, dynamic>{
      'news_id': instance.news_id,
      'newscat_id': instance.newscat_id,
      'newscat_name': instance.newscat_name,
      'news_type': instance.news_type,
      'title': instance.title,
      'news': instance.news,
      'rl_date': instance.rl_date,
      'picture': instance.picture,
    };
