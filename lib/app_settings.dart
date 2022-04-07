import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';

part 'app_settings.g.dart';

@freezed
class AppSettings with _$AppSettings {
  factory AppSettings({
    @Default(false) bool isDarkMode,
    @Default(false) bool alert,
    @Default(false) bool isAutoLogin,
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}


