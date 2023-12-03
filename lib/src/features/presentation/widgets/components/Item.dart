import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Item extends StatelessWidget {
  final String title;
  final String asset;

  const Item({
    super.key,
    required this.title,
    required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Gap(60.w),
        SvgPicture.asset(asset, height: 50.h),
        Gap(10.w),
        Text(title, style: Theme.of(context).textTheme.titleSmall),
        const Spacer(),
      ],
    );
  }
}
