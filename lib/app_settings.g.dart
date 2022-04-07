// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettings _$$_AppSettingsFromJson(Map<String, dynamic> json) =>
    _$_AppSettings(
      isDarkMode: json['isDarkMode'] as bool? ?? false,
      alert: json['alert'] as bool? ?? false,
      isAutoLogin: json['isAutoLogin'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AppSettingsToJson(_$_AppSettings instance) =>
    <String, dynamic>{
      'isDarkMode': instance.isDarkMode,
      'alert': instance.alert,
      'isAutoLogin': instance.isAutoLogin,
    };
