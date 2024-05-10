import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ghscareplus/constants/color.dart';
import 'package:ghscareplus/constants/imageres.dart';

class ourPartnersMobile extends StatefulWidget {
  const ourPartnersMobile({super.key});

  @override
  State<ourPartnersMobile> createState() => _ourPartnersMobileState();
}

class _ourPartnersMobileState extends State<ourPartnersMobile> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final List<Map<String, dynamic>> partnerList = [
      {'image': capegeminiLogo},
      {'image': medplusLogo},
      {'image': healthiansLogo},
      {'image': airtelLogo},
      {'image': vivoLogo},
    ];
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      height: MediaQuery.of(context).size.height * 0.3,
      width: width,
      //color: Colors.amber[100],
      child: Column(
        children: [
          Text(
            'OUR PARTNERS',
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w900, fontSize: 18),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Happy Clients',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900),
          ),
          Expanded(
              child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
            height: MediaQuery.of(context).size.height * 0.1,
            width: width,
            child: CarouselSlider.builder(
                itemCount: partnerList.length, 
                options: CarouselOptions(
                  autoPlay: true,
                  //autoPlayInterval: Duration(milliseconds: 500),
                  autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 1.0, // Display only one image at a time
                  aspectRatio: 16 / 9,
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Image.asset(partnerList[index]['image']);
                }),
          ))
        ],
      ),
    );
  }
}
