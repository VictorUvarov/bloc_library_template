import 'package:bloc_library_template/core/repositories/users/users_repository.dart';
import 'package:bloc_library_template/ui/views/details/details_view.dart';
import 'package:bloc_library_template/ui/views/home/bloc/home_view_bloc.dart';
import 'package:bloc_library_template/ui/views/home/widgets/home_view_content.dart';
import 'package:bloc_library_template/ui/views/home/widgets/home_view_refresh_button.dart';
import 'package:flutter/material.dart';
import 'package:bloc_library_template/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => HomeView(),
      settings: RouteSettings(name: 'HomeView'),
    );
  }

  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeViewBloc(
        usersRepository: context.repository<UsersRepository>(),
      )..add(HomeViewEvent.loadUser()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).homeViewTitle),
          actions: <Widget>[
            _ShowDetailsButton(),
          ],
        ),
        body: HomeViewContent(),
        floatingActionButton: HomeViewRefreshButton(),
      ),
    );
  }
}

class _ShowDetailsButton extends StatelessWidget {
  const _ShowDetailsButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.dashboard),
      onPressed: () {
        Navigator.of(context).push(DetailsView.route());
      },
    );
  }
}
