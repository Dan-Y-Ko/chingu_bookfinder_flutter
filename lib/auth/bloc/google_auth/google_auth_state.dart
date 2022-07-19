part of 'google_auth_bloc.dart';

enum GoogleAuthStatus { initial, loading, success, failure }

class GoogleAuthState extends Equatable {
  const GoogleAuthState({
    this.status = GoogleAuthStatus.initial,
    this.isAuthenticated = false,
    this.error = '',
  });

  final GoogleAuthStatus status;
  final bool isAuthenticated;
  final String error;

  GoogleAuthState copyWith({
    GoogleAuthStatus? status,
    bool? isAuthenticated,
    String? error,
  }) {
    return GoogleAuthState(
      status: status ?? this.status,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [status, isAuthenticated, error];
}
