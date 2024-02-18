import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../app_styles.dart';
import '../size_config.dart';
import '../push_animation.dart';
import 'store.dart';
import 'navigation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              color: tOrange,
              child: Column(
                children: [
                  Container(
                    height: SizeConfig.blockSizeVertical! * 60,
                    decoration: BoxDecoration(
                      color: tGrey3,
                      image: DecorationImage(
                        image: AssetImage('assets/images/homeImage.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: SizeConfig.blockSizeVertical! * 43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: tWhite,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Container(
                          height: SizeConfig.blockSizeVertical! * 35,
                          child: CarouselSliderWithIndicator(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CarouselSliderWithIndicator extends StatefulWidget {
  @override
  _CarouselSliderWithIndicatorState createState() =>
      _CarouselSliderWithIndicatorState();
}

class _CarouselSliderWithIndicatorState
    extends State<CarouselSliderWithIndicator> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [0, 1, 2].map((index) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(index),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Image.asset(
                    _current == index
                        ? 'assets/images/yellowScrollCircle.png'
                        : 'assets/images/scroll-circle.png',
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 6),
            height: SizeConfig.blockSizeVertical! * 33,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: [
            Container(
              height: SizeConfig.blockSizeVertical! * 35,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 26),
                    Center(
                      child: Text(
                        'Ready to be a Fur Parent?',
                        style: tPoppinsBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 6,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 8.75),
                    Center(
                      child: Text(
                        'Uncover the joy of becoming a fur parent and create lasting memories with a furry companion by your side. Are you ready to embrace the adventure of caring for a pet?',
                        style: tPoppinsRegular.copyWith(
                          color: tGrey4,
                          fontSize: SizeConfig.blockSizeHorizontal! * 4.24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: SizeConfig.blockSizeVertical! * 35,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 26),
                  Center(
                    child: Text(
                      'Your One-Stop Pet Shop Experience!',
                      style: tPoppinsBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 6,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 8.75),
                  Center(
                    child: Text(
                      'Connect with 5-star pet caregivers near you who offer boarding, walking, house sitting or day care.',
                      style: tPoppinsRegular.copyWith(
                        color: tGrey4,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4.24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: tOrange,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.76),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteUtils.createSlidePageRoute(NavigationWidget()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        vertical: 12.0,
                      ),
                      child: Text(
                        'Get Started',
                        style: tPoppinsBold.copyWith(
                          color: tWhite,
                          fontSize: SizeConfig.blockSizeHorizontal! * 4.24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: SizeConfig.blockSizeVertical! * 40,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 26),
                    Center(
                      child: Text(
                        'Lots of Pets to Choose From!',
                        style: tPoppinsBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 6,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 8.75),
                    Center(
                      child: Text(
                        'Dive into a diverse realm of pets, each with its unique charm and personality. From playful pups to cuddly kittens, explore a multitude of options and find the perfect companion to brighten your days!',
                        style: tPoppinsRegular.copyWith(
                          color: tGrey4,
                          fontSize: SizeConfig.blockSizeHorizontal! * 4.24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
