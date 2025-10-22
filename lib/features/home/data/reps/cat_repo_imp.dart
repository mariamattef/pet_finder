import 'package:dartz/dartz.dart';
import 'package:petfinderapp/core/errors/failure.dart';
import 'package:petfinderapp/features/home/data/data_sourcees/remote_data_source.dart';
import 'package:petfinderapp/features/home/domain/entities/cat_entity.dart';
import 'package:petfinderapp/features/home/domain/repos/cat_repo.dart';

class CatRepoImp extends CatRepo {
  RemoteDataSource remoteDataSource;
  CatRepoImp({required this.remoteDataSource});
  @override
  Future<Either<Failure, List<CatEntity>>> getAllCategories() async {
    try {
      final result = await remoteDataSource.getAllCats();
      return Right(result);
    } on Exception catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
