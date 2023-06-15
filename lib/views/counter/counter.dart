import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../provider/counter.dart';
import './buttons/add.dart';
import './buttons/remove.dart';
import './buttons/reset.dart';

class CounterPage extends HookConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(ref.watch(countProvider).toString()),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[AddButton(), ResetButton(), RemoveButton()],
          ),
        ],
      ),
    );
  }
}
