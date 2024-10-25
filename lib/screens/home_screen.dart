import "package:flutter/material.dart";
import "package:lab_2/shared/header/header.dart";
import "package:lab_2/shared/header/intro.dart";
import "package:lab_2/shared/search_input.dart";
import "package:lab_2/shared/section_most_recomended/section_most_recommended.dart";
import "package:lab_2/shared/section_nearest/section_nearest_barbershop.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15), 
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Header(),
                SearchInput(),
                SectionNearestBarbershop(),
                SectionMostRecommended()
              ],
            ),
          )
    ));
  }
}
