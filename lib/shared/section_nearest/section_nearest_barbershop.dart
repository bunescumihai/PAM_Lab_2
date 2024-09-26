import "package:flutter/material.dart";
import "package:lab_2/shared/barber_card.dart";

import "../../moks/barbershops.dart";

class SectionNearestBarbershop extends StatelessWidget {
  const SectionNearestBarbershop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(margin: EdgeInsets.only(top: 10, bottom: 10) , child: Text("Nearest Barbershop", style: Theme.of(context).textTheme.titleMedium, textAlign: TextAlign.start, overflow: TextOverflow.ellipsis,)),
          // Expanded ListView to show the barber shops
          ListView.builder(
            shrinkWrap: true, // Add this to prevent unbounded height errors
            itemCount: barbershops.length,
            itemBuilder: (context, index) {
              return BarberCard(barbershops[index]);
            },
          ),
          Center(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                side: BorderSide(
                  color: Color(0xFF362F62),
                  width: 2,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {

              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Color(0xFF362F62),
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.open_in_new,
                    color: Color(0xFF362F62), // Icon color
                    size: 18, // Adjust icon size
                  ),
                ],
              ),
            ),
          ),
        ],
    );
  }
}
