import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_developer_test/config/routes/app_routes.dart';
import 'package:mobile_developer_test/config/theme/theme.dart';
import 'package:mobile_developer_test/core/widgets/widgets.dart';
import 'package:mobile_developer_test/features/recipes/presentation/bloc/recipes_bloc.dart';
import 'package:mobile_developer_test/generated/assets.gen.dart';

class SearchFavBar extends StatelessWidget {
  const SearchFavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: CustomTextFormField(
              hintText: 'Search..',
              height: 49.h,
              isCollapsed: true,
              hintFontSize: 20.sp,
              hintFontWeight: FontWeight.w500,
              contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
              onChange: (value) {
                context.read<RecipesBloc>().add(SearchRecipes(value));
              },
              suffix: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Assets.icons.search.svg(
                  colorFilter: ColorFilter.mode(
                    AppColors.primary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              haveShadow: true,
              backgroundColor: Colors.white,
              radius: 6.r,
              borderColor: Colors.white,
            ),
          ),
          SizedBox(width: 4.w),
          ShadowWidget(
            radius: 6.r,
            offset: Offset.zero,
            child: CustomButtonIcon(
              elevation: 0,
              icon: Icons.favorite_rounded,
              radius: 6.r,
              onPressed: () => context.pushNamed(AppRoutes.favouriteScreen),
              iconSize: 32.w,
            ),
          ),
        ],
      ),
    );
  }
}
