import 'package:new_architecture/services/epoch_service.dart';
import 'package:new_architecture/services/factory_service.dart';
import 'package:new_architecture/services/information_service.dart';
import 'package:new_architecture/ui/bottom_nav/bottom_nav_example.dart';
import 'package:new_architecture/ui/bottom_nav/favorites/favorites_navigator.dart';
import 'package:new_architecture/ui/bottom_nav/favorites/favorites_nested_view.dart';
import 'package:new_architecture/ui/bottom_nav/favorites/favorites_nested_viewmodel.dart';
import 'package:new_architecture/ui/bottom_nav/favorites/favorites_view.dart';
import 'package:new_architecture/ui/bottom_nav/favorites/favorites_viewmodel.dart';
import 'package:new_architecture/ui/bottom_nav/history/history_viewmodel.dart';
import 'package:new_architecture/ui/details/details_view.dart';
import 'package:new_architecture/ui/form/example_form_view.dart';
import 'package:new_architecture/ui/home/home_view.dart';
import 'package:new_architecture/ui/nonreactive/nonreactive_view.dart';
import 'package:new_architecture/ui/stream_view/stream_counter_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_crashlytics/stacked_crashlytics.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: BottomNavExample, initial: true),
    MaterialRoute(page: FavoritesView),
    MaterialRoute(page: FavoritesNavigator, children: [
      MaterialRoute(page: FavoritesView, initial: true),
      MaterialRoute(page: FavoritesNestedView),
    ]),

    MaterialRoute(page: StreamCounterView),
    CupertinoRoute(page: DetailsView),
    // TODO: Change the name of the FormView to avoid type clashing
    MaterialRoute(page: ExampleFormView),
    CustomRoute(
      page: NonReactiveView,
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
  ],
  dependencies: [
    // Lazy singletons
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    // LazySingleton(
    //   classType: InformationService,
    //   dispose: disposeInformationService,
    // ),
    LazySingleton(
        classType: NavigationService, environments: {Environment.dev}),
    LazySingleton(classType: EpochService),
    LazySingleton(
      classType: ThemeService,
      resolveUsing: ThemeService.getInstance,
    ),
    LazySingleton(classType: InformationService),
    FactoryWithParam(classType: FactoryService),
    // singletons
    Singleton(classType: HistoryViewModel),
    Singleton(classType: FavoritesNavigator),
    Singleton(classType: FavoritesViewModel),
    Singleton(classType: FavoritesNestedViewModel),
  ],
  logger: StackedLogger(),
  locatorName: 'exampleLocator',
  locatorSetupName: 'setupExampleLocator',
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
