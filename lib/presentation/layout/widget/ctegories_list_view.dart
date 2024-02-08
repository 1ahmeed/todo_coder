import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';
import '../../../models/category_model.dart';

class CategoriesListView extends StatelessWidget {
   CategoriesListView({Key? key}) : super(key: key);
  final List<CategoryModel> categories=[
    CategoryModel(title: "Grocery", image: AppImages.grocery, ),
    CategoryModel(title: "work", image:  AppImages.work, ),
    CategoryModel(title: "sport", image:  AppImages.sport, ),
    CategoryModel(title: "design", image:  AppImages.xo, ),
    CategoryModel(title: "university", image:  AppImages.university, ),
    CategoryModel(title: "social", image:  AppImages.social, ),
    CategoryModel(title: "music", image:  AppImages.music, ),
    CategoryModel(title: "health", image:  AppImages.health, ),
    CategoryModel(title: "movie", image:  AppImages.movie, ),
    CategoryModel(title: "home", image:  AppImages.home, ),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      // scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        ///todo create add category because it never show
        if(index==categories.length){
          return Column(
            children: [
              /// assets of category
              InkWell(
                onTap:(){},
                child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffCCFF80),
                        borderRadius: BorderRadius.circular(5)),
                    width: 64,
                    height: 64,
                    child: Center(
                        child: SvgPicture.asset(
                          AppImages.plus,
                          width: 32,
                          height: 32,
                        ))),
              ),
              const SizedBox(height: 7),

              ///name of category
              const Expanded(
                flex: 2,
                child: Text(
                  "create new",
                  style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: AppStrings.fontFamily,
                      fontSize: 14),
                  // style: theme.textTheme.bodyLarge,
                ),
              ),
            ],
          );
        }
        return Column(
          children: [
            /// assets of category
            InkWell(
              onTap:(){},
              child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffCCFF80),
                      borderRadius: BorderRadius.circular(5)),
                  width: 64,
                  height: 64,
                  child: Center(
                      child: SvgPicture.asset(
                        "${categories[index].image}",
                        width: 32,
                        height: 32,
                      ))),
            ),
            const SizedBox(height: 7),

            ///name of category
            Expanded(
              flex: 2,
              child: Text(
                "${categories[index].title}",
                style: const TextStyle(
                    color: AppColor.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppStrings.fontFamily,
                    fontSize: 14),
                // style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        );
      },
    );
  }
}
