import 'package:flutter/material.dart';
import 'package:spangy/src/core/utils/constant.dart';
import 'package:spangy/src/features/onBording/presentation/onboarding_screen.dart';
import 'package:spangy/src/sample_feature/sample_item_details_view.dart';
import 'package:spangy/src/sample_feature/sample_item_list_view.dart';
import 'package:spangy/src/settings/settings_controller.dart';
import 'package:spangy/src/settings/settings_view.dart';

class RouterApp {
  RouterApp({
    required this.settingsController,
  });

  final SettingsController settingsController;

  Route? onGenerateRoute(RouteSettings routeSettings,) {
    return MaterialPageRoute<void>(
      settings: routeSettings,
      builder: (BuildContext context) {
        switch (routeSettings.name) {
          case onBoardingRoute:
            return OnBoardingScreen();
          case SettingsView.routeName:
            return SettingsView(controller: settingsController);
          case SampleItemDetailsView.routeName:
            return const SampleItemDetailsView();
          case SampleItemListView.routeName:
          default:
            return const SampleItemListView();
        }
      },
    );
  }
}
