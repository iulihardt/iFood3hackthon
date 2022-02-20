import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ifood_hackathon/modules/cook_page.dart';
import 'package:ifood_hackathon/shared/themes/text_styles.dart';

class IchefTab extends StatefulWidget {
  const IchefTab({Key? key}) : super(key: key);

  @override
  _IchefTabState createState() => _IchefTabState();
}

class _IchefTabState extends State<IchefTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Para você:", style: TextStyles.profileTitle),
          InkWell(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Image.asset(
                    "assets/produtos/miojo.jpg",
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                    width: double.maxFinite,
                    height: 300,
                  ),
                ),
                Text(
                  "Miojo com ovos pochê",
                  style: TextStyles.profileSubtitle,
                ),
                Divider(),
                Text(
                  "Prato simples e facil de fazer, para resignificar sua dispensa",
                  style: TextStyles.description,
                )
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Cook_page();
                }),
              );
            },
          )
        ],
      ),
    );
  }
}
