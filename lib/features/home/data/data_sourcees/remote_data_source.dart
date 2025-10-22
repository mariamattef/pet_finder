import 'package:dio/dio.dart';
import 'package:petfinderapp/core/databases/api/api_consumer.dart';
import 'package:petfinderapp/core/databases/api/end_points.dart';
import 'package:petfinderapp/core/errors/error_model.dart';
import 'package:petfinderapp/core/errors/exceptions.dart';
import 'package:petfinderapp/features/home/data/models/cat_model/cat_model.dart';

class RemoteDataSource {
  ApiConsumer api;
  RemoteDataSource({required this.api});
  Future<List<CatModel>> getAllCats() async {
    try {
      final response = await api.get(
        EndPoints.breeds,
        queryParameters: {'limit': 10, 'page': 0},
      );
      final List<dynamic> data = response;
      final products = data.map((json) => CatModel.fromJson(json)).toList();
      return products;
    } on DioException catch (e) {
      throw ServerException(ErrorModel.fromJson(e.response?.data));
    }
  }
}
