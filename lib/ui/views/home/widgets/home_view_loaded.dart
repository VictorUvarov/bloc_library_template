import 'package:flutter/material.dart';
import 'package:provider_immutable_state/core/models/user/user.dart';
import 'package:provider_immutable_state/generated/l10n.dart';

class HomeViewLoaded extends StatelessWidget {
  final User user;
  final int count;

  const HomeViewLoaded({
    Key key,
    @required this.user,
    @required this.count,
  })  : assert(user != null),
        assert(count != null),
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
            Text(local.homeViewCount(count)),
          ],
        ),
      ),
    );
  }
}
