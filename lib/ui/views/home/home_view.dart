import 'package:bloc_library_template/ui/views/home/bloc/home_view_bloc.dart';
import 'package:bloc_library_template/ui/views/home/widgets/home_view_content.dart';
import 'package:bloc_library_template/ui/views/home/widgets/home_view_refresh_button.dart';
import 'package:flutter/material.dart';
import 'package:bloc_library_template/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeViewBloc()..add(HomeViewEvent.loadUser()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).homeViewTitle),
        ),
        body: HomeViewContent(),
        floatingActionButton: HomeViewRefreshButton(),
      ),
    );
  }
}
