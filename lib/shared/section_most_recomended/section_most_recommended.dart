import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";
import "package:lab_2/moks/barbershops.dart";
import "package:lab_2/shared/barber_card.dart";

import "../barber_big_card.dart";

class SectionMostRecommended extends StatefulWidget {
  const SectionMostRecommended({super.key});

  @override
  State<SectionMostRecommended> createState() => _SectionMostRecommendedState();
}

class _SectionMostRecommendedState extends State<SectionMostRecommended> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Most Recommended",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
              )),
          CarouselSlider(
            options: CarouselOptions(
                height: 295,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: barbershops.map((b) => BarberBigCard(b)).toList(),
          ),
          SizedBox(height: 10),
          // Indicators (Dots)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: barbershops.map((url) {
              int index = barbershops.indexOf(url);
              return Container(
                width: _current == index ? 20 : 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: _current == index
                      ? Color.fromRGBO(54, 48, 98, 0.9) // Active dot color
                      : Color.fromRGBO(0, 0, 0, 0.4), // Inactive dot color
                ),
              );
            }).toList(),
          ),

          ListView.builder(
            shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
            return BarberCard(barbershops[index]);
          })
        ],
      ),
    );
  }
}
