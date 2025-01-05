// login_event.dart

abstract class LoginEvent {}

class CheckLoggedInStatus extends LoginEvent {}

class LoginSubmitted extends LoginEvent {
  final String email;
  final String password;

  LoginSubmitted({
    required this.email,
    required this.password,
  });
}
