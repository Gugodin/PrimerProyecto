import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:primerproyecto/ui/common/custom_horizontal_card/custom_card.dart';

@RoutePage()
class HomeApp extends ConsumerWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Firts Proyect',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: CustomHorizontalCard(),
      ),
    );
  }
}
