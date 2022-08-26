import 'package:flutter_clean_boilerplate/data/users/users_remote_source.dart';

import '../../domain/users/users_repository.dart';
import '../base/base_repository.dart';

class UsersRepositoryImpl extends BaseRepository implements UsersRepository {
  final UsersRemoteSource _usersRemoteSource;

  UsersRepositoryImpl(this._usersRemoteSource);
}
