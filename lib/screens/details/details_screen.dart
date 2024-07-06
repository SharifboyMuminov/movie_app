import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_work_10/data/models/movie/movie_model.dart';
import 'package:home_work_10/screens/details/widget/cast_and_crew.dart';
import 'package:home_work_10/screens/details/widget/show_film_name.dart';
import 'package:home_work_10/screens/details/widget/top_item.dart';
import 'package:home_work_10/screens/widget/sub_categories.dart';
import 'package:home_work_10/utils/app_colors.dart';
import 'package:home_work_10/utils/app_size.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.movieModel});

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 20.he),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopItem(movieModel: movieModel),
            ShowFilmName(movieModel: movieModel, onTabAdd: () {}),
            SubCategories(
              onChangedActiveCategory: (int value) {},
              subCategories: movieModel.genres,
            ),
            20.getH(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.we,
                vertical: 10.he,
              ),
              child: Text(
                "Plot Summary",
                style: TextStyle(
                  color: AppColors.kTextColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.we),
              child: Text(
                movieModel.plot,
                style: TextStyle(
                  color: AppColors.c737599,
                  fontSize: 12.sp,
                ),
              ),
            ),
            20.getH(),
            CastAndCrewView(movieModel: movieModel),
          ],
        ),
      ),
    );
  }
}
