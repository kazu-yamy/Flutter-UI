import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../provider/counter.dart';

class RemoveButton extends HookConsumerWidget {
  const RemoveButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () => {ref.read(countProvider.notifier).decrement()},
      child: const Icon(Icons.remove),
    );
  }
}
