part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signWithPhoneNumber(
      {required BuildContext context,
      required String number}) = _signWithPhoneNumber;

  const factory AuthEvent.verifyOTP({
    required BuildContext context,
    required String verificationId,
    required String otpSent,
  }) = _VerifyOTP;
  const factory AuthEvent.checkUserStatus({required BuildContext context}) =
      _CheckUserStatus;

  const factory AuthEvent.addUserdata({
    required String name,
    required String mobile,
    required String image,
    required String email,
    required String dateOfBirth,
    required BuildContext context,
  }) = _AddUserdata;

  const factory AuthEvent.signOut({required BuildContext context}) = _SignOut;
}
