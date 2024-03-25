// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:primerproyecto/config/providers/provider.dart';
import 'package:primerproyecto/config/routes/routes.gr.dart';
import 'package:primerproyecto/ui/common/custom_card/custom_card.dart';

import '../../../domain/domain.dart';

@RoutePage()
class CatsView extends ConsumerWidget {
  // final Future<List<CatDataModel>?> catsInView;
  const CatsView({
    super.key,
    // required this.catsInView,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final catsInView = ref.watch(catProvider).getCatsWithLimit(20);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cats View',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: theme.primaryColor,
      ),
      body: FutureBuilder(
        future: catsInView,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final listData = snapshot.data;

            if (listData == null) {
              return const Center(
                child: Text('Algo malo ocurrio con el servicio.'),
              );
            }
            if (listData.isEmpty) {
              return const Center(
                child: Text('No hay gatos.🥲'),
              );
            }

            return Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                itemCount: listData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
                itemBuilder: (context, index) => CustomCard(
                  onTap: () => context.router
                      .push(CatDescriptionView(cat: listData[index])),
                  urlImage: listData[index].imageDescription.imageURL,
                  typeCard: TypeCustomCard.VERTICAL,
                  title: listData[index].attributes.name,
                  subTitle: listData[index].attributes.description,
                ),
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
