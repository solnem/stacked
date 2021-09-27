import 'package:flutter/material.dart';
import 'package:new_architecture/app/app.locator.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import 'favorites_nested_viewmodel.dart';

class FavoritesNestedView extends StatelessWidget {
  const FavoritesNestedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FavoritesNestedViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () => viewModel.incrementCounter(),
          ),
          body: Center(
              child: Text(
            'Nested: ' + viewModel.counter.toString(),
            style: TextStyle(fontSize: 30),
          ))),
      viewModelBuilder: () => exampleLocator<FavoritesNestedViewModel>(),
      onModelReady: (viewModel) => viewModel.setCounterTo999(),
      disposeViewModel: false,
      fireOnModelReadyOnce: true,
    );
  }
}
