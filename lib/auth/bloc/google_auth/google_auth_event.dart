part of 'google_auth_bloc.dart';

abstract class GoogleAuthEvent extends Equatable {
  const GoogleAuthEvent();

  @override
  List<Object> get props => [];
}

class GoogleSignInEvent extends GoogleAuthEvent {}

class SignOutEvent extends GoogleAuthEvent {}
