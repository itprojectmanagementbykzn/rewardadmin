import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style/colors.dart';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(children: [
          CircleAvatar(
            child: SvgPicture.asset("assets/users/zn.svg",
            fit: BoxFit.contain,),
            radius: 25,
          ),
          Icon(Icons.arrow_drop_down_outlined, color: AppColors.black)
        ]),
      ],
    );
  }
}
