import 'package:bloc_library_template/core/constants/widget_keys.dart';
import 'package:bloc_library_template/ui/views/home/bloc/home_view_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewRefreshButton extends StatelessWidget {
  const HomeViewRefreshButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      key: WidgetKeys.refresh_button,
      child: Icon(Icons.refresh),
      onPressed: () {
        context.bloc<HomeViewBloc>().add(HomeViewEvent.reloadUser());
      },
    );
  }
}
