import 'package:bloc_library_template/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeViewError extends StatelessWidget {
  const HomeViewError({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(S.of(context).homeViewError),
        ],
      ),
    );
  }
}
