import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tika/base/res/media.dart';
import 'package:tika/base/res/styles/app_styles.dart';
import 'package:tika/base/utils/all_json.dart';
import 'package:tika/base/widgets/app_column_text_layout.dart';
import 'package:tika/base/widgets/app_layoutbuilder_widget.dart';
import 'package:tika/base/widgets/ticket_view.dart';
import 'package:tika/screens/search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Tickets",
            style: AppStyles.headlineStyle1,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTabs(
            firstTab: 'Upcoming',
            secondTab: 'Previous',
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
              child: TicketView(
            ticket: ticketList[0],isColor: true,
            wholeScreen: false,
          )),

          const SizedBox(height: 1,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: AppStyles.ticketColor,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    AppColumnTextLayout(
                      topText: "FlutterDB",
                      bottomText: "Passenger",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),

                    AppColumnTextLayout(
                      topText: "5221 77739",
                      bottomText: "Passport",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),


                  ],
                ),
                const SizedBox(height: 20,),
                const AppLayoutbuilderWidget(randomDivider: 15, width: 5, isColor: false,),
                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    AppColumnTextLayout(
                      topText: "2465 777 33311",
                      bottomText: "Number of Ticket",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),

                    AppColumnTextLayout(
                      topText: "B46859",
                      bottomText: "Booking code",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),




                  ],
                ),

                const SizedBox(height: 20,),
                const AppLayoutbuilderWidget(randomDivider: 15, width: 5, isColor: false,),
                const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(AppMedia.visaCard, scale: 11,),
                            Text("**** 7771", style: AppStyles.headlineStyle3,)
                          ],
                        ),
                        Text("Payment method", style: AppStyles.headlineStyle4,)
                      ],
                    ),
                    const AppColumnTextLayout(
                      topText: "\$249.99",
                      bottomText: "Price",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),




                  ],
                ),




              ],
            ),

          )
        ],
      ),
    );
  }
}
