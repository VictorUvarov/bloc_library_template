import 'package:bloc_library_template/core/constants/widget_keys.dart';
import 'package:bloc_library_template/generated/l10n.dart';
import 'package:bloc_library_template/ui/views/home/bloc/home_view_bloc.dart';
import 'package:bloc_library_template/ui/views/home/widgets/home_view_content.dart';
import 'package:bloc_library_template/ui/views/home/widgets/home_view_refresh_button.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../data/mock.dart';

class MockHomeViewBloc extends MockBloc<HomeViewEvent, HomeViewState>
    implements HomeViewBloc {}

void main() {
  HomeViewBloc homeViewBloc;

  setUpAll(() {
    homeViewBloc = MockHomeViewBloc();
  });

  group('HomeViewContent', () {
    testWidgets('shows loading view when HomeViewState.loading',
        (tester) async {
      when(homeViewBloc.state).thenReturn(HomeViewState.loading());

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BlocProvider.value(
              value: homeViewBloc,
              child: HomeViewContent(),
            ),
          ),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            S.delegate,
          ],
        ),
      );
      await tester.pump();
      expect(find.byKey(WidgetKeys.loading), findsOneWidget);
      expect(find.byKey(WidgetKeys.loaded), findsNothing);
      expect(find.byKey(WidgetKeys.error), findsNothing);
    });
    testWidgets('shows loaded view when HomeViewState.loaded', (tester) async {
      when(homeViewBloc.state).thenReturn(
        HomeViewState.loaded(user: MOCK_USER),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BlocProvider.value(
              value: homeViewBloc,
              child: HomeViewContent(),
            ),
          ),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            S.delegate,
          ],
        ),
      );
      await tester.pump();
      expect(find.byKey(WidgetKeys.loading), findsNothing);
      expect(find.byKey(WidgetKeys.loaded), findsOneWidget);
      expect(find.byKey(WidgetKeys.error), findsNothing);
    });

    testWidgets('shows error view when HomeViewState.error', (tester) async {
      when(homeViewBloc.state).thenReturn(HomeViewState.error());

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BlocProvider.value(
              value: homeViewBloc,
              child: HomeViewContent(),
            ),
          ),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            S.delegate,
          ],
        ),
      );
      await tester.pump();
      expect(find.byKey(WidgetKeys.loading), findsNothing);
      expect(find.byKey(WidgetKeys.loaded), findsNothing);
      expect(find.byKey(WidgetKeys.error), findsOneWidget);
    });
  });

  group('RefreshButton', () {
    testWidgets('adds HomeViewEvent.reloadUser event to bloc', (tester) async {
      when(homeViewBloc.state)
          .thenReturn(HomeViewState.loaded(user: MOCK_USER));

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: homeViewBloc,
            child: Scaffold(
              body: Container(),
              floatingActionButton: HomeViewRefreshButton(),
            ),
          ),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            S.delegate,
          ],
        ),
      );
      await tester.pump();
      var refreshButton = find.byKey(WidgetKeys.refresh_button);
      expect(refreshButton, findsOneWidget);

      await tester.tap(refreshButton);
      await tester.pumpAndSettle();

      verify(homeViewBloc.add(HomeViewEvent.reloadUser())).called(1);
    });
  });
}
