 part of 'login_form_bloc.dart';

class LoginFormState extends Equatable {
  final bool isPosting;
  final bool isFormPosted;
  final bool isValid;
  final Email email;
  final Password password;

  const LoginFormState({
    this.isPosting = false,
    this.isFormPosted = false,
    this.isValid = false,
    this.email = const Email.pure(),
    this.password = const Password.pure(),
  });

  LoginFormState copyWith({
    bool? isPosting,
    bool? isFormPosted,
    bool? isValid,
    Email? email,
    Password? password,
  }) =>
      LoginFormState(
        isPosting: isPosting ?? this.isPosting,
        isFormPosted: isFormPosted ?? this.isFormPosted,
        isValid: isValid ?? this.isValid,
        email: email ?? this.email,
        password: password ?? this.password,
      );

  @override
  // TODO: implement props
  List<Object?> get props =>
      [isPosting, isFormPosted, isValid, email, password];

  @override
  String toString() => '''{
      isPosting: $isPosting,
      isFormPosted: $isFormPosted,
      isValid: $isValid,
      email: $email,
      password: $password,
  }''';
}
