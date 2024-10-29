import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:learning_flutter/modules/restaurant/entities/restaurant.dart';
import 'package:learning_flutter/navigation/restaurant_detail.dart';

class CustomListRestaurants extends StatelessWidget {
  const CustomListRestaurants({
    super.key,
    required this.restaurant,
  });

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Detail(
            title: restaurant.name,
            images: restaurant.images,
            description: restaurant.description,
            rating: restaurant.rating,
          );
        }));
      },
      child: Row(
        children: [
          Image.network(
            restaurant.images[0],
            width: 80,
            height: 70,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(restaurant.name,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 200,
                  height: 42,
                  child: Text(
                    restaurant.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          StarRating(
              rating: restaurant.rating,
              color: Colors.orange[200],
              borderColor: Colors.grey,
              starCount: 5,
              size: 12)
        ],
      ),
    );
  }
}
