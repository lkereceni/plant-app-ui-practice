import 'package:flutter/material.dart';
import 'package:plant_app_ui_practice/constants.dart';
import 'package:plant_app_ui_practice/screens/home/components/featured_plants.dart';
import 'package:plant_app_ui_practice/screens/home/components/recommended_plants.dart';
import 'package:plant_app_ui_practice/screens/home/components/title_with_more_btn.dart';

import 'header_with_searchbar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: 'Recommended',
            onPress: () {},
          ),
          RecommendedPlants(),
          TitleWithMoreBtn(
            title: 'Featured plants',
            onPress: () {},
          ),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
