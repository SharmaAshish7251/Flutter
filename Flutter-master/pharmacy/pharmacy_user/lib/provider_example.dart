import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  //   River pod , extends with consumer Widget , basic example

  runApp(ProviderScope(child: Samriverpod()));
}

class Samriverpod extends StatelessWidget {
  const Samriverpod({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterPage(),
    );

  }
}

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(countProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counting $count'),
      ),
      body: Center(
        child: Column(
          children: [

            ElevatedButton(onPressed: ()=>ref.read(countProvider.notifier).state++, child: Text('Increment')),
          ],
        ),
      ),
    );
  }
}

// provider takes mutable values
final countProvider = StateProvider((ref)=> 0);