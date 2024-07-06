import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_work_10/data/models/movie/movie_model.dart';
import 'package:home_work_10/screens/details/widget/statistics_film.dart';
import 'package:home_work_10/utils/app_colors.dart';
import 'package:home_work_10/utils/app_size.dart';

class TopItem extends StatelessWidget {
  const TopItem({super.key, required this.movieModel});

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.40,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.r),
            ),
            child: Image.asset(
              movieModel.backdrop,
              width: width,
              height: height * 0.40 - 50,
              fit: BoxFit.cover,
            ),
          ),
          StatisticsFilm(movieModel: movieModel),
          SafeArea(
            child: BackButton(
              color: AppColors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
