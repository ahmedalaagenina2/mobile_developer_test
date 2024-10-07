import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_developer_test/config/theme/theme.dart';
import 'package:mobile_developer_test/core/helpers/helpers.dart';
import 'package:mobile_developer_test/core/widgets/widgets.dart';
import 'package:mobile_developer_test/features/recipes/domain/entities/recipes.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    super.key,
    required this.onTap,
    required this.onFavouriteTap,
    required this.item,
    this.height,
    this.haveUndoFavourite = false,
  });

  final Recipes item;
  final VoidCallback onTap;
  final VoidCallback onFavouriteTap;
  final double? height;
  final bool haveUndoFavourite;

  @override
  Widget build(BuildContext context) {
    return ShadowWidget(
      offset: Offset.zero,
      radius: 32.r,
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.r),
                      child: item.image != null
                          ? CachedNetworkImage(
                              imageUrl: item.image!,
                              height: height,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              progressIndicatorBuilder: (_, url, progress) =>
                                  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: CircularProgressIndicator(
                                      value: progress.progress),
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                                  Skeleton.replace(
                                height: height,
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.error),
                                ),
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.symmetric(vertical: 16.h),
                              child: Center(
                                child: Icon(
                                  Icons.error,
                                  color: Colors.red,
                                  size: 42.sp,
                                ),
                              ),
                            ),
                    ),
                    FavouriteButtonScaleAnimation(
                      size: 32.sp,
                      iconSize: 32.sp,
                      isFavourite: item.isFavourite,
                      onTap: onFavouriteTap,
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: StringHelper.mainAxisAlignment(
                    text: item.name ?? "No Name",
                    isDeviceArabic: false,
                  ),
                  children: [
                    Expanded(
                      child: Text(
                        item.name ?? "No Name",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: StringHelper.mainAxisAlignment(
                    text: item.name ?? "No Name",
                    isDeviceArabic: false,
                    reverse: true,
                  ),
                  children: [
                    Text(
                      item.calories ?? "unKnown kcal",
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
