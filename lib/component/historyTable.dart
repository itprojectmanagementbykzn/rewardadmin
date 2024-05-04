import 'package:flutter/material.dart';
import '../config/responsive.dart';
import '../config/size_config.dart';
import '../favorite_flavors.dart';
import '../style/colors.dart';
import '../style/style.dart';

class FavoriteFlavorsTable extends StatelessWidget {
  const FavoriteFlavorsTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
          child: SizedBox(
            width: Responsive.isDesktop(context) ? double.infinity : SizeConfig.screenWidth,
            child: Table(
        defaultVerticalAlignment:
              TableCellVerticalAlignment.middle,
        children: List.generate(
          favoriteFlavors.length,
            (index) => TableRow(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0),
                  child: CircleAvatar(
                    radius: 30,
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius:BorderRadius.circular(50),
                        child: Image.asset(favoriteFlavors[index]['avatar']),
                      ),
                ),),
                PrimaryText(
                  text: favoriteFlavors[index]['label'],
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.iconGray,
                ),
                PrimaryText(
                  text: favoriteFlavors[index]['time'],
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.iconGray,
                ),
                PrimaryText(
                  text: favoriteFlavors[index]['amount'],
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.iconGray,
                ),
                PrimaryText(
                  text: favoriteFlavors[index]['status'],
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.iconGray,
                ),
              ],
            ),
        ),
      ),
          ),
    );
  }
}
