import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_work_10/utils/app_colors.dart';
import 'package:home_work_10/utils/app_size.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key, required this.onChangedActiveCategory});

  final ValueChanged<int> onChangedActiveCategory;

  @override
  CategoriesViewState createState() => CategoriesViewState();
}

class CategoriesViewState extends State<CategoriesView> {
  int selectedCategory = 0;
  List<String> categories = ["In Theater", "Box Office", "Coming Soon"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.he,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10.we),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      ),
    );
  }

  Widget buildCategory(int index, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.we),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
            widget.onChangedActiveCategory.call(index);
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20.sp,
                color: index == selectedCategory
                    ? AppColors.kTextColor
                    : Colors.black.withOpacity(0.4),
              ),
            ),
            AnimatedContainer(
              margin: EdgeInsets.symmetric(vertical: 10.he),
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == selectedCategory
                    ? AppColors.kSecondaryColor
                    : Colors.transparent,
              ),
              duration: const Duration(milliseconds: 300),
            )
          ],
        ),
      ),
    );
  }
}
