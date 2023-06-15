import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ui/views/home/home.dart';
import './views/counter/counter.dart';

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
      home: const MainAppPage(),
    );
  }
}

final selectedIndexProvider = StateProvider((ref) => 0);
final displayProvider = StateProvider((ref) => [
      const HomePage(),
      const CounterPage(),
    ]);

class MainAppPage extends HookConsumerWidget {
  const MainAppPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Flutter UI"),
        elevation: 0.0,
      ),
      body: ref.watch(displayProvider)[ref.watch(selectedIndexProvider)],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.numbers), label: 'count'),
        ],
        currentIndex: ref.watch(selectedIndexProvider),
        elevation: 0.0,
        onTap: (int index) {
          ref.read(selectedIndexProvider.notifier).update((state) => index);
        },
        fixedColor: Colors.red,
      ),
    );
  }
}
