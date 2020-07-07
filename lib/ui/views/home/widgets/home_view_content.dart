import 'package:bloc_library_template/core/constants/widget_keys.dart';
import 'package:bloc_library_template/ui/views/home/bloc/home_view_bloc.dart';
import 'package:bloc_library_template/ui/views/home/widgets/home_view_error.dart';
import 'package:bloc_library_template/ui/views/home/widgets/home_view_loaded.dart';
import 'package:bloc_library_template/ui/views/home/widgets/home_view_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewContent extends StatelessWidget {
  const HomeViewContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewBloc, HomeViewState>(
      bloc: context.bloc<HomeViewBloc>(),
      builder: (context, state) {
        return state.map(
          loading: (_) => HomeViewLoading(
            key: WidgetKeys.loading,
          ),
          loaded: (loaded) => HomeViewLoaded(
            key: WidgetKeys.loaded,
            user: loaded.user,
          ),
          error: (error) => HomeViewError(
            key: WidgetKeys.error,
          ),
        );
      },
    );
  }
}
