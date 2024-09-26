import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:lab_2/shared/header/user_simple.dart";

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(top: 10),
          height: 225,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: SvgPicture.asset("assets/images/svg/hh.svg", fit: BoxFit.cover,),
                  )
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  child: SvgPicture.asset("assets/images/svg/h.svg"),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color.fromRGBO(255, 190, 129, 1.0),
                  ),
                  width: 60,
                  height: 60,
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Booking Now"),
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(54, 48, 98, 1)),
                        foregroundColor: WidgetStatePropertyAll(Colors.white),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)
                        ))
                    ),
                  )),
              Positioned(right: 0, bottom: 0, child: Image.asset("assets/images/om.png", height: 225))
            ],
          ),
        );
  }
}

