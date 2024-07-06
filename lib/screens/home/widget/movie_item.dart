import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_work_10/data/models/movie/movie_model.dart';
import 'package:home_work_10/utils/app_colors.dart';
import 'package:home_work_10/utils/app_size.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key, required this.onTab, required this.movieModel});

  final VoidCallback onTab;
  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                boxShadow: const [AppColors.kDefaultShadow],
                color: AppColors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.r),
                child: Image.asset(
                  movieModel.poster,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.he),
            child: Text(
              movieModel.title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20.sp,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/star_fill.svg",
                height: 20.he,
              ),
              10.getW(),
              Text(
                "${movieModel.rating}",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.sp,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
