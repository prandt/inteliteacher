import 'package:flutter_test/flutter_test.dart';
import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:inteliteacher/model/entities/auth/auth_user_model.dart';
import 'package:mockito/mockito.dart';
import 'package:result_dart/result_dart.dart';
import 'package:mockito/annotations.dart';
import 'auth_repository_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  group('AuthRepository', () {
    late MockAuthRepository mockAuthRepository;
    final mockUser =
        AuthUserModel(id: '1', email: 'test@example.com', name: 'Jose');

    setUp(() {
      mockAuthRepository = MockAuthRepository();
    });

    setUpAll(() {
      provideDummy<ResultDart<AuthUserModel, Exception>>(Success(mockUser));
      provideDummy<ResultDart<Unit, Exception>>(Success(unit));
      provideDummy<ResultDart<bool, Exception>>(Success(true));
    });

    test(
        'signInWithEmailAndPassword deve retornar AuthUserModel em caso de sucesso',
        () async {
      const email = 'test@example.com';
      const password = 'password123';

      when(mockAuthRepository.signInWithEmailAndPassword(email, password))
          .thenAnswer((_) async => Success(mockUser));

      final result =
          await mockAuthRepository.signInWithEmailAndPassword(email, password);

      expect(result.isSuccess(), isTrue);
      expect(result.getOrNull(), equals(mockUser));
    });

    test('signUpWithEmailAndPassword deve retornar Unit em caso de sucesso',
        () async {
      const email = 'test@example.com';
      const password = 'password123';

      when(mockAuthRepository.signUpWithEmailAndPassword(email, password))
          .thenAnswer((_) async => Success(unit));

      final result =
          await mockAuthRepository.signUpWithEmailAndPassword(email, password);

      expect(result.isSuccess(), isTrue);
    });

    test(
        'hasCompletedRegistration deve retornar true se o usuário já estiver registrado',
        () async {
      when(mockAuthRepository.hasCompletedRegistration())
          .thenAnswer((_) async => Success(true));

      final result = await mockAuthRepository.hasCompletedRegistration();

      expect(result.isSuccess(), isTrue);
      expect(result.getOrNull(), isTrue);
    });
  });
}
