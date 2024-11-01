import 'package:firebase_core/firebase_core.dart';
import 'package:stu_teach/common/di/injection.dart';
import 'package:stu_teach/common/extensions/theme_extensions.dart';
import 'package:stu_teach/common/gen/assets.gen.dart';
import 'package:stu_teach/common/gen/strings.dart';
import 'package:stu_teach/common/router/app_router.dart';
import 'package:stu_teach/common/utils/fixed_csv_asset_loader.dart';
import 'package:stu_teach/common/widgets/display/display_widget.dart';
import 'package:stu_teach/firebase_options.dart';
import 'package:stu_teach/presentation/main/cubit/main_cubit.dart';
import 'package:stu_teach/presentation/main/cubit/main_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/base/base_builder.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await FirebaseAppCheck.instance.activate(
  //   androidProvider: AndroidProvider.debug,
  //   appleProvider: AppleProvider.debug,
  // );
  await configureDependencies();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (value) => runApp(
      EasyLocalization(
        supportedLocales: Strings.supportedLocales,
        path: Assets.localization.translations,
        fallbackLocale: Strings.supportedLocales.first,
        startLocale: Strings.supportedLocales.first,
        assetLoader: FixedCsvAssetLoader(),
        child: const MyApp(),
      ),
    ),
  );

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MainCubit>(),
      child: BaseBuilder<MainCubit, MainBuildable, MainListenable>(
        properties: (buildable) => [buildable.themeMode],
        builder: (context, state) {
          return DisplayWidget(
            child: MaterialApp.router(
              title: 'StuTeach',
              debugShowCheckedModeBanner: false,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              routerConfig: getIt<AppRouter>().config(),
              color: context.colors.primary,
              locale: context.locale,
              theme: context.lightTheme,
              darkTheme: context.darkTheme,
              themeMode: state.themeMode ? ThemeMode.light : ThemeMode.dark,
            ),
          );
        },
      ),
    );
  }
}
