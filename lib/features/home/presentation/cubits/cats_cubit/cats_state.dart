import 'package:petfinderapp/features/home/domain/entities/cat_entity.dart';

abstract class CatsState {}

class CatsInitial extends CatsState {}

class CatsLoading extends CatsState {}

class CatsSuccess extends CatsState {
  final List<CatEntity> catBreeds;

  CatsSuccess(this.catBreeds);
}

class CatsFailure extends CatsState {
  final String errorMessage;

  CatsFailure(this.errorMessage);
}
