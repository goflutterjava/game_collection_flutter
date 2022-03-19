import 'package:flutter/material.dart';
import 'package:game_collection_flutter/generated/l10n.dart';
import 'package:game_collection_flutter/vm/sudoku/sudoku_vm.dart';
import 'package:provider/provider.dart';

class SudokuPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SudokuPageState();
  }
}

class _SudokuPageState extends State<SudokuPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<SudokuViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).sudoku),
        ),
    );
  }
}
