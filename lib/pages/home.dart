import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> imagePathList = [
    'assets/1.jpg',
    'assets/images (1).jfif',
    'assets/images.jfif',
  ];
  late CarouselController car = CarouselController();
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 150,
        ),
        CarouselSlider(
          options: CarouselOptions(
            height:
                200, // Adjust the height of the carousel as per your requirement
            autoPlay: true, // Enable auto play of the carousel
            enlargeCenterPage: true, // Increase the size of the center image
            aspectRatio: 16 / 9, // Adjust the aspect ratio of the images
            autoPlayCurve:
                Curves.fastOutSlowIn, // Animation curve for auto play
            autoPlayInterval:
                Duration(seconds: 3), // Interval between each auto play slide
            autoPlayAnimationDuration:
                Duration(milliseconds: 800), // Animation duration for auto play
          ),
          items: imagePathList.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: 300,
                  margin: EdgeInsets.symmetric(
                      horizontal: 1.0), // Adjust the horizontal margin
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 76, 3,
                        3), // Set a background color for the image container
                  ),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                  ),
                );
              },
            );
          }).toList(),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: current,
          decorator: DotsDecorator(
            size: const Size.square(7.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        )
      ],
    );
  }
}
