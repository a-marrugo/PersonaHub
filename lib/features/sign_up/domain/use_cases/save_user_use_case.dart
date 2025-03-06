import 'package:injectable/injectable.dart';
import 'package:personal_hub/core/domain/entities/base_data.dart';
import 'package:personal_hub/core/domain/use_cases/base_use_case.dart';
import 'package:personal_hub/features/sign_up/domain/entities/user.dart';
import 'package:personal_hub/features/sign_up/domain/repositories/user_repository.dart';

/// Use case for saving user data.
@injectable
class SaveUserUseCase extends BaseUseCase<BaseData<bool>, User> {
  // ignore: public_member_api_docs
  SaveUserUseCase(this._userRepository);
  final UserRepository _userRepository;

  @override
  Future<BaseData<bool>> execute(User params) => _userRepository.saveUser(
        name: params.name!,
        lastName: params.lastName!,
        birthday: params.birthday!,
      );
}
