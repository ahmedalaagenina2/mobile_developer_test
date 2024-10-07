import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_developer_test/config/routes/routes.dart';
import 'package:mobile_developer_test/config/theme/theme.dart';
import 'package:mobile_developer_test/core/widgets/widgets.dart';

class ItemInfoDetails extends StatelessWidget {
  const ItemInfoDetails({
    super.key,
    required this.recipesItem,
  });
  final Recipes recipesItem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Directionality(
            textDirection: StringHelper.textDirection(
              text: recipesItem.name ?? 'No Name',
              isDeviceArabic: false,
            ),
            child: Row(
              children: [
                Text(
                  recipesItem.name ?? 'No Name',
                  style: TextStyle(
                    color: AppColors.primaryDarker,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Text(
                  recipesItem.calories ?? "unKnown kcal",
                  textDirection: StringHelper.textDirection(
                    text: recipesItem.calories ?? "unKnown kcal",
                    isDeviceArabic: false,
                  ),
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconText(
                  title: "${recipesItem.favorites ?? 0}\nLove",
                  iconColor: AppColors.primary,
                  icon: Icons.favorite_rounded,
                  iconSize: 40.sp,
                ),
                IconText(
                  title: "${recipesItem.rating ?? 0}\nRating",
                  iconColor: AppColors.mainTxt,
                  icon: Icons.rate_review_rounded,
                  iconSize: 34.sp,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          SizedBox(height: 12.h),
          ReadMoreText(
            text: recipesItem.description ?? '',
            textStyle: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: 16.h),
          Table(
            children: [
              rowDateTable(
                context,
                title: 'Fats',
                subTitle: recipesItem.fats ?? '',
                bgColor: AppColors.primary.withOpacity(0.3),
              ),
              rowDateTable(
                context,
                title: 'Carobs',
                subTitle: recipesItem.carbos ?? '',
                bgColor: Colors.white,
              ),
              rowDateTable(
                context,
                title: 'Fibers',
                subTitle: recipesItem.fibers ?? '',
                bgColor: AppColors.primary.withOpacity(0.3),
              ),
              rowDateTable(
                context,
                title: 'Proteins',
                subTitle: recipesItem.proteins ?? '',
                bgColor: Colors.white,
              ),
              rowDateTable(
                context,
                title: 'Ingredients',
                subTitle:
                    recipesItem.ingredients!.map((e) => e).toList().join(', '),
                bgColor: AppColors.primary.withOpacity(0.3),
              ),
              rowDateTable(
                context,
                title: 'Deliverable Ingredients',
                subTitle: recipesItem.deliverableIngredients!
                    .map((e) => e)
                    .toList()
                    .join(', '),
                bgColor: Colors.white,
              ),
              rowDateTable(
                context,
                title: 'Undeliverable Ingredients',
                subTitle: recipesItem.undeliverableIngredients!
                    .map((e) => e)
                    .toList()
                    .join(', '),
                bgColor: AppColors.primary.withOpacity(0.3),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TableRow rowDateTable(
    BuildContext context, {
    required String title,
    required String? subTitle,
    required Color bgColor,
    Widget? subTitleWidget,
  }) {
    return TableRow(
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6.r),
                      bottomLeft: Radius.circular(6.r),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6.r),
                      bottomRight: Radius.circular(6.r),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          subTitle ?? "None",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      if (subTitleWidget != null) SizedBox(width: 8.w),
                      if (subTitleWidget != null) subTitleWidget,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
