import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:lab_2/main.dart";
import "package:lab_2/models/barbershop.dart";

class BarberCard extends StatelessWidget {
  BarberCard(this._barbershop, {super.key});

  final Barbershop _barbershop;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 6),
            width: 100,
            height: 100,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  _barbershop.imagePath,
                  fit: BoxFit.cover,
                )),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 4),
                      child: Text(
                        _barbershop.title,
                        style: Theme.of(context).textTheme.titleSmall,
                        textAlign: TextAlign.start,
                      )),
                  Container(
                    margin: EdgeInsets.only(bottom: 4),
                    child: Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.locationDot,
                          size: 13,
                          color: Color.fromRGBO(134, 131, 161, 1),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 3),
                            child: Text(_barbershop.location,
                                style: Theme.of(context).textTheme.labelSmall)),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.solidStar,
                        size: 13,
                        color: Color.fromRGBO(134, 131, 161, 1),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 3),
                          child: Text(_barbershop.rating.toStringAsFixed(1),
                              style: Theme.of(context).textTheme.labelSmall)),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
