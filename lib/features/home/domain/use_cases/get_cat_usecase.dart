import 'package:dartz/dartz.dart';
import 'package:petfinderapp/core/errors/failure.dart';
import 'package:petfinderapp/features/home/domain/entities/cat_entity.dart';
import 'package:petfinderapp/features/home/domain/repos/cat_repo.dart';

class GetCatUsecase {
  final CatRepo catRepo;
  GetCatUsecase({required this.catRepo});

  Future<Either<Failure, List<CatEntity>>> call() async {
    return await catRepo.getAllCategories();
  }
}
