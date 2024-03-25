import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:primerproyecto/config/routes/routes.dart';

class AppProyect extends ConsumerWidget {
   AppProyect({super.key});

  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Proyect',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: appRouter.config(),
    );
  }
}
