import 'package:flutter/material.dart';
import 'package:food_ui_kit/constants.dart';
import 'package:food_ui_kit/demoData.dart';

import 'components/image_carousel.dart';
import 'components/restaurant_info_medium_card.dart';
import 'components/selection_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              floating: true,
              backgroundColor: Colors.white,
              elevation: 0,
              title: Column(children: [
                Text(
                  'Deliver To '.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: kActiveColor),
                ),
                Text(
                  'Las Vegas',
                  style: TextStyle(color: Colors.black),
                )
              ]),
              actions: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Filter',
                      style: TextStyle(color: Colors.black),
                    ))
              ]),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SelectionTitle(
                title: "Featured Partners",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    demoMediumCardData.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(left: defaultPadding),
                          child: RestaurantInfoMediumCard(
                            image: demoMediumCardData[index]['image'],
                            title: demoMediumCardData[index]['name'],
                            rating: demoMediumCardData[index]['rating'],
                            deliveryTime: demoMediumCardData[index]
                                ['delivertTime'],
                            location: demoMediumCardData[index]['location'],
                            press: () {},
                          ),
                        )),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: Image.asset("assets/images/Banner.png"),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SelectionTitle(
                title: "Best Picks",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    demoMediumCardData.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(left: defaultPadding),
                          child: RestaurantInfoMediumCard(
                            image: demoMediumCardData[index]['image'],
                            title: demoMediumCardData[index]['name'],
                            rating: demoMediumCardData[index]['rating'],
                            deliveryTime: demoMediumCardData[index]
                                ['delivertTime'],
                            location: demoMediumCardData[index]['location'],
                            press: () {},
                          ),
                        )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
