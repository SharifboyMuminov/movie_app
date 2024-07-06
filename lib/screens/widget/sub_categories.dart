import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_work_10/utils/app_colors.dart';
import 'package:home_work_10/utils/app_size.dart';

class SubCategories extends StatefulWidget {
  const SubCategories(
      {super.key, required this.onChangedActiveCategory, this.subCategories});

  final ValueChanged<int> onChangedActiveCategory;
  final List<String>? subCategories;

  @override
  State<SubCategories> createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<SubCategories> {
  List<String> genres = [
    "Action",
    "Crime",
    "Comedy",
    "Drama",
    "Horror",
    "Animation"
  ];

  @override
  void initState() {
    if (widget.subCategories != null) {
      genres = widget.subCategories!;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.he,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.we),
        scrollDirection: Axis.horizontal,
        children: List.generate(genres.length, (index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.we),
            child: TextButton(
              style: TextButton.styleFrom(
                padding:
                    EdgeInsets.symmetric(horizontal: 15.we, vertical: 2.he),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.we,
                  ),
                ),
              ),
              onPressed: () {
                widget.onChangedActiveCategory.call(index);
              },
              child: Text(
                genres[index],
                style: TextStyle(
                  color: AppColors.kTextColor,
                  fontSize: 13.sp,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
