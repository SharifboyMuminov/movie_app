import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_work_10/data/local/local_varibals.dart';
import 'package:home_work_10/screens/details/details_screen.dart';
import 'package:home_work_10/screens/home/widget/categories.dart';
import 'package:home_work_10/screens/home/widget/movie_item.dart';
import 'package:home_work_10/screens/widget/sub_categories.dart';
import 'package:home_work_10/utils/app_colors.dart';
import 'package:home_work_10/utils/app_size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(
    viewportFraction: 0.8,
    initialPage: 1,
  );
  int initialPage = 1;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
            ),
          ),
          20.getW(),
        ],
      ),
      body: Column(
        children: [
          CategoriesView(onChangedActiveCategory: (int value) {}),
          20.getH(),
          SubCategories(onChangedActiveCategory: (int value) {}),
          50.getH(),
          AspectRatio(
            aspectRatio: 0.85,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  initialPage = value;
                });
              },
              physics: const ClampingScrollPhysics(),
              itemCount: movies.length,
              controller: _pageController,
              itemBuilder: (BuildContext context, int index) {
                if (_pageController.position.haveDimensions) {
                  return AnimatedBuilder(
                    animation: _pageController,
                    builder: (context, child) {
                      double value = 0;
                      if (_pageController.position.haveDimensions) {
                        value = index - (_pageController.page ?? 1.1);

                        value = (value * 0.038).clamp(-1, 1);
                      }
                      return AnimatedOpacity(
                        duration: const Duration(milliseconds: 350),
                        opacity: initialPage == index ? 1 : 0.4,
                        child: Transform.rotate(
                          angle: pi * value,
                          child: MovieItem(
                            onTab: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return DetailsScreen(
                                      movieModel: movies[index],
                                    );
                                  },
                                ),
                              );
                            },
                            movieModel: movies[index],
                          ),
                        ),
                      );
                    },
                  );
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
