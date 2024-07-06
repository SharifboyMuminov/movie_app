import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_work_10/data/models/movie/movie_model.dart';
import 'package:home_work_10/utils/app_colors.dart';
import 'package:home_work_10/utils/app_size.dart';

class StatisticsFilm extends StatelessWidget {
  const StatisticsFilm({super.key, required this.movieModel});
  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: SizedBox(
        width: width * 0.9,
        height: 100.he,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.r),
              bottomLeft: Radius.circular(50.r),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.c12153D.withOpacity(0.2),
                blurRadius: 50,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.we,
              right: 20.we,
              top: 10.he,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset("assets/icons/star_fill.svg"),
                    5.getH(),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "${movieModel.rating}/",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: "10\n",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.kTextColor.withOpacity(0.5),
                            ),
                          ),
                          TextSpan(
                            text: "150,212",
                            style: TextStyle(
                              color: AppColors.kTextColor.withOpacity(0.5),
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset("assets/icons/star.svg"),
                    5.getH(),
                    Text(
                      "Rate This",
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.c51CF66,
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5.we),
                        child: Text(
                          "${movieModel.metascoreRating}",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                            height: 0.9,
                          ),
                        ),
                      ),
                    ),
                    5.getH(),
                    Text(
                      "Metascore",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "62 critic reviews",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.kTextColor.withOpacity(0.5),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
