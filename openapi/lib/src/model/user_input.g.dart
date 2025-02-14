// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserInput extends UserInput {
  @override
  final String name;
  @override
  final String? avatar;

  factory _$UserInput([void Function(UserInputBuilder)? updates]) =>
      (new UserInputBuilder()..update(updates))._build();

  _$UserInput._({required this.name, this.avatar}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'UserInput', 'name');
  }

  @override
  UserInput rebuild(void Function(UserInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInputBuilder toBuilder() => new UserInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInput && name == other.name && avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserInput')
          ..add('name', name)
          ..add('avatar', avatar))
        .toString();
  }
}

class UserInputBuilder implements Builder<UserInput, UserInputBuilder> {
  _$UserInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  UserInputBuilder() {
    UserInput._defaults(this);
  }

  UserInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _avatar = $v.avatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserInput;
  }

  @override
  void update(void Function(UserInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserInput build() => _build();

  _$UserInput _build() {
    final _$result = _$v ??
        new _$UserInput._(
          name:
              BuiltValueNullFieldError.checkNotNull(name, r'UserInput', 'name'),
          avatar: avatar,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
