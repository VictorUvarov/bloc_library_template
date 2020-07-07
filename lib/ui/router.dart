import 'package:auto_route/auto_route_annotations.dart';
import 'package:bloc_library_template/ui/views/details/details_view.dart';
import 'package:bloc_library_template/ui/views/home/home_view.dart';

@AdaptiveAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    AutoRoute(page: HomeView, initial: true),
    AutoRoute(page: DetailsView),
  ],
)
class $Router {}
