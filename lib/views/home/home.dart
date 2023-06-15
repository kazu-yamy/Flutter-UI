import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: <Widget>[
        Center(
          child: Text("test message"),
        ),
      ],
    );
  }
}
