part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool isError,
    required TextEditingController nameCtr,
    required TextEditingController mobileNumberCtr,
    required TextEditingController emailCtr,
    required TextEditingController dateOfBirthCtr,
  }) = _AuthState;
  factory AuthState.initial() => AuthState(
      isLoading: false,
      isError: false,
      nameCtr: TextEditingController(),
      mobileNumberCtr: TextEditingController(),
      emailCtr: TextEditingController(),
      dateOfBirthCtr: TextEditingController());
}
