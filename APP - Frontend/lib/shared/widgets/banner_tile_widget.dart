import 'package:flutter/material.dart';

class BannerTile extends StatelessWidget {
  const BannerTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            alignment: Alignment.bottomCenter,
            color: Colors.blue,
            //child: Image.asset("name"),
            width: MediaQuery.of(context).size.width * 0.85,
            height: 150,
          ),
        ),
      ),
    );
  }
}
