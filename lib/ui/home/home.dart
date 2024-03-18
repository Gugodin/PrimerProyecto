import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/providers/provider.dart';

class HomeApp extends ConsumerWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cats = ref.watch(catProvider);
    cats.getCatsWithLimit(5);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Firts Proyect',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
