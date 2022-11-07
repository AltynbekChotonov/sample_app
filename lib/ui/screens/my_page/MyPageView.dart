import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/ColorConfig.dart';
import '../../../config/StringConstants.dart';
import '../../widgets/StatsContainer.dart';
import '../history_page/HistoryPageView.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.background_color,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    StringConstants.my_page,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: ColorConfig.white,
                      fontSize: 26,
                    ),
                  ),
                  Image.asset(
                    "assets/icons/scanner.png",
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
              SizedBox(
                height: 38,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
                        ),
                      ),
                    ),
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(width: 13),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => HistoryPageView(),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Perizat Turgunbaeva",
                          style: TextStyle(
                            color: ColorConfig.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Мастер",
                          style: TextStyle(
                            color: ColorConfig.blue_primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    "assets/icons/forward_arrow.png",
                    color: ColorConfig.gray_400,
                    width: 9,
                    height: 16,
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                width: double.maxFinite,
                height: 64,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: ColorConfig.gray_900,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      StringConstants.unlimited_txt,
                      style: TextStyle(
                        color: ColorConfig.gray_400,
                      ),
                    ),
                    Container(
                      height: 32,
                      width: 72,
                      decoration: BoxDecoration(
                        color: ColorConfig.blue_primary,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          StringConstants.purchase,
                          style: TextStyle(
                            color: ColorConfig.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StringConstants.purchase_points,
                    style: TextStyle(color: ColorConfig.blue_primary),
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    "assets/icons/forward_arrow.png",
                    color: ColorConfig.blue_primary,
                    width: 5,
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 23,
              ),
              StatsContainer(),
              SizedBox(
                height: 20,
              ),
              OptionsMenu(),
            ],
          ),
        ),
      ),
    );
  }
}

class OptionsMenu extends StatelessWidget {
  const OptionsMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: ColorConfig.gray_900,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          OptionsItem(
            StringConstants.bookmark,
            onTap: () {},
          ),
          OptionsItem(
            StringConstants.editMyInfo,
            onTap: () {},
          ),
          OptionsItem(
            StringConstants.inquiry,
            onTap: () {},
          ),
          OptionsItem(
            StringConstants.notice,
            onTap: () {},
          ),
          OptionsItem(
            StringConstants.notification,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class OptionsItem extends StatelessWidget {
  final String label;
  final Function onTap;

  const OptionsItem(
    this.label, {
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: ColorConfig.grey_200,
                  ),
                ),
                Image.asset(
                  "assets/icons/forward_arrow.png",
                  color: ColorConfig.blue_primary,
                  width: 9,
                  height: 16,
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: ColorConfig.line,
          ),
        ],
      ),
    );
  }
}
