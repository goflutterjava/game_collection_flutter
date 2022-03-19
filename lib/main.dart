import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:game_collection_flutter/generated/l10n.dart';
import 'package:game_collection_flutter/route/PageRouteConst.dart';
import 'package:game_collection_flutter/ui/home/home_page.dart';
import 'package:game_collection_flutter/ui/sudoku/sudoku_page.dart';
import 'package:game_collection_flutter/vm/sudoku/sudoku_vm.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: "game collection",
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        initialRoute: PageRouteConst.root,
        routes: {
          PageRouteConst.root: (context) => HomePage(),
          PageRouteConst.sudoku: (context) => ChangeNotifierProvider(
            create: (context) => SudokuViewModel(),
            child: SudokuPage(),
          ),
        });
  }
}
