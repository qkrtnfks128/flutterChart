// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) {
  return _AppSettings.fromJson(json);
}

/// @nodoc
class _$AppSettingsTearOff {
  const _$AppSettingsTearOff();

  _AppSettings call(
      {bool isDarkMode = false, bool alert = false, bool isAutoLogin = false}) {
    return _AppSettings(
      isDarkMode: isDarkMode,
      alert: alert,
      isAutoLogin: isAutoLogin,
    );
  }

  AppSettings fromJson(Map<String, Object?> json) {
    return AppSettings.fromJson(json);
  }
}

/// @nodoc
const $AppSettings = _$AppSettingsTearOff();

/// @nodoc
mixin _$AppSettings {
  bool get isDarkMode => throw _privateConstructorUsedError;
  bool get alert => throw _privateConstructorUsedError;
  bool get isAutoLogin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingsCopyWith<AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsCopyWith<$Res> {
  factory $AppSettingsCopyWith(
          AppSettings value, $Res Function(AppSettings) then) =
      _$AppSettingsCopyWithImpl<$Res>;
  $Res call({bool isDarkMode, bool alert, bool isAutoLogin});
}

/// @nodoc
class _$AppSettingsCopyWithImpl<$Res> implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._value, this._then);

  final AppSettings _value;
  // ignore: unused_field
  final $Res Function(AppSettings) _then;

  @override
  $Res call({
    Object? isDarkMode = freezed,
    Object? alert = freezed,
    Object? isAutoLogin = freezed,
  }) {
    return _then(_value.copyWith(
      isDarkMode: isDarkMode == freezed
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      alert: alert == freezed
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutoLogin: isAutoLogin == freezed
          ? _value.isAutoLogin
          : isAutoLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AppSettingsCopyWith<$Res>
    implements $AppSettingsCopyWith<$Res> {
  factory _$AppSettingsCopyWith(
          _AppSettings value, $Res Function(_AppSettings) then) =
      __$AppSettingsCopyWithImpl<$Res>;
  @override
  $Res call({bool isDarkMode, bool alert, bool isAutoLogin});
}

/// @nodoc
class __$AppSettingsCopyWithImpl<$Res> extends _$AppSettingsCopyWithImpl<$Res>
    implements _$AppSettingsCopyWith<$Res> {
  __$AppSettingsCopyWithImpl(
      _AppSettings _value, $Res Function(_AppSettings) _then)
      : super(_value, (v) => _then(v as _AppSettings));

  @override
  _AppSettings get _value => super._value as _AppSettings;

  @override
  $Res call({
    Object? isDarkMode = freezed,
    Object? alert = freezed,
    Object? isAutoLogin = freezed,
  }) {
    return _then(_AppSettings(
      isDarkMode: isDarkMode == freezed
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      alert: alert == freezed
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutoLogin: isAutoLogin == freezed
          ? _value.isAutoLogin
          : isAutoLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppSettings implements _AppSettings {
  _$_AppSettings(
      {this.isDarkMode = false, this.alert = false, this.isAutoLogin = false});

  factory _$_AppSettings.fromJson(Map<String, dynamic> json) =>
      _$$_AppSettingsFromJson(json);

  @JsonKey()
  @override
  final bool isDarkMode;
  @JsonKey()
  @override
  final bool alert;
  @JsonKey()
  @override
  final bool isAutoLogin;

  @override
  String toString() {
    return 'AppSettings(isDarkMode: $isDarkMode, alert: $alert, isAutoLogin: $isAutoLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppSettings &&
            const DeepCollectionEquality()
                .equals(other.isDarkMode, isDarkMode) &&
            const DeepCollectionEquality().equals(other.alert, alert) &&
            const DeepCollectionEquality()
                .equals(other.isAutoLogin, isAutoLogin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isDarkMode),
      const DeepCollectionEquality().hash(alert),
      const DeepCollectionEquality().hash(isAutoLogin));

  @JsonKey(ignore: true)
  @override
  _$AppSettingsCopyWith<_AppSettings> get copyWith =>
      __$AppSettingsCopyWithImpl<_AppSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppSettingsToJson(this);
  }
}

abstract class _AppSettings implements AppSettings {
  factory _AppSettings({bool isDarkMode, bool alert, bool isAutoLogin}) =
      _$_AppSettings;

  factory _AppSettings.fromJson(Map<String, dynamic> json) =
      _$_AppSettings.fromJson;

  @override
  bool get isDarkMode;
  @override
  bool get alert;
  @override
  bool get isAutoLogin;
  @override
  @JsonKey(ignore: true)
  _$AppSettingsCopyWith<_AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
