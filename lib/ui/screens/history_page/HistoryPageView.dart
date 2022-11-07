import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/ColorConfig.dart';
import '../../widgets/StatsContainer.dart';

class HistoryPageView extends StatefulWidget {
  const HistoryPageView({Key? key}) : super(key: key);

  @override
  _HistoryPageViewState createState() => _HistoryPageViewState();
}

class _HistoryPageViewState extends State<HistoryPageView> {
  int tabSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConfig.background_color,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 18,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset(
                      "assets/icons/backward_arrow.png",
                      color: ColorConfig.white,
                      width: 10,
                      height: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Менин профилим",
                    style: TextStyle(
                        color: ColorConfig.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 22,
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Perizat Turgunbaeva",
                      style: TextStyle(
                        color: ColorConfig.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: StatsContainer(),
            ),
            SizedBox(
              height: 37,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: ColorConfig.tabBorderColor.withOpacity(0.28),
                  ),
                ),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (tabSelected != 0) {
                        setState(() {
                          tabSelected = 0;
                        });
                      }
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "Акыркы көнүгүү",
                          style: TextStyle(
                            color: ColorConfig.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      height: double.maxFinite,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: ColorConfig.tabBorderColor.withOpacity(0.28),
                          ),
                          bottom: tabSelected == 0
                              ? BorderSide(
                                  color: ColorConfig.blue_primary,
                                  width: 3,
                                )
                              : BorderSide(),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (tabSelected != 1) {
                        setState(() {
                          tabSelected = 1;
                        });
                      }
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "Сатып алынган видеолор",
                          style: TextStyle(
                            color: ColorConfig.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      height: double.maxFinite,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: ColorConfig.tabBorderColor.withOpacity(0.28),
                          ),
                          bottom: tabSelected == 1
                              ? BorderSide(
                                  color: ColorConfig.blue_primary,
                                  width: 3,
                                )
                              : BorderSide(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: tabSelected == 0
                    ? Column(
                        children: [
                          RecentWidget(
                            title: "Бул 10 мүнөттүк",
                            category: "видео тест",
                            imagePath:
                                "https://www.cnet.com/a/img/8QnNC5xCK1jtxBrA5__3nNZtJgM=/940x0/2019/01/08/8c24c2a3-fc8f-4cf5-9df8-e840bacd04a5/maxresdefault-2.jpg",
                          ),
                          RecentWidget(
                            title: "Бул 10 мүнөттүк",
                            category: "видео тест",
                            imagePath:
                                "https://www.cnet.com/a/img/8QnNC5xCK1jtxBrA5__3nNZtJgM=/940x0/2019/01/08/8c24c2a3-fc8f-4cf5-9df8-e840bacd04a5/maxresdefault-2.jpg",
                          ),
                          RecentWidget(
                            title: "Бул 10 мүнөттүк",
                            category: "видео тест",
                            imagePath:
                                "https://www.cnet.com/a/img/8QnNC5xCK1jtxBrA5__3nNZtJgM=/940x0/2019/01/08/8c24c2a3-fc8f-4cf5-9df8-e840bacd04a5/maxresdefault-2.jpg",
                          ),
                          RecentWidget(
                            title: "Бул 10 мүнөттүк",
                            category: "видео тест",
                            imagePath:
                                "https://www.cnet.com/a/img/8QnNC5xCK1jtxBrA5__3nNZtJgM=/940x0/2019/01/08/8c24c2a3-fc8f-4cf5-9df8-e840bacd04a5/maxresdefault-2.jpg",
                          ),
                          RecentWidget(
                            title: "Бул 10 мүнөттүк",
                            category: "видео тест",
                            imagePath:
                                "https://www.cnet.com/a/img/8QnNC5xCK1jtxBrA5__3nNZtJgM=/940x0/2019/01/08/8c24c2a3-fc8f-4cf5-9df8-e840bacd04a5/maxresdefault-2.jpg",
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          PurchaseItem(
                            title: "Бул 10 мүнөттүк",
                            category: "видео тест",
                            imagePath:
                                "https://www.cnet.com/a/img/8QnNC5xCK1jtxBrA5__3nNZtJgM=/940x0/2019/01/08/8c24c2a3-fc8f-4cf5-9df8-e840bacd04a5/maxresdefault-2.jpg",
                            level: "Үйрөнчүк",
                            teachingPerson: "Окутуучу",
                            time: "10",
                          ),
                          PurchaseItem(
                            title: "Бул 10 мүнөттүк",
                            category: "видео тест",
                            imagePath:
                                "https://www.cnet.com/a/img/8QnNC5xCK1jtxBrA5__3nNZtJgM=/940x0/2019/01/08/8c24c2a3-fc8f-4cf5-9df8-e840bacd04a5/maxresdefault-2.jpg",
                            level: "Үйрөнчүк",
                            teachingPerson: "Окутуучу",
                            time: "10",
                          ),
                          PurchaseItem(
                            title: "Бул 10 мүнөттүк",
                            category: "видео тест",
                            imagePath:
                                "https://www.cnet.com/a/img/8QnNC5xCK1jtxBrA5__3nNZtJgM=/940x0/2019/01/08/8c24c2a3-fc8f-4cf5-9df8-e840bacd04a5/maxresdefault-2.jpg",
                            level: "Үйрөнчүк",
                            teachingPerson: "Окутуучу",
                            time: "10",
                          ),
                          PurchaseItem(
                            title: "Бул 10 мүнөттүк",
                            category: "видео тест",
                            imagePath:
                                "https://www.cnet.com/a/img/8QnNC5xCK1jtxBrA5__3nNZtJgM=/940x0/2019/01/08/8c24c2a3-fc8f-4cf5-9df8-e840bacd04a5/maxresdefault-2.jpg",
                            level: "Үйрөнчүк",
                            teachingPerson: "Окутуучу",
                            time: "10",
                          ),
                        ],
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PurchaseItem extends StatelessWidget {
  final String imagePath;
  final String category;
  final String title;
  final String teachingPerson;
  final String time;
  final String level;

  const PurchaseItem({
    Key? key,
    required this.title,
    required this.category,
    required this.imagePath,
    required this.teachingPerson,
    required this.time,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 80,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      imagePath,
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/icons/play.svg",
                    height: 30,
                    fit: BoxFit.cover,
                    width: 30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 3,
                ),
                child: Text(
                  category,
                  style: TextStyle(
                    color: ColorConfig.gray_400,
                    fontSize: 12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 3,
                ),
                child: Container(
                  width: 230,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: ColorConfig.white,
                      fontSize: 14,
                    ),
                    maxLines: 2,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "$teachingPerson ",
                    style: TextStyle(
                      color: ColorConfig.gray_400,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    " · $time мин ",
                    style: TextStyle(
                      color: ColorConfig.gray_400,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    " · $level",
                    style: TextStyle(
                      color: ColorConfig.gray_400,
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class RecentWidget extends StatelessWidget {
  final String imagePath;
  final String category;
  final String title;

  const RecentWidget({
    Key? key,
    required this.title,
    required this.category,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        height: 78,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: ColorConfig.gray_900,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              height: 44,
              width: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: NetworkImage(
                      imagePath,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 11),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: TextStyle(
                    color: ColorConfig.gray_400,
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Container(
                  width: 270,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: ColorConfig.white,
                      fontSize: 14,
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
