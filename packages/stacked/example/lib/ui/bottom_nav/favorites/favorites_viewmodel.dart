import 'package:new_architecture/app/app.locator.dart';
import 'package:new_architecture/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FavoritesViewModel extends BaseViewModel {
  NavigationService _navigationService = exampleLocator<NavigationService>();

  int _counter = 0;
  int get counter => _counter;
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void setCounterTo999() {
    _counter = 999;
    notifyListeners();
  }

  void toNestedView() {
    _navigationService.navigateTo(FavoritesNavigatorRoutes.favoritesNestedView, id: 1);
  }
}
