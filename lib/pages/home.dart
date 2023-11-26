import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   final myitems = [
    Image.asset('assets/1.jpg'),
    Image.asset('assets/images (1).jfif'),
    Image.asset('assets/images.jfif'),
  ];
  late CarouselController car = CarouselController();
  int current =0;
  @override
  Widget build(BuildContext context) {
    return 
      Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: 200,
                  autoPlayCurve: Curves.fastOutSlowIn,
               //   autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      current = index;
                    });
                  },
                ),
                items: myitems,
              ),
              AnimatedSmoothIndicator(activeIndex: current,
              count: myitems.length,
              effect: WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                spacing: 10,
                dotColor: Colors.grey.shade200,
                activeDotColor: const Color.fromARGB(255, 222, 109, 109),
                paintStyle: PaintingStyle.fill,
              ),)
            ],
          );
  }
}
