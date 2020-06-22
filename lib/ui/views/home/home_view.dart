import 'package:flutter/material.dart';
import 'package:provider_immutable_state/core/constants/widget_keys.dart';
import 'package:provider_immutable_state/generated/l10n.dart';
import 'package:provider_immutable_state/ui/views/home/home_view_model.dart';
import 'package:provider_immutable_state/ui/views/home/widgets/home_view_error.dart';
import 'package:provider_immutable_state/ui/views/home/widgets/home_view_loaded.dart';
import 'package:provider_immutable_state/ui/views/home/widgets/home_view_loading.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel()..init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).homeViewTitle),
        ),
        body: model.state.map(
          loading: (_) => HomeViewLoading(
            key: WidgetKeys.loading,
          ),
          loaded: (loaded) => HomeViewLoaded(
            key: WidgetKeys.loaded,
            user: loaded.user,
            count: loaded.count,
          ),
          error: (error) => HomeViewError(
            key: WidgetKeys.error,
            message: error.message,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          key: WidgetKeys.refresh_button,
          child: Icon(Icons.refresh),
          onPressed: model.init,
        ),
      ),
    );
  }
}
