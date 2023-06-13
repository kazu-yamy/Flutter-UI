import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(title: const Text("Flutter UI")),
          body: const MainAppPage(),
        ));
  }
}

final countProvider = StateProvider((ref) => 0);

class MainAppPage extends HookConsumerWidget {
  const MainAppPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: <Widget>[
      const SizedBox(height: 20),
      SizedBox(child: Text(ref.watch(countProvider).toString())),
      const SizedBox(height: 20),
      SizedBox(
        child: FloatingActionButton(
          onPressed: () => {
            ref.read(countProvider.notifier).update((state) => state + 1),
          },
          child: const Icon(Icons.add),
        ),
      ),
    ]);
  }
}
