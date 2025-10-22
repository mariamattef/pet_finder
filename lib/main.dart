import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petfinderapp/core/databases/api/dio_consumer.dart';
import 'package:petfinderapp/features/home/data/data_sourcees/remote_data_source.dart';
import 'package:petfinderapp/features/home/data/reps/cat_repo_imp.dart';
import 'package:petfinderapp/features/home/domain/use_cases/get_cat_usecase.dart';
import 'package:petfinderapp/features/home/presentation/cubits/cats_cubit.dart';
import 'package:petfinderapp/features/splash/get_started.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(
    BlocProvider(
      create: (context) => CatsCubit(
        getCatUsecase: GetCatUsecase(
          catRepo: CatRepoImp(
            remoteDataSource: RemoteDataSource(api: DioConsumer(dio: Dio())),
          ),
        ),
      )..fetchAllCats(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(child: MaterialApp(home: const GetStarted()));
  }
}
