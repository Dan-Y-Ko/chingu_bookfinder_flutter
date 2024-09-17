import 'package:bloc_test/bloc_test.dart';
import 'package:chingu_bookfinder_flutter/auth/auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGoogleAuthService extends Mock implements GoogleAuthService {}

void main() {
  late GoogleAuthService googleAuthService;
  late GoogleAuthBloc googleAuthBloc;

  setUp(() {
    googleAuthService = MockGoogleAuthService();

    when(() => googleAuthService.signIn()).thenAnswer((_) async => _);
    when(() => googleAuthService.signOut()).thenAnswer((_) async => _);

    googleAuthBloc = GoogleAuthBloc(googleAuthService: googleAuthService);
  });

  group('constructor', () {
    test('has correct initial state', () {
      expect(
        googleAuthBloc.state,
        equals(const GoogleAuthState()),
      );
    });
  });

  group('GoogleSignInEvent', () {
    blocTest<GoogleAuthBloc, GoogleAuthState>(
      '''
          emits loading status when sign in is called and
          succcess status if successful
        ''',
      build: () => googleAuthBloc,
      act: (bloc) => bloc.add(
        GoogleSignInEvent(),
      ),
      expect: () => [
        const GoogleAuthState(status: GoogleAuthStatus.loading),
        const GoogleAuthState(
          status: GoogleAuthStatus.success,
          isAuthenticated: true,
        ),
      ],
    );

    blocTest<GoogleAuthBloc, GoogleAuthState>(
      'emits failure status when error occurs',
      setUp: () {
        when(
          () => googleAuthService.signIn(),
        ).thenAnswer(
          (_) => Future.error(
            'An error has occurred',
          ),
        );
      },
      build: () => googleAuthBloc,
      act: (bloc) => bloc.add(
        GoogleSignInEvent(),
      ),
      expect: () => [
        const GoogleAuthState(status: GoogleAuthStatus.loading),
        const GoogleAuthState(
          status: GoogleAuthStatus.failure,
          error: 'An error has occurred',
        ),
      ],
    );
  });

  group('SignOutEvent', () {
    blocTest<GoogleAuthBloc, GoogleAuthState>(
      '''
          emits loading status when sign out is called and
          succcess status if successful
        ''',
      build: () => googleAuthBloc,
      act: (bloc) => bloc.add(
        SignOutEvent(),
      ),
      expect: () => [
        const GoogleAuthState(status: GoogleAuthStatus.loading),
        const GoogleAuthState(),
      ],
    );

    blocTest<GoogleAuthBloc, GoogleAuthState>(
      'emits failure status when error occurs',
      setUp: () {
        when(
          () => googleAuthService.signOut(),
        ).thenAnswer(
          (_) => Future.error(
            'An error has occurred',
          ),
        );
      },
      build: () => googleAuthBloc,
      act: (bloc) => bloc.add(
        SignOutEvent(),
      ),
      expect: () => [
        const GoogleAuthState(status: GoogleAuthStatus.loading),
        const GoogleAuthState(
          status: GoogleAuthStatus.failure,
          error: 'An error has occurred',
        ),
      ],
    );
  });
}
