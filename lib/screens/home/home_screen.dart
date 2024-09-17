import 'dart:ui';

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tika/base/res/media.dart';
import 'package:tika/base/res/styles/app_styles.dart';
import 'package:tika/base/utils/all_json.dart';
import 'package:tika/base/utils/app_routes.dart';
import 'package:tika/base/widgets/app_double_text.dart';
import 'package:tika/base/widgets/ticket_view.dart';
import 'package:tika/screens/home/widgets/hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scrollabele effect
      backgroundColor: AppStyles.bgColor,

      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            // color: Colors.grey,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning,", style: AppStyles.headlineStyle3),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Book Tickets.", style: AppStyles.headlineStyle1),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFF4F6FD)),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular),
                      Text("Search")
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all', func: () {  },

                ),
                 const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                    .take(3)
                        .map((singleTicket) => TicketView(ticket:singleTicket, wholeScreen: true,))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View all',
                  func: (){
                    print("Hello there.");
                  },
                ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList

                    .map((singleHotel) =>
                    Hotel(hotel: singleHotel))
                    .toList(),

              ),
            ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

