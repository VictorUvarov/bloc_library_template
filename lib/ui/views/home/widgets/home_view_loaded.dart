import 'package:bloc_library_template/core/models/user/user.dart';
import 'package:bloc_library_template/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeViewLoaded extends StatelessWidget {
  final User user;

  const HomeViewLoaded({
    Key key,
    @required this.user,
  })  : assert(user != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var local = S.of(context);

    return Center(
      child: ListTile(
        title: Text('${local.homeViewId}: ${user.id}'),
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('${local.homeViewCreated}: ${user.created}'),
            if (user.fullName.isNotEmpty)
              Text('${local.homeViewFullName}: ${user.fullName}'),
          ],
        ),
      ),
    );
  }
}
