import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:result_dart/result_dart.dart';
import 'package:inteliteacher/data/repositories/auth/auth_repository.dart';
import 'package:inteliteacher/model/entities/auth/auth_user_model.dart';
import 'package:inteliteacher/ui/user/view_models/profile_viewmodel.dart';

import 'profile_viewmodel_test.mocks.dart';

@GenerateMocks([AuthRepository])
void main() {
  group('ProfileViewmodel', () {
    late MockAuthRepository mockAuthRepository;
    late ProfileViewmodel viewModel;

    const String mockName = 'Carlos';
    final mockUser = AuthUserModel(id: '1', email: 'test@example.com', name: 'Jose');

    setUp(() {
      mockAuthRepository = MockAuthRepository();
      viewModel = ProfileViewmodel(mockAuthRepository);
    });

    setUpAll(() {
      provideDummy<ResultDart<AuthUserModel, Exception>>(Success(mockUser));
      provideDummy<ResultDart<Unit, Exception>>(Success(unit));
      provideDummy<ResultDart<String, Exception>>(Success(mockName));
    });

    test('getUserCommand deve buscar e definir o usuário corretamente', () async {
      when(mockAuthRepository.getUser()).thenAnswer((_) async => Success(mockUser));

      await viewModel.getUserCommand.execute();

      expect(viewModel.user, equals(mockUser));
    });

    // test('updateDisplayNameCommand deve atualizar o nome do usuário', () async {
    //   when(mockAuthRepository.updateDisplayName(mockName))
    //       .thenAnswer((_) async => Success(mockName));
    //
    //   await viewModel.updateDisplayNameCommand.execute(mockName);
    //
    //   verify(mockAuthRepository.updateDisplayName(mockName)).called(1);
    //   expect(viewModel.user?.name, equals(mockName));
    // });

    test('updatePasswordCommand deve chamar o repositório para atualizar a senha', () async {
      const newPassword = 'newPassword123';
      when(mockAuthRepository.updatePassword(newPassword))
          .thenAnswer((_) async => Success(unit));

      await viewModel.updatePasswordCommand.execute(newPassword);

      verify(mockAuthRepository.updatePassword(newPassword)).called(1);
    });
  });
}