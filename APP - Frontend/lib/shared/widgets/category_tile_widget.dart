import 'package:flutter/material.dart';

class CategoryTileWidget extends StatelessWidget {
  final Color background;
  final String categoryName;
  final String imageName;
  const CategoryTileWidget({
    Key? key,
    required this.background,
    required this.categoryName,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double largura = 100;
    double altura = 100;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: (() {
          print('object');
        }),
        child: SizedBox(
          width: largura,
          height: altura,
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: altura * 0.25),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        color: background,
                        height: altura * 0.35,
                      ),
                    ),
                  ),
                  Container(
                    child: Image.asset("assets/images/$imageName.png"),
                    alignment: Alignment.bottomCenter,
                    height: altura * 0.6,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(categoryName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
