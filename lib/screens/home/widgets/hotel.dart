import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tika/base/res/media.dart';
import 'package:tika/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8.0),
      width: size.width*0.6,
      height: 350,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
              decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit:BoxFit.cover,
                  image: AssetImage(
                    "assets/images/${hotel['image']}"
                  )
                )
              ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text( hotel['place'],

            style: AppStyles.headlineStyle1.copyWith(color:AppStyles.kakiColor),

            ),
          ),


          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel['destination'],
              style: AppStyles.headlineStyle1.copyWith(color:AppStyles.kakiColor),

            ),
          ),

            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
    "\$${hotel['price']}/night",
                style: AppStyles.headlineStyle3.copyWith(color: Colors.white),

              ),
            )


        ],
      ),

    );
  }
}
