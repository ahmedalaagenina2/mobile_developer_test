import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_developer_test/generated/assets.gen.dart';

class EmptySearch extends StatelessWidget {
  const EmptySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Assets.lottie.noSearchResult.lottie(),
        SizedBox(height: 8.h),
        Text(
          'No Data Match Your Search',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Spacer(),
        const Spacer(),
      ],
    );
  }
}
