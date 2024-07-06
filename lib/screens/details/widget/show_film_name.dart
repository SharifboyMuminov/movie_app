import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_work_10/data/models/movie/movie_model.dart';
import 'package:home_work_10/utils/app_colors.dart';
import 'package:home_work_10/utils/app_size.dart';

class ShowFilmName extends StatelessWidget {
  const ShowFilmName({
    super.key,
    required this.movieModel,
    required this.onTabAdd,
  });

  final MovieModel movieModel;
  final VoidCallback onTabAdd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.we, vertical: 20.he),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movieModel.title,
                  style: TextStyle(
                    fontSize: 25.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                10.getH(),
                Row(
                  children: [
                    Text(
                      '${movieModel.year}',
                      style: TextStyle(
                        color: AppColors.kTextLightColor,
                        fontSize: 12.sp,
                      ),
                    ),
                    20.getW(),
                    Text(
                      "PG-13",
                      style: TextStyle(
                        color: AppColors.kTextLightColor,
                        fontSize: 12.sp,
                      ),
                    ),
                    20.getW(),
                    Text(
                      "2h 32min",
                      style: TextStyle(
                        color: AppColors.kTextLightColor,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 64.we,
            width: 64.we,
            child: FloatingActionButton(
              elevation: 0,
              backgroundColor: AppColors.kSecondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
              onPressed: onTabAdd,
              child: Icon(
                Icons.add,
                size: 28.sp,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
