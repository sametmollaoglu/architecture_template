import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template/product/init/config/app_environment.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/navigation/app_router.dart';
import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:kartal/kartal.dart';

part 'widget/home_app_bar.dart';

@RoutePage()
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomNetworkImage(
              imageUrl: 'https://picsum.photos/250?image=9'),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Assets.lottie.animFire.lottie(package: 'gen'),
          ),
          ElevatedButton(onPressed: () {}, child: Text(AppEnvironment.apiKey)),
          const Text('Change Language'),
          ElevatedButton(
            onPressed: () {
              ProductLocalization.updateLanguage(
                context: context,
                value: Locales.tr,
              );
            },
            child: Text(
              LocaleKeys.general_button_save,
              style: context.general.textTheme.bodySmall,
            ).tr(args: ['argument']),
          ),
          ElevatedButton(
            onPressed: () async {
              final response =
                  await context.router.push(HomeDetailRoute(id: '1'));
            },
            child: const Text('route'),
          ),
        ],
      ),
    );
  }
}
