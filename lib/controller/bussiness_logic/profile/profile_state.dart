part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isLoading,
    required bool isError,
    required String name,
    required String mobile,
    required String image,
    required String email,
    required String dateOfBirth,
  }) = _ProfileState;
  factory ProfileState.initial() => const ProfileState(
        name: '',
        mobile: '',
        image: '',
        email: '',
        dateOfBirth: '',
        isError: false,
        isLoading: false,
      );
}
