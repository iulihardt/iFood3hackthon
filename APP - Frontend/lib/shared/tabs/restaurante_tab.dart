import 'package:flutter/material.dart';

import '../themes/text_styles.dart';
import '../widgets/banner_tile_widget.dart';
import '../widgets/category_tile_widget.dart';
import '../widgets/chips_widget.dart';

class RestauranteTab extends StatefulWidget {
  const RestauranteTab({Key? key}) : super(key: key);

  @override
  State<RestauranteTab> createState() => _RestauranteTabState();
}

class _RestauranteTabState extends State<RestauranteTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                Chips(
                  label: "Entrega grátis",
                ),
                Chips(
                  label: "Entrega grátis",
                ),
                Chips(
                  label: "Entrega grátis",
                ),
                Chips(
                  label: "Entrega grátis",
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  const CategoryTileWidget(
                    background: Colors.green,
                    categoryName: "Mercado",
                    imageName: "mercado",
                  ),
                  const CategoryTileWidget(
                    background: Colors.red,
                    categoryName: "Lanches",
                    imageName: "lanches",
                  ),
                  CategoryTileWidget(
                    background: Colors.pinkAccent.shade100,
                    categoryName: "Mexicana",
                    imageName: "mexicana",
                  ),
                  const CategoryTileWidget(
                    background: Colors.purple,
                    categoryName: "Pizza",
                    imageName: "pizza",
                  ),
                  const CategoryTileWidget(
                    background: Colors.yellow,
                    categoryName: "Brasileira",
                    imageName: "brasileira",
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: const [
                  BannerTile(),
                  BannerTile(),
                  BannerTile(),
                  BannerTile(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Últimas lojas",
                  style: TextStyles.sectionTitle,
                ),
                InkWell(
                  child: Text("Ver mais", style: TextStyles.sectionMore),
                  onTap: () {
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
