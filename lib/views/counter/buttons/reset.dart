import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../func/toast.dart';
import '../../../provider/counter.dart';

class ResetButton extends HookConsumerWidget {
  const ResetButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onLongPress: () => {ref.read(countProvider.notifier).reset()},
      child: const TapButton(),
    );
  }
}

class TapButton extends StatelessWidget {
  const TapButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Text('0'),
      onPressed: () => {longPressToast()},
    );
  }
}
