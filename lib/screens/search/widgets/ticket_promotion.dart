import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tika/base/res/media.dart';
import 'package:tika/base/res/styles/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          width: size.width * 0.42,
          // height: 445,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.indigo.shade200,
                    blurRadius: 1,
                    spreadRadius: 2)
              ]),
          child: Column(children: [
            Container(
              height: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(AppMedia.planeSit))),
            ),
            Text(
              "20% discount on the early booking of this flight. Dont miss",
              style: AppStyles.headlineStyle2,
            )
          ]),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: size.width * 0.44,
                  height: 190,
                  decoration: BoxDecoration(
                      color: const Color(0xFF3ABBB8),
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Discount\nFor Survey",
                          style: AppStyles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.white)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Take Survey about our services and get a discount",
                          style: AppStyles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                              fontSize: 18)),
                    ],
                  ),
                ),
                Positioned(
                  right: -50,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: AppStyles.circleColor)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: size.width * 0.44,
              height: 210,
              decoration: BoxDecoration(
                  color: const Color(0xFFEC6545),
                  borderRadius: BorderRadius.circular(18)),
              child: Column(

                children: [

                  Text(

                    "Take Love",
                    style: AppStyles.headlineStyle2.copyWith(
                      color: Colors.white,

                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
