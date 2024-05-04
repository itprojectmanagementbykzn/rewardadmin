import 'package:flutter/material.dart';
import 'package:rewardadmin/component/daybarchart.dart';

import '../component/appBarActionItems.dart';
import '../component/barChart.dart';
import '../component/header.dart';
import '../component/historyTable.dart';
import '../component/infoCard.dart';
import '../component/paymentDetailList.dart';
import '../component/sideMenu.dart';
import '../config/responsive.dart';
import '../config/size_config.dart';
import '../style/colors.dart';
import '../style/style.dart';


class Report extends StatelessWidget {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _drawerKey,
      drawer: SizedBox(width: 100, child: SideMenu()),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: IconButton(
            onPressed: () {
              _drawerKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu, color: AppColors.black)),
        actions: [
          AppBarActionItems(),
        ],
      )
          : PreferredSize(
        preferredSize: Size.zero,
        child: SizedBox(),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 2,
                child: SideMenu(),
              ),
            Expanded(
                flex: 10,
                child: SafeArea(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Header(),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 4,
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth,
                          child: Wrap(
                            spacing: 20,
                            runSpacing: 20,
                            alignment: WrapAlignment.center,
                            children: [
                              InfoCard(
                                  icon: 'assets/salary.svg',
                                  label: 'Total Orders',
                                  amount: '1200'),
                              InfoCard(
                                  icon: 'assets/transfer.svg',
                                  label: 'Total Users',
                                  amount: '150'),
                              InfoCard(
                                  icon: 'assets/document.svg',
                                  label: 'Total Revenue',
                                  amount: '1,5267,532 MMK'),
                              InfoCard(
                                  icon: 'assets/trophy.svg',
                                  label: 'Total Products',
                                  amount: '15'),
                              InfoCard(
                                  icon: 'assets/credit-card.svg',
                                  label: 'Mode of Payment',
                                  amount: '15'),
                              InfoCard(
                                  icon: 'assets/pie-chart.svg',
                                  label: 'Total Staff',
                                  amount: '15'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PrimaryText(
                                  color: AppColors.shopColor,
                                    text: 'Orders for April (Daily Orders)',
                                    size: 25,
                                    // fontWeight: FontWeight.w800
                                ),
                              ],
                            ),
                            PrimaryText(
                              text: 'Past 30 DAYS',
                              size: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.shopColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 3,
                        ),
                        Container(
                          height: 180,
                          child: const DayBarChart(),
                        ),

                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 3,
                        ),



                        PrimaryText(
                          color: AppColors.shopColor,
                          text: 'Orders for 2024 (Monthly Orders)',
                          size: 25,
                          // fontWeight: FontWeight.w800
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 3,
                        ),


                        Container(
                          height: 180,
                          child: BarChartCopmponent(),
                        ),


                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PrimaryText(
                              color: AppColors.shopColor,
                                text: 'Favorite Flavors',
                                size: 25,
                              fontWeight: FontWeight.w400,
                            ),
                            PrimaryText(
                              text: 'Collecting data on the most popular bubble tea flavors among customers.',
                              size: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.shopColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 3,
                        ),
                        FavoriteFlavorsTable(),
                        if (!Responsive.isDesktop(context)) PaymentDetailList()
                      ],
                    ),
                  ),
                )),
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 4,
                child: SafeArea(
                  child: Container(
                    width: double.infinity,
                    height: SizeConfig.screenHeight,
                    decoration: BoxDecoration(color: AppColors.secondaryBg),
                    child: SingleChildScrollView(
                      padding:
                      EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                      child: Column(
                        children: [
                          AppBarActionItems(),
                          PaymentDetailList(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
