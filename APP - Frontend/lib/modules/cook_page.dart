import 'package:flutter/material.dart';
import 'package:ifood_hackathon/shared/themes/app_colors.dart';

import '../shared/themes/text_styles.dart';

class Cook_page extends StatelessWidget {
  const Cook_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*floatingActionButton: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.red,
          minimumSize: Size(88, 36),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
        ),
        child: Text("Começar",
            style: TextStyle(
              color: AppColors.primaryWhite,
              fontFamily: 'gilroy-heavy',
              fontSize: 20,
            )),
        onPressed: () {},
      ),
      */
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/produtos/miojo.jpg",
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                  width: double.maxFinite,
                  height: 300,
                ),
                Text(
                  "Miojo com ovo pochê",
                  style: TextStyles.profileSubtitle,
                ),
                Divider(
                  color: Colors.black54,
                ),
                Text(
                  "Você vai ultilizar:",
                  style: TextStyles.description,
                ),
                tags(),
                Divider(
                  color: Colors.black54,
                ),
                Text(
                  "Ingredientes: \n2 ovos, 80g de miojo(1 pacote), agua, sal, pimenta-do-reino",
                  style: TextStyles.description,
                ),
                Text(
                  'Preparo do ovos: \nEm um recipiente, quebre o ovo e reserve.\nEm uma panela, coloque 1 litro de água e o vinagre e deixe ferver.\nAbaixe o fogo, mexa a água até formar um "redemoinho" e coloque o ovo no meio.\nDeixe cozinhar por 3 minutos, retire e resfrie em água fria para uma gema bem mole.\nTempere com o sal e a pimenta e sirva a seguir.\n',
                  style: TextStyles.description,
                ),
                Text(
                  'Preparo do miojo: \n Em uma panela\nQuando levantar as bolhas coloque o macarrarão instantaneo dentro\nAdicione o tempero\nEspere 3 min e junte tudo\n',
                  style: TextStyles.description,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class tags extends StatelessWidget {
  const tags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        "fogão",
        style: TextStyle(color: Colors.white),
      ),
      avatar: Icon(Icons.check),
      backgroundColor: Colors.red,
    );
  }
}
