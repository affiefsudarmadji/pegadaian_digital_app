import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';
import 'package:pegadaian_digital/data/model/request/login_request.dart';
import 'package:pegadaian_digital/data/model/response/login_response.dart';
import 'package:pegadaian_digital/data/pegadaian_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  PegadaianRepository pegadaianRepository;
  Logger log;

  LoginBloc({required this.pegadaianRepository, required this.log})
      : super(LoginInitial()) {
    on<LoginClickEvent>(_login);
  }

  void _login(LoginClickEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoadingState());

    final result = await pegadaianRepository.login(event.loginRequest);
    await result.fold(
      (failure) async {
        emit(LoginErrorState(message: failure.message ?? "Gagal Login"));
      },
      (response) async {
        emit(
          LoginLoadedState(loginResponse: response),
        );
      },
    );
  }
}
