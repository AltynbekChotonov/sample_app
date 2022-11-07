import 'package:flutter/material.dart';

import '../../config/ColorConfig.dart';

class StatsContainer extends StatelessWidget {
  const StatsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,
      ),
      height: 170,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: ColorConfig.blue_primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "501",
                    style: TextStyle(
                      color: ColorConfig.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Жалпы көнүгүү (мүнөт)",
                    style: TextStyle(
                      color: ColorConfig.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Image.asset(
                "assets/icons/forward_arrow.png",
                color: ColorConfig.gray_400,
                width: 9,
                height: 16,
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 1,
            color: ColorConfig.white.withOpacity(0.2),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "520",
                    style: TextStyle(
                      color: ColorConfig.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Калориялар",
                    style: TextStyle(
                      color: ColorConfig.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    "5",
                    style: TextStyle(
                      color: ColorConfig.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Видеолор",
                    style: TextStyle(
                      color: ColorConfig.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    "30",
                    style: TextStyle(
                      color: ColorConfig.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "күндөр",
                    style: TextStyle(
                      color: ColorConfig.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
