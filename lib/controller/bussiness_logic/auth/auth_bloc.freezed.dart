// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String number)
        signWithPhoneNumber,
    required TResult Function(
            BuildContext context, String verificationId, String otpSent)
        verifyOTP,
    required TResult Function(BuildContext context) checkUserStatus,
    required TResult Function(String name, String mobile, String image,
            String email, String dateOfBirth, BuildContext context)
        addUserdata,
    required TResult Function(BuildContext context) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String number)? signWithPhoneNumber,
    TResult? Function(
            BuildContext context, String verificationId, String otpSent)?
        verifyOTP,
    TResult? Function(BuildContext context)? checkUserStatus,
    TResult? Function(String name, String mobile, String image, String email,
            String dateOfBirth, BuildContext context)?
        addUserdata,
    TResult? Function(BuildContext context)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String number)? signWithPhoneNumber,
    TResult Function(
            BuildContext context, String verificationId, String otpSent)?
        verifyOTP,
    TResult Function(BuildContext context)? checkUserStatus,
    TResult Function(String name, String mobile, String image, String email,
            String dateOfBirth, BuildContext context)?
        addUserdata,
    TResult Function(BuildContext context)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_signWithPhoneNumber value) signWithPhoneNumber,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_CheckUserStatus value) checkUserStatus,
    required TResult Function(_AddUserdata value) addUserdata,
    required TResult Function(_SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_signWithPhoneNumber value)? signWithPhoneNumber,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_CheckUserStatus value)? checkUserStatus,
    TResult? Function(_AddUserdata value)? addUserdata,
    TResult? Function(_SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_signWithPhoneNumber value)? signWithPhoneNumber,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_CheckUserStatus value)? checkUserStatus,
    TResult Function(_AddUserdata value)? addUserdata,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$signWithPhoneNumberImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$signWithPhoneNumberImplCopyWith(_$signWithPhoneNumberImpl value,
          $Res Function(_$signWithPhoneNumberImpl) then) =
      __$$signWithPhoneNumberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, String number});
}

/// @nodoc
class __$$signWithPhoneNumberImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$signWithPhoneNumberImpl>
    implements _$$signWithPhoneNumberImplCopyWith<$Res> {
  __$$signWithPhoneNumberImplCopyWithImpl(_$signWithPhoneNumberImpl _value,
      $Res Function(_$signWithPhoneNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? number = null,
  }) {
    return _then(_$signWithPhoneNumberImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$signWithPhoneNumberImpl implements _signWithPhoneNumber {
  const _$signWithPhoneNumberImpl(
      {required this.context, required this.number});

  @override
  final BuildContext context;
  @override
  final String number;

  @override
  String toString() {
    return 'AuthEvent.signWithPhoneNumber(context: $context, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$signWithPhoneNumberImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$signWithPhoneNumberImplCopyWith<_$signWithPhoneNumberImpl> get copyWith =>
      __$$signWithPhoneNumberImplCopyWithImpl<_$signWithPhoneNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String number)
        signWithPhoneNumber,
    required TResult Function(
            BuildContext context, String verificationId, String otpSent)
        verifyOTP,
    required TResult Function(BuildContext context) checkUserStatus,
    required TResult Function(String name, String mobile, String image,
            String email, String dateOfBirth, BuildContext context)
        addUserdata,
    required TResult Function(BuildContext context) signOut,
  }) {
    return signWithPhoneNumber(context, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String number)? signWithPhoneNumber,
    TResult? Function(
            BuildContext context, String verificationId, String otpSent)?
        verifyOTP,
    TResult? Function(BuildContext context)? checkUserStatus,
    TResult? Function(String name, String mobile, String image, String email,
            String dateOfBirth, BuildContext context)?
        addUserdata,
    TResult? Function(BuildContext context)? signOut,
  }) {
    return signWithPhoneNumber?.call(context, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String number)? signWithPhoneNumber,
    TResult Function(
            BuildContext context, String verificationId, String otpSent)?
        verifyOTP,
    TResult Function(BuildContext context)? checkUserStatus,
    TResult Function(String name, String mobile, String image, String email,
            String dateOfBirth, BuildContext context)?
        addUserdata,
    TResult Function(BuildContext context)? signOut,
    required TResult orElse(),
  }) {
    if (signWithPhoneNumber != null) {
      return signWithPhoneNumber(context, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_signWithPhoneNumber value) signWithPhoneNumber,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_CheckUserStatus value) checkUserStatus,
    required TResult Function(_AddUserdata value) addUserdata,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signWithPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_signWithPhoneNumber value)? signWithPhoneNumber,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_CheckUserStatus value)? checkUserStatus,
    TResult? Function(_AddUserdata value)? addUserdata,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return signWithPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_signWithPhoneNumber value)? signWithPhoneNumber,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_CheckUserStatus value)? checkUserStatus,
    TResult Function(_AddUserdata value)? addUserdata,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signWithPhoneNumber != null) {
      return signWithPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _signWithPhoneNumber implements AuthEvent {
  const factory _signWithPhoneNumber(
      {required final BuildContext context,
      required final String number}) = _$signWithPhoneNumberImpl;

  @override
  BuildContext get context;
  String get number;
  @override
  @JsonKey(ignore: true)
  _$$signWithPhoneNumberImplCopyWith<_$signWithPhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOTPImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$VerifyOTPImplCopyWith(
          _$VerifyOTPImpl value, $Res Function(_$VerifyOTPImpl) then) =
      __$$VerifyOTPImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, String verificationId, String otpSent});
}

/// @nodoc
class __$$VerifyOTPImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOTPImpl>
    implements _$$VerifyOTPImplCopyWith<$Res> {
  __$$VerifyOTPImplCopyWithImpl(
      _$VerifyOTPImpl _value, $Res Function(_$VerifyOTPImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? verificationId = null,
    Object? otpSent = null,
  }) {
    return _then(_$VerifyOTPImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      otpSent: null == otpSent
          ? _value.otpSent
          : otpSent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOTPImpl implements _VerifyOTP {
  const _$VerifyOTPImpl(
      {required this.context,
      required this.verificationId,
      required this.otpSent});

  @override
  final BuildContext context;
  @override
  final String verificationId;
  @override
  final String otpSent;

  @override
  String toString() {
    return 'AuthEvent.verifyOTP(context: $context, verificationId: $verificationId, otpSent: $otpSent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOTPImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.otpSent, otpSent) || other.otpSent == otpSent));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, verificationId, otpSent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOTPImplCopyWith<_$VerifyOTPImpl> get copyWith =>
      __$$VerifyOTPImplCopyWithImpl<_$VerifyOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String number)
        signWithPhoneNumber,
    required TResult Function(
            BuildContext context, String verificationId, String otpSent)
        verifyOTP,
    required TResult Function(BuildContext context) checkUserStatus,
    required TResult Function(String name, String mobile, String image,
            String email, String dateOfBirth, BuildContext context)
        addUserdata,
    required TResult Function(BuildContext context) signOut,
  }) {
    return verifyOTP(context, verificationId, otpSent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String number)? signWithPhoneNumber,
    TResult? Function(
            BuildContext context, String verificationId, String otpSent)?
        verifyOTP,
    TResult? Function(BuildContext context)? checkUserStatus,
    TResult? Function(String name, String mobile, String image, String email,
            String dateOfBirth, BuildContext context)?
        addUserdata,
    TResult? Function(BuildContext context)? signOut,
  }) {
    return verifyOTP?.call(context, verificationId, otpSent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String number)? signWithPhoneNumber,
    TResult Function(
            BuildContext context, String verificationId, String otpSent)?
        verifyOTP,
    TResult Function(BuildContext context)? checkUserStatus,
    TResult Function(String name, String mobile, String image, String email,
            String dateOfBirth, BuildContext context)?
        addUserdata,
    TResult Function(BuildContext context)? signOut,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(context, verificationId, otpSent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_signWithPhoneNumber value) signWithPhoneNumber,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_CheckUserStatus value) checkUserStatus,
    required TResult Function(_AddUserdata value) addUserdata,
    required TResult Function(_SignOut value) signOut,
  }) {
    return verifyOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_signWithPhoneNumber value)? signWithPhoneNumber,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_CheckUserStatus value)? checkUserStatus,
    TResult? Function(_AddUserdata value)? addUserdata,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return verifyOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_signWithPhoneNumber value)? signWithPhoneNumber,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_CheckUserStatus value)? checkUserStatus,
    TResult Function(_AddUserdata value)? addUserdata,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(this);
    }
    return orElse();
  }
}

abstract class _VerifyOTP implements AuthEvent {
  const factory _VerifyOTP(
      {required final BuildContext context,
      required final String verificationId,
      required final String otpSent}) = _$VerifyOTPImpl;

  @override
  BuildContext get context;
  String get verificationId;
  String get otpSent;
  @override
  @JsonKey(ignore: true)
  _$$VerifyOTPImplCopyWith<_$VerifyOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckUserStatusImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$CheckUserStatusImplCopyWith(_$CheckUserStatusImpl value,
          $Res Function(_$CheckUserStatusImpl) then) =
      __$$CheckUserStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$CheckUserStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckUserStatusImpl>
    implements _$$CheckUserStatusImplCopyWith<$Res> {
  __$$CheckUserStatusImplCopyWithImpl(
      _$CheckUserStatusImpl _value, $Res Function(_$CheckUserStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$CheckUserStatusImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$CheckUserStatusImpl implements _CheckUserStatus {
  const _$CheckUserStatusImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.checkUserStatus(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckUserStatusImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckUserStatusImplCopyWith<_$CheckUserStatusImpl> get copyWith =>
      __$$CheckUserStatusImplCopyWithImpl<_$CheckUserStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String number)
        signWithPhoneNumber,
    required TResult Function(
            BuildContext context, String verificationId, String otpSent)
        verifyOTP,
    required TResult Function(BuildContext context) checkUserStatus,
    required TResult Function(String name, String mobile, String image,
            String email, String dateOfBirth, BuildContext context)
        addUserdata,
    required TResult Function(BuildContext context) signOut,
  }) {
    return checkUserStatus(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String number)? signWithPhoneNumber,
    TResult? Function(
            BuildContext context, String verificationId, String otpSent)?
        verifyOTP,
    TResult? Function(BuildContext context)? checkUserStatus,
    TResult? Function(String name, String mobile, String image, String email,
            String dateOfBirth, BuildContext context)?
        addUserdata,
    TResult? Function(BuildContext context)? signOut,
  }) {
    return checkUserStatus?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String number)? signWithPhoneNumber,
    TResult Function(
            BuildContext context, String verificationId, String otpSent)?
        verifyOTP,
    TResult Function(BuildContext context)? checkUserStatus,
    TResult Function(String name, String mobile, String image, String email,
            String dateOfBirth, BuildContext context)?
        addUserdata,
    TResult Function(BuildContext context)? signOut,
    required TResult orElse(),
  }) {
    if (checkUserStatus != null) {
      return checkUserStatus(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_signWithPhoneNumber value) signWithPhoneNumber,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_CheckUserStatus value) checkUserStatus,
    required TResult Function(_AddUserdata value) addUserdata,
    required TResult Function(_SignOut value) signOut,
  }) {
    return checkUserStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_signWithPhoneNumber value)? signWithPhoneNumber,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_CheckUserStatus value)? checkUserStatus,
    TResult? Function(_AddUserdata value)? addUserdata,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return checkUserStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_signWithPhoneNumber value)? signWithPhoneNumber,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_CheckUserStatus value)? checkUserStatus,
    TResult Function(_AddUserdata value)? addUserdata,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (checkUserStatus != null) {
      return checkUserStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckUserStatus implements AuthEvent {
  const factory _CheckUserStatus({required final BuildContext context}) =
      _$CheckUserStatusImpl;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$CheckUserStatusImplCopyWith<_$CheckUserStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddUserdataImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$AddUserdataImplCopyWith(
          _$AddUserdataImpl value, $Res Function(_$AddUserdataImpl) then) =
      __$$AddUserdataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String mobile,
      String image,
      String email,
      String dateOfBirth,
      BuildContext context});
}

/// @nodoc
class __$$AddUserdataImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AddUserdataImpl>
    implements _$$AddUserdataImplCopyWith<$Res> {
  __$$AddUserdataImplCopyWithImpl(
      _$AddUserdataImpl _value, $Res Function(_$AddUserdataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? mobile = null,
    Object? image = null,
    Object? email = null,
    Object? dateOfBirth = null,
    Object? context = null,
  }) {
    return _then(_$AddUserdataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$AddUserdataImpl implements _AddUserdata {
  const _$AddUserdataImpl(
      {required this.name,
      required this.mobile,
      required this.image,
      required this.email,
      required this.dateOfBirth,
      required this.context});

  @override
  final String name;
  @override
  final String mobile;
  @override
  final String image;
  @override
  final String email;
  @override
  final String dateOfBirth;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.addUserdata(name: $name, mobile: $mobile, image: $image, email: $email, dateOfBirth: $dateOfBirth, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserdataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, mobile, image, email, dateOfBirth, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserdataImplCopyWith<_$AddUserdataImpl> get copyWith =>
      __$$AddUserdataImplCopyWithImpl<_$AddUserdataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String number)
        signWithPhoneNumber,
    required TResult Function(
            BuildContext context, String verificationId, String otpSent)
        verifyOTP,
    required TResult Function(BuildContext context) checkUserStatus,
    required TResult Function(String name, String mobile, String image,
            String email, String dateOfBirth, BuildContext context)
        addUserdata,
    required TResult Function(BuildContext context) signOut,
  }) {
    return addUserdata(name, mobile, image, email, dateOfBirth, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String number)? signWithPhoneNumber,
    TResult? Function(
            BuildContext context, String verificationId, String otpSent)?
        verifyOTP,
    TResult? Function(BuildContext context)? checkUserStatus,
    TResult? Function(String name, String mobile, String image, String email,
            String dateOfBirth, BuildContext context)?
        addUserdata,
    TResult? Function(BuildContext context)? signOut,
  }) {
    return addUserdata?.call(name, mobile, image, email, dateOfBirth, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String number)? signWithPhoneNumber,
    TResult Function(
            BuildContext context, String verificationId, String otpSent)?
        verifyOTP,
    TResult Function(BuildContext context)? checkUserStatus,
    TResult Function(String name, String mobile, String image, String email,
            String dateOfBirth, BuildContext context)?
        addUserdata,
    TResult Function(BuildContext context)? signOut,
    required TResult orElse(),
  }) {
    if (addUserdata != null) {
      return addUserdata(name, mobile, image, email, dateOfBirth, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_signWithPhoneNumber value) signWithPhoneNumber,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_CheckUserStatus value) checkUserStatus,
    required TResult Function(_AddUserdata value) addUserdata,
    required TResult Function(_SignOut value) signOut,
  }) {
    return addUserdata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_signWithPhoneNumber value)? signWithPhoneNumber,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_CheckUserStatus value)? checkUserStatus,
    TResult? Function(_AddUserdata value)? addUserdata,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return addUserdata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_signWithPhoneNumber value)? signWithPhoneNumber,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_CheckUserStatus value)? checkUserStatus,
    TResult Function(_AddUserdata value)? addUserdata,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (addUserdata != null) {
      return addUserdata(this);
    }
    return orElse();
  }
}

abstract class _AddUserdata implements AuthEvent {
  const factory _AddUserdata(
      {required final String name,
      required final String mobile,
      required final String image,
      required final String email,
      required final String dateOfBirth,
      required final BuildContext context}) = _$AddUserdataImpl;

  String get name;
  String get mobile;
  String get image;
  String get email;
  String get dateOfBirth;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$AddUserdataImplCopyWith<_$AddUserdataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$SignOutImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.signOut(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOutImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignOutImplCopyWith<_$SignOutImpl> get copyWith =>
      __$$SignOutImplCopyWithImpl<_$SignOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String number)
        signWithPhoneNumber,
    required TResult Function(
            BuildContext context, String verificationId, String otpSent)
        verifyOTP,
    required TResult Function(BuildContext context) checkUserStatus,
    required TResult Function(String name, String mobile, String image,
            String email, String dateOfBirth, BuildContext context)
        addUserdata,
    required TResult Function(BuildContext context) signOut,
  }) {
    return signOut(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String number)? signWithPhoneNumber,
    TResult? Function(
            BuildContext context, String verificationId, String otpSent)?
        verifyOTP,
    TResult? Function(BuildContext context)? checkUserStatus,
    TResult? Function(String name, String mobile, String image, String email,
            String dateOfBirth, BuildContext context)?
        addUserdata,
    TResult? Function(BuildContext context)? signOut,
  }) {
    return signOut?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String number)? signWithPhoneNumber,
    TResult Function(
            BuildContext context, String verificationId, String otpSent)?
        verifyOTP,
    TResult Function(BuildContext context)? checkUserStatus,
    TResult Function(String name, String mobile, String image, String email,
            String dateOfBirth, BuildContext context)?
        addUserdata,
    TResult Function(BuildContext context)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_signWithPhoneNumber value) signWithPhoneNumber,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_CheckUserStatus value) checkUserStatus,
    required TResult Function(_AddUserdata value) addUserdata,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_signWithPhoneNumber value)? signWithPhoneNumber,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_CheckUserStatus value)? checkUserStatus,
    TResult? Function(_AddUserdata value)? addUserdata,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_signWithPhoneNumber value)? signWithPhoneNumber,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_CheckUserStatus value)? checkUserStatus,
    TResult Function(_AddUserdata value)? addUserdata,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut({required final BuildContext context}) = _$SignOutImpl;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$SignOutImplCopyWith<_$SignOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  TextEditingController get nameCtr => throw _privateConstructorUsedError;
  TextEditingController get mobileNumberCtr =>
      throw _privateConstructorUsedError;
  TextEditingController get emailCtr => throw _privateConstructorUsedError;
  TextEditingController get dateOfBirthCtr =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      TextEditingController nameCtr,
      TextEditingController mobileNumberCtr,
      TextEditingController emailCtr,
      TextEditingController dateOfBirthCtr});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? nameCtr = null,
    Object? mobileNumberCtr = null,
    Object? emailCtr = null,
    Object? dateOfBirthCtr = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      nameCtr: null == nameCtr
          ? _value.nameCtr
          : nameCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      mobileNumberCtr: null == mobileNumberCtr
          ? _value.mobileNumberCtr
          : mobileNumberCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      emailCtr: null == emailCtr
          ? _value.emailCtr
          : emailCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      dateOfBirthCtr: null == dateOfBirthCtr
          ? _value.dateOfBirthCtr
          : dateOfBirthCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      TextEditingController nameCtr,
      TextEditingController mobileNumberCtr,
      TextEditingController emailCtr,
      TextEditingController dateOfBirthCtr});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? nameCtr = null,
    Object? mobileNumberCtr = null,
    Object? emailCtr = null,
    Object? dateOfBirthCtr = null,
  }) {
    return _then(_$AuthStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      nameCtr: null == nameCtr
          ? _value.nameCtr
          : nameCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      mobileNumberCtr: null == mobileNumberCtr
          ? _value.mobileNumberCtr
          : mobileNumberCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      emailCtr: null == emailCtr
          ? _value.emailCtr
          : emailCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      dateOfBirthCtr: null == dateOfBirthCtr
          ? _value.dateOfBirthCtr
          : dateOfBirthCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.nameCtr,
      required this.mobileNumberCtr,
      required this.emailCtr,
      required this.dateOfBirthCtr});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final TextEditingController nameCtr;
  @override
  final TextEditingController mobileNumberCtr;
  @override
  final TextEditingController emailCtr;
  @override
  final TextEditingController dateOfBirthCtr;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, isError: $isError, nameCtr: $nameCtr, mobileNumberCtr: $mobileNumberCtr, emailCtr: $emailCtr, dateOfBirthCtr: $dateOfBirthCtr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.nameCtr, nameCtr) || other.nameCtr == nameCtr) &&
            (identical(other.mobileNumberCtr, mobileNumberCtr) ||
                other.mobileNumberCtr == mobileNumberCtr) &&
            (identical(other.emailCtr, emailCtr) ||
                other.emailCtr == emailCtr) &&
            (identical(other.dateOfBirthCtr, dateOfBirthCtr) ||
                other.dateOfBirthCtr == dateOfBirthCtr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, nameCtr,
      mobileNumberCtr, emailCtr, dateOfBirthCtr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isLoading,
      required final bool isError,
      required final TextEditingController nameCtr,
      required final TextEditingController mobileNumberCtr,
      required final TextEditingController emailCtr,
      required final TextEditingController dateOfBirthCtr}) = _$AuthStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  TextEditingController get nameCtr;
  @override
  TextEditingController get mobileNumberCtr;
  @override
  TextEditingController get emailCtr;
  @override
  TextEditingController get dateOfBirthCtr;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
