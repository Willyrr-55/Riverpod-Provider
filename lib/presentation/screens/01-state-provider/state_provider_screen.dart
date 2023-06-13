import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final textStyles = Theme.of(context).textTheme; 
    final name = ref.watch(randomNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
      ),
      body: Center(
        child: Text(name, style: textStyles.titleMedium,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          ref.invalidate(randomNameProvider);
          // ref.read(randomNameProvider.notifier).update((state) => RandomNames(zone))
        },
        child: const Icon(Icons.refresh_rounded)
      ),
    );
  }
}