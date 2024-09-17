import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tika/base/res/media.dart';
import 'package:tika/base/res/styles/app_styles.dart';
import 'package:tika/base/widgets/app_double_text.dart';
import 'package:tika/screens/search/widgets/app_text_icon.dart';
import 'package:tika/screens/search/widgets/app_ticket_tabs.dart';
import 'package:tika/screens/search/widgets/find_tickets.dart';
import 'package:tika/screens/search/widgets/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),

        children: [


          const SizedBox(height: 40,),
          Text(
              "What are\n you looking for?",
              style: AppStyles.headlineStyle1.
              copyWith(
                  fontSize: 35
              )
          ),

          const SizedBox(height: 20,),
          const AppTicketTabs(firstTab: 'All Tickets', secondTab: 'Hotels',),
          const SizedBox(height: 25,),
          const AppTextIcon(icon: Icons.flight_takeoff_rounded,text: "Departure",),
          const SizedBox(height: 20,),
          const AppTextIcon(icon: Icons.flight_land_rounded,text: "Arrival",),
          const SizedBox(height: 25,),
          const FindTickets(),
          const SizedBox(height: 40,),

          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View all', func: () {  },

          ),
          const SizedBox(height: 15,) ,
          const TicketPromotion(),





        ],

      )
      ,
    );
  }
}
