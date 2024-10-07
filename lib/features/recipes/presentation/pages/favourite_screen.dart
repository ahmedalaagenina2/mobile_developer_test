import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_developer_test/config/routes/routes.dart';
import 'package:mobile_developer_test/core/responsive/responsive.dart';
import 'package:mobile_developer_test/core/widgets/widgets.dart';
import 'package:mobile_developer_test/features/recipes/presentation/bloc/recipes_bloc.dart';
import 'package:mobile_developer_test/features/recipes/presentation/widgets/widgets.dart';
import 'package:mobile_developer_test/generated/assets.gen.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = context.width;
    double itemWidth = 250;
    double crossAxisCount = w / itemWidth;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
      ),
      body: BlocBuilder<RecipesBloc, RecipesState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (_, __, favoriteRecipes, ___) {
              return favoriteRecipes.isNotEmpty
                  ? favoriteRecipes.isNotEmpty
                      ? MasonryGridView.count(
                          physics: const BouncingScrollPhysics(),
                          crossAxisCount: crossAxisCount.toInt(),
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          itemCount: favoriteRecipes.length,
                          itemBuilder: (context, index) {
                            // Varies between 0.8, 1.0, and 1.2
                            double aspectRatio = 0.8 + (index % 3) * 0.2;
                            double height = itemWidth / aspectRatio;
                            var recipe = favoriteRecipes[index];
                            return DoubleTapHeartAnimation(
                              onDoubleTap: () async {
                                context
                                    .read<RecipesBloc>()
                                    .add(ToggleFavorite(recipe));
                              },
                              child: RecipeCard(
                                item: recipe,
                                height: height,
                                onFavouriteTap: () => context
                                    .read<RecipesBloc>()
                                    .add(ToggleFavorite(recipe)),
                                onTap: () {
                                  context.pushNamed(
                                    AppRoutes.recipesItemDetailsScreen,
                                    extra: recipe,
                                  );
                                },
                              ),
                            );
                          },
                        )
                      : const EmptySearch()
                  : Center(
                      child: Column(
                        children: [
                          Assets.lottie.cardEmpty.lottie(),
                          SizedBox(height: 8.h),
                          Text(
                            "Your favorite items will be shown here",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                    );
            },
            failure: (failure) {
              return Center(
                child: Column(
                  children: [
                    const Text('Oops, something unexpected happened'),
                    SizedBox(height: 32.h),
                    Text(failure),
                    SizedBox(height: 56.h),
                  ],
                ),
              );
            },
            orElse: () {
              Recipes recipe = Recipes(
                id: BoneMock.name,
                name: BoneMock.fullName,
              );
              return Skeletonizer(
                enabled: true,
                child: MasonryGridView.count(
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return RecipeCard(
                      item: recipe,
                      height: 200.h,
                      onTap: () {},
                      onFavouriteTap: () {},
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
