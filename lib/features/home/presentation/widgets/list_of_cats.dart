import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petfinderapp/features/home/presentation/cubits/cats_cubit.dart';
import 'package:petfinderapp/features/home/presentation/cubits/cats_cubit/cats_state.dart';
import 'package:petfinderapp/features/home/presentation/widgets/item_of_cat_list.dart';

class ListOfCats extends StatelessWidget {
  const ListOfCats({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatsCubit, CatsState>(
      builder: (context, state) {
        if (state is CatsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is CatsFailure) {
          return Center(child: Text(state.errorMessage));
        } else if (state is CatsSuccess) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return ItemOfCatList(cats: state.catBreeds[index]);
            },
            itemCount: state.catBreeds.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
