import 'package:flutter/material.dart';
import 'package:new_architecture/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FavoritesNavigator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: ExtendedNavigator(router: FavoritesNavigatorRouter(), navigatorKey: StackedService.nestedNavigationKey(1)));
  }
}