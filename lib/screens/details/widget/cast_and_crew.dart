import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_work_10/data/models/movie/movie_model.dart';
import 'package:home_work_10/utils/app_colors.dart';
import 'package:home_work_10/utils/app_size.dart';

class CastAndCrewView extends StatelessWidget {
  const CastAndCrewView({super.key, required this.movieModel});

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.we),
          child: Text(
            "Cast & Crew",
            style: TextStyle(
              color: AppColors.kTextColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        20.getH(),
        SizedBox(
          height: 160.he,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10.we),
            itemCount: movieModel.cast.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.we),
                child: SizedBox(
                  width: 80.we,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 80.we,
                        width: 80.we,
                        child: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: Image.asset(
                            movieModel.cast[index]["image"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      10.getH(),
                      Text(
                        movieModel.cast[index]['orginalName'],
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.kTextColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      5.getH(),
                      Text(
                        movieModel.cast[index]['movieName'],
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.kTextLightColor,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
