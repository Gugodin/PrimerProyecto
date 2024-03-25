import 'package:auto_route/auto_route.dart' as _i3;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:primerproyecto/config/providers/provider.dart';
import 'package:primerproyecto/config/routes/routes.gr.dart';
import 'package:primerproyecto/ui/common/custom_card/custom_card.dart';

@RoutePage()
class HomeApp extends ConsumerWidget {
  HomeApp({super.key});

    final bodyList = [
      CardBody(
          title: 'CatsAPI',
          subtitle: 'Api en la que practicamos el HELPER.',
          page: const CatsView(),
              // CatsView(catsInView: ref.watch(catProvider).getCatsWithLimit(20)),
          urlImage:
              'https://cdn.pixabay.com/photo/2017/09/01/00/15/png-2702691_1280.png'),
    ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Firts Proyect',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => CustomCard(
          urlImage: bodyList[index].urlImage,
          typeCard: bodyList[index].typeCard,
          title: bodyList[index].title,
          subTitle: bodyList[index].subtitle,
          onTap: () => context.router.push(bodyList[index].page),
        ),
        itemCount: bodyList.length,
      ),
      // body: Center(
      //     child: CustomCard(
      //   onTap: () {
      //     // context.router.pushNamed('/catsView');
      //     context.router.push(const CatsView());
      //   },
      //   subTitle: 'Api en la que practicamos el HELPER.',
      //   title: 'CatsAPI',
      //   urlImage:
      //       'https://cdn.pixabay.com/photo/2017/09/01/00/15/png-2702691_1280.png',
      //   typeCard: TypeCustomCard.HORIZONTAL,
      // )),
    );
  }
}

class CardBody {
  String title;
  String subtitle;
  String? urlImage;
  TypeCustomCard typeCard;
  _i3.PageRouteInfo page;

  CardBody(
      {required this.title,
      required this.subtitle,
      this.urlImage,
      this.typeCard = TypeCustomCard.HORIZONTAL,
      required this.page});
}
