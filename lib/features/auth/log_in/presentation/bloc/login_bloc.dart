import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senior_housing_central/core/utils/shared_preference/shared_preference_helper.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/bloc/login_event.dart';
import 'package:senior_housing_central/features/auth/log_in/presentation/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is CheckLoggedInStatus) {
      yield LoginLoading();
      bool isLoggedIn = await SharedPreferencesHelper.isLoggedIn();
      if (isLoggedIn) {
        String? email = await SharedPreferencesHelper.getUserEmail();
        yield LoginSuccess(email ?? '');
      } else {
        yield LoginFailure('User not logged in');
      }
    }

    // Handle LoginSubmitted event
    if (event is LoginSubmitted) {
      yield LoginLoading();

      try {
        bool isLoginSuccessful = await _login(event.email, event.password);
        if (isLoginSuccessful) {
          yield LoginSuccess(event.email);
        } else {
          yield LoginFailure('Invalid credentials');
        }
      } catch (e) {
        yield LoginFailure('Error: ${e.toString()}');
      }
    }
  }

  Future<bool> _login(String email, String password) async {
    // Implement the actual login logic here (e.g., API call or check credentials)
    // For example:
    return email == 'test@example.com' && password == 'password';
  }
}
