import 'package:flutter/material.dart';
import 'package:food_ui_kit/constants.dart';

class RestaurantInfoMediumCard extends StatelessWidget {
  const RestaurantInfoMediumCard({
    Key? key,
    required this.title,
    required this.image,
    required this.deliveryTime,
    required this.rating,
    required this.press,
    required this.location,
  }) : super(key: key);
  final String title, image, location;
  final int deliveryTime;
  final double rating;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      onTap: press,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: Image.asset(image),
            ),
            SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              location,
              maxLines: 1,
              style: TextStyle(color: kBodyTextColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
              child: DefaultTextStyle(
                style: TextStyle(color: Colors.black, fontSize: 13),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: defaultPadding / 8,
                          horizontal: defaultPadding / 2),
                      decoration: BoxDecoration(
                          color: kActiveColor,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Text(
                        rating.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    Spacer(),
                    Text('${deliveryTime} mins'),
                    Spacer(),
                    CircleAvatar(
                      radius: 2,
                      backgroundColor: Colors.black54,
                    ),
                    Spacer(),
                    Text('Free Delivery')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
