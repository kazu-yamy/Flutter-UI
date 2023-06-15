import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../provider/counter.dart';

class AddButton extends HookConsumerWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () => {ref.read(countProvider.notifier).increment()},
      child: const Icon(Icons.add),
    );
  }
}
