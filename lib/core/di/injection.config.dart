// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:matrix_application/features/auth/presentation/bloc/history_bloc.dart'
    as _i968;
import 'package:matrix_application/features/auth/presentation/bloc/login_bloc.dart'
    as _i316;
import 'package:matrix_application/features/matrix_grid/domain/usecases/calculate_matrix_selection.dart'
    as _i567;
import 'package:matrix_application/features/matrix_grid/domain/usecases/get_grid_config_for_user.dart'
    as _i989;
import 'package:matrix_application/features/matrix_grid/presentation/bloc/matrix_detail_bloc.dart'
    as _i462;
import 'package:matrix_application/features/matrix_grid/presentation/bloc/matrix_grid_bloc.dart'
    as _i882;
import 'package:matrix_application/features/user/data/datasources/user_local_datasource.dart'
    as _i68;
import 'package:matrix_application/features/user/data/repositories/user_repository_impl.dart'
    as _i650;
import 'package:matrix_application/features/user/domain/repositories/user_repository.dart'
    as _i1003;
import 'package:matrix_application/features/user/domain/usecases/get_all_users.dart'
    as _i887;
import 'package:matrix_application/features/user/domain/usecases/lookup_user_by_phone.dart'
    as _i485;
import 'package:matrix_application/features/user/domain/usecases/register_user.dart'
    as _i1009;
import 'package:matrix_application/features/user/domain/usecases/submit_user_matrix.dart'
    as _i806;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i567.CalculateMatrixSelection>(
      () => _i567.CalculateMatrixSelection(),
    );
    gh.lazySingleton<_i68.UserLocalDataSource>(
      () => _i68.UserLocalDataSource(),
    );
    gh.lazySingleton<_i1003.UserRepository>(
      () => _i650.UserRepositoryImpl(gh<_i68.UserLocalDataSource>()),
    );
    gh.factory<_i989.GetGridConfigForUser>(
      () => _i989.GetGridConfigForUser(gh<_i1003.UserRepository>()),
    );
    gh.factory<_i887.GetAllUsers>(
      () => _i887.GetAllUsers(gh<_i1003.UserRepository>()),
    );
    gh.factory<_i485.LookupUserByPhone>(
      () => _i485.LookupUserByPhone(gh<_i1003.UserRepository>()),
    );
    gh.factory<_i1009.RegisterUser>(
      () => _i1009.RegisterUser(gh<_i1003.UserRepository>()),
    );
    gh.factory<_i806.SubmitUserMatrix>(
      () => _i806.SubmitUserMatrix(gh<_i1003.UserRepository>()),
    );
    gh.factory<_i316.LoginBloc>(
      () => _i316.LoginBloc(
        gh<_i485.LookupUserByPhone>(),
        gh<_i1009.RegisterUser>(),
      ),
    );
    gh.factory<_i882.MatrixGridBloc>(
      () => _i882.MatrixGridBloc(
        gh<_i989.GetGridConfigForUser>(),
        gh<_i567.CalculateMatrixSelection>(),
        gh<_i806.SubmitUserMatrix>(),
      ),
    );
    gh.factory<_i968.HistoryBloc>(
      () => _i968.HistoryBloc(gh<_i887.GetAllUsers>()),
    );
    gh.factory<_i462.MatrixDetailBloc>(
      () => _i462.MatrixDetailBloc(gh<_i485.LookupUserByPhone>()),
    );
    return this;
  }
}
