import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda/constants/colors.dart';

class ResturantCard extends StatelessWidget {
  const ResturantCard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * 0.3,
      width: width * 0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  fit: BoxFit.cover,
                  height: height * 0.2,
                  width: double.infinity,
                  image: NetworkImage(" https://www.publicdomainpictures.net/pictures/320000/nahled/background-image.png"),
                ),
              ),
              Positioned(
                  top: 15,
                  left: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: scheme.primary,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: const Padding(
                        padding: EdgeInsets.only(top: 7, left: 5, right: 10, bottom: 7),
                      child: Text(
                        'Featured',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
