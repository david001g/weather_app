import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/src/core/constants/constants.dart';
import 'package:weather_app/src/features/presentation/widgets/components/Item.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 10.h,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 50.h),
                child: Text(
                  "Technologies used in this project",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Gap(60.w),
                  Image.asset(SvgAssets.cleanArchitecture, height: 50.h),
                  Gap(10.w),
                  Text('Clean Architecture', style: Theme.of(context).textTheme.titleSmall),
                  const Spacer(),
                ],
              ),
              const Item(
                title: 'CodeMagic for CICD',
                asset: SvgAssets.codeMagic,
              ),
              const Item(
                title: 'Github version control',
                asset: SvgAssets.github,
              ),
              const Item(
                title: 'Bloc/Cubit for state management',
                asset: SvgAssets.bloc,
              ),
              const Item(
                title: 'GoRouter for navigation',
                asset: SvgAssets.routing,
              ),
              const Item(
                title: 'Get_it for dependency injection',
                asset: SvgAssets.dependencyInjection,
              ),
              const Item(
                title: 'TDD with Mockito',
                asset: SvgAssets.test,
              ),
              const Item(
                title: 'Rest API with http and rx_dart',
                asset: SvgAssets.http,
              ),
              ElevatedButton(
                onPressed: () => context.pop(),
                child: Text('Back to home', style: Theme.of(context).textTheme.labelMedium),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
