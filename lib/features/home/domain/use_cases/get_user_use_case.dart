import 'package:injectable/injectable.dart';
import 'package:personal_hub/core/domain/entities/base_data.dart';
import 'package:personal_hub/core/domain/use_cases/base_use_case.dart';
import 'package:personal_hub/features/sign_up/domain/entities/user.dart';
import 'package:personal_hub/features/sign_up/domain/repositories/user_repository.dart';

/// Use case for retrieve user info
@injectable
class GetUserUseCase extends BaseUseCase<BaseData<User?>, void> {
  // ignore: public_member_api_docs
  GetUserUseCase(this._userRepository);
  final UserRepository _userRepository;

  @override
  Future<BaseData<User?>> execute(void params) => _userRepository.getUser();
}
