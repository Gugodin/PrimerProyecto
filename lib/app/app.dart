import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:primerproyecto/config/routes/routes.dart';

class AppProyect extends ConsumerWidget {
  const AppProyect({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Proyect',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: ref.watch(routerProvider),
    );
  }
}
