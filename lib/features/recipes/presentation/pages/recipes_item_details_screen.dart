import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_developer_test/config/routes/routes.dart';
import 'package:mobile_developer_test/config/theme/theme.dart';
import 'package:mobile_developer_test/core/widgets/widgets.dart';
import 'package:mobile_developer_test/features/recipes/presentation/bloc/recipes_bloc.dart';
import 'package:mobile_developer_test/features/recipes/presentation/widgets/widgets.dart';

class RecipesItemDetailsScreen extends StatefulWidget {
  const RecipesItemDetailsScreen({
    super.key,
    required this.recipesItem,
  });
  final Recipes recipesItem;

  @override
  State<RecipesItemDetailsScreen> createState() =>
      _RecipesItemDetailsScreenState();
}

class _RecipesItemDetailsScreenState extends State<RecipesItemDetailsScreen> {
  bool isFavorite = false;
  @override
  void initState() {
    super.initState();
    isFavorite = widget.recipesItem.isFavourite;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: BlocBuilder<RecipesBloc, RecipesState>(
        builder: (context, state) {
          return Stack(
            alignment: Alignment.topCenter,
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 0.6.sh,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.r),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6.r),
                          child: widget.recipesItem.image != null
                              ? CachedNetworkImage(
                                  imageUrl: widget.recipesItem.image!,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  progressIndicatorBuilder: (_, __, progress) =>
                                      Center(
                                    child: CircularProgressIndicator(
                                        value: progress.progress),
                                  ),
                                  errorWidget: (_, __, ___) =>
                                      const Icon(Icons.error),
                                )
                              : Center(
                                  child: Icon(
                                    Icons.error,
                                    color: Colors.red,
                                    size: 56.sp,
                                  ),
                                ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: ItemInfoDetails(
                        recipesItem: widget.recipesItem,
                      ),
                    ),
                  ],
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCircularButtonIcon(
                        onPressed: () => context.pop(),
                        padding: EdgeInsets.only(right: 4.w),
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 24.sp,
                          color: AppColors.primary,
                        ),
                      ),
                      FavouriteButtonSizeColorAnimation(
                        isFavourite: isFavorite,
                        changeUi: true,
                        iconSize: 24.sp,
                        onTap: () async {
                          context.read<RecipesBloc>().add(
                                ToggleFavorite(
                                  widget.recipesItem
                                      .copyWith(isFavourite: isFavorite),
                                  isFromDetails: true,
                                ),
                              );
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
