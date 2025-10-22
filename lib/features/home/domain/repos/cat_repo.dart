import 'package:dartz/dartz.dart';
import 'package:petfinderapp/core/errors/failure.dart';
import 'package:petfinderapp/features/home/domain/entities/cat_entity.dart';

abstract class CatRepo {
  Future<Either<Failure, List<CatEntity>>> getAllCategories();
}
