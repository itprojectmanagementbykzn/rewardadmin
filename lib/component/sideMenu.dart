import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/size_config.dart';
import '../style/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        decoration: const BoxDecoration(color: AppColors.secondaryBg),
        child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Container(
               height: 100,
               alignment: Alignment.topCenter,
               width: double.infinity,
               padding: const EdgeInsets.only(top: 20),
               child: SizedBox(
                    width: 35,
                    height: 20,
                    child: SvgPicture.asset('assets/mac-action.svg'),
                  ),
             ),

              Column(
                children: [
                  IconButton(
                      icon: SvgPicture.asset(
                        width: 50,
                        height: 50,
                        'assets/addproduct.svg',
                      ),
                      onPressed: () {}),
                  const Text("Manage Product", style: TextStyle(
                      color: AppColors.shopColor
                  ),),
                ],
              ),
              const SizedBox(height: 30,),
              Column(
                children: [
                  IconButton(
                      icon: SvgPicture.asset(
                        width: 50,
                        height: 50,
                        'assets/manageproduct.svg',
                      ),
                      onPressed: () {}),
                  const Text("Manage Product", style: TextStyle(
                      color: AppColors.shopColor
                  ),),
                ],
              ),
              const SizedBox(height: 30,),
              Column(
                children: [
                  IconButton(
                      iconSize: 20,

                      icon: SvgPicture.asset(
                        width: 50,
                        height: 50,
                        'assets/ordercheck.svg',
                      ),
                      onPressed: () {}),
                  const Text("Check Order", style: TextStyle(
                      color: AppColors.shopColor
                  ),),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}