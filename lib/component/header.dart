import 'package:flutter/material.dart';

import '../config/responsive.dart';
import '../style/colors.dart';
import '../style/style.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
      SizedBox(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(
                  color: AppColors.shopColor,
                  text: 'Dashboard',
                  size: 30,
                  fontWeight: FontWeight.w800),
              PrimaryText(
                color: AppColors.shopColor,
                text: 'Store Data Analysis',
                size: 16,
                fontWeight: FontWeight.w400,
              )
            ]),
      ),
      Spacer(
        flex: 1,
      ),
      // Expanded(
      //   flex: Responsive.isDesktop(context) ? 1 : 3,
      //   child: TextField(
      //     decoration: InputDecoration(
      //       filled: true,
      //       fillColor: AppColors.white,
      //       contentPadding:
      //           EdgeInsets.only(left: 40.0, right: 5),
      //       enabledBorder: OutlineInputBorder(
      //         borderRadius: BorderRadius.circular(30),
      //         borderSide: BorderSide(color: AppColors.white),
      //       ),
      //        focusedBorder: OutlineInputBorder(
      //         borderRadius: BorderRadius.circular(30),
      //         borderSide: BorderSide(color: AppColors.white),
      //       ),
      //       prefixIcon: Icon(Icons.search, color: AppColors.black),
      //       hintText: 'Search',
      //       hintStyle: TextStyle(color: AppColors.secondary, fontSize: 14)
      //     ),
      //   ),
      // ),
    ]);
  }
}
