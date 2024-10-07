import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_developer_test/config/routes/routes.dart';
import 'package:mobile_developer_test/core/responsive/responsive.dart';
import 'package:mobile_developer_test/core/util/util.dart';
import 'package:mobile_developer_test/core/widgets/widgets.dart';
import 'package:mobile_developer_test/features/recipes/presentation/bloc/recipes_bloc.dart';
import 'package:mobile_developer_test/features/recipes/presentation/widgets/widgets.dart';
import 'package:mobile_developer_test/generated/assets.gen.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RecipesGrid extends StatelessWidget {
  const RecipesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    double w = context.width;
    double itemWidth = 250;
    double crossAxisCount = w / itemWidth;
    return BlocConsumer<RecipesBloc, RecipesState>(
      listener: (context, state) {
        if (state is RecipesSuccess) {
          final recipe = state.recipeToToggleFavorite;
          if (recipe == null) return;
          ePrint(
              "GoRouter currentConfiguration: ${GoRouter.of(RouteConfigurations.parentNavigatorKey.currentState!.context).routerDelegate.currentConfiguration.fullPath}");
          CustomSnackBar.showUndoSnackBar(
            onUndo: () {
              context.read<RecipesBloc>().add(
                    ToggleFavorite(
                      recipe.copyWith(isFavourite: !recipe.isFavourite),
                      isUndo: true,
                    ),
                  );
            },
            text:
                "Recipe ${recipe.name} ${!recipe.isFavourite ? "added to" : "removed from"} favorites",
            color: !recipe.isFavourite ? Colors.green : Colors.red,
            textColor: Colors.white,
          );
        }
      },
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async =>
              context.read<RecipesBloc>().add(const GetRecipesCall()),
          child: state.maybeWhen(
            success: (allRecipes, filteredRecipes, _, __) {
              return allRecipes.isNotEmpty
                  ? filteredRecipes.isNotEmpty
                      ? MasonryGridView.count(
                          physics: const BouncingScrollPhysics(),
                          crossAxisCount: crossAxisCount.toInt(),
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          itemCount: filteredRecipes.length,
                          itemBuilder: (context, index) {
                            // Varies between 0.8, 1.0, and 1.2
                            double aspectRatio = 0.8 + (index % 3) * 0.2;
                            double height = itemWidth / aspectRatio;
                            var recipe = filteredRecipes[index];
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
                          Assets.lottie.emptyBox.lottie(),
                          CustomButtonText(
                            title: "Refresh",
                            margin: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 16.h),
                            onPressed: () => context
                                .read<RecipesBloc>()
                                .add(const GetRecipesCall()),
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
                    CustomButtonText(
                      title: "Retry",
                      onPressed: () async => context
                          .read<RecipesBloc>()
                          .add(const GetRecipesCall()),
                    ),
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
          ),
        );
      },
    );
  }
}
