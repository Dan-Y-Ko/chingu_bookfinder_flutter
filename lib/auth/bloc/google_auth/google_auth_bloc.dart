import 'package:bloc/bloc.dart';
import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:equatable/equatable.dart';

part 'google_auth_event.dart';
part 'google_auth_state.dart';

class GoogleAuthBloc extends Bloc<GoogleAuthEvent, GoogleAuthState> {
  GoogleAuthBloc({
    required GoogleAuthService googleAuthService,
  })  : _googleAuthService = googleAuthService,
        super(
          const GoogleAuthState(),
        ) {
    on<GoogleSignInEvent>(_googleSignInEvent);
    on<SignOutEvent>(_signOutEvent);
  }

  final GoogleAuthService _googleAuthService;

  Future<void> _googleSignInEvent(
    GoogleAuthEvent event,
    Emitter<GoogleAuthState> emit,
  ) async {
    emit(
      state.copyWith(
        status: GoogleAuthStatus.loading,
      ),
    );

    await emit.forEach(
      Stream.fromFuture(
        _googleAuthService.signIn(),
      ),
      onData: (_) => state.copyWith(
        status: GoogleAuthStatus.success,
        isAuthenticated: true,
      ),
      onError: (error, _) => state.copyWith(
        status: GoogleAuthStatus.failure,
        isAuthenticated: false,
        error: error.toString(),
      ),
    );
  }

  Future<void> _signOutEvent(
    GoogleAuthEvent event,
    Emitter<GoogleAuthState> emit,
  ) async {
    emit(
      state.copyWith(
        status: GoogleAuthStatus.loading,
      ),
    );

    await emit.forEach(
      Stream.fromFuture(
        _googleAuthService.signOut(),
      ),
      onData: (_) => state.copyWith(
        status: GoogleAuthStatus.initial,
        isAuthenticated: false,
      ),
      onError: (error, _) => state.copyWith(
        status: GoogleAuthStatus.failure,
        isAuthenticated: false,
        error: error.toString(),
      ),
    );
  }
}
