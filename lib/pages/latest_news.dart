import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/AppStrings.dart';
import 'package:news_app/pages/agmsgm.dart';
import 'package:news_app/pages/announcement.dart';
import 'package:news_app/pages/auction.dart';
import 'package:news_app/pages/dividend.dart';
import 'package:news_app/pages/financial_reports.dart';
import 'package:news_app/pages/news_page.dart';
import 'package:news_app/pages/rightspage.dart';

class LatestNews extends StatefulWidget {
  const LatestNews({super.key});

  @override
  State<LatestNews> createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  List<String> newsOptions = [
    AppString.title2,
    AppString.title3,
    AppString.title4,
    AppString.title5,
    AppString.title6,
    AppString.title7,
    AppString.title8,
  ];

  String selectedOption = AppString.title2;
  final sectorOptions = [''];
  final allComOptions = [''];

  Widget selectedWidget() {
    switch (selectedOption) {
      case AppString.title2:
        return const LatestNewsWidget();
      case AppString.title3:
        return const AnnouncementPage();
      case AppString.title4:
        return const AGMSGMPage();
      case AppString.title5:
        return const FinancialReports();
      case AppString.title6:
        return const DividendPage();
      case AppString.title7:
        return const RightsPage();
      case AppString.title8:
        return const AuctionPage();
      default:
        return const LatestNewsWidget();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 0.2,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewsPage(),
                  ),
                );
              },
              icon: SvgPicture.asset(
                'assets/icons/back.svg',
              ),
            ),
          ),
        ),
        title: Text(
          selectedOption,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: newsOptions
                      .map(
                        (option) => InkWell(
                          onTap: () {
                            setState(() {
                              selectedOption = option;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedOption == option
                                  ? const Color(0xff4DA64D)
                                  : const Color(0xffF2F2F2),
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              border: const Border.fromBorderSide(
                                BorderSide(color: Color(0xffA6A6A6)),
                              ),
                            ),
                            padding: const EdgeInsets.all(
                              8,
                            ),
                            margin: const EdgeInsets.only(
                              right: 5,
                            ),
                            child: Text(
                              option,
                              style: TextStyle(
                                color: selectedOption == option
                                    ? const Color(0xffFFFFFF)
                                    : const Color(0xff000000),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              selectedWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class LatestNewsWidget extends StatefulWidget {
  const LatestNewsWidget({super.key});

  @override
  State<LatestNewsWidget> createState() => _LatestNewsWidgetState();
}

class _LatestNewsWidgetState extends State<LatestNewsWidget> {
  final sectorOptions = [''];
  final allComOptions = [''];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          AppString.form1,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff000000),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: double.infinity,
          child: DropdownButtonFormField(
            items: sectorOptions
                .map(
                  (e) => DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {});
            },
            icon: SvgPicture.asset('assets/icons/dropdown.svg'),
            decoration: InputDecoration(
              hintText: AppString.form2,
              hintStyle: const TextStyle(
                fontSize: 12,
                color: Color(0xffA6A6A6),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff66B366),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xff66B366),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: const BoxDecoration(),
          width: double.infinity,
          child: DropdownButtonFormField(
            items: allComOptions
                .map(
                  (e) => DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {});
            },
            icon: SvgPicture.asset('assets/icons/dropdown.svg'),
            decoration: const InputDecoration(
              hintText: AppString.form3,
              hintStyle: TextStyle(
                fontSize: 12,
                color: Color(0xffA6A6A6),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff66B366),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff66B366),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xff66B366),
            ),
          ),
          child: const Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.text2,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      AppString.text2,
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      AppString.date,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Image(
                  image: AssetImage('assets/images/latest.png'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xff66B366),
            ),
          ),
          child: const Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.text2,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      AppString.text2,
                      style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      AppString.date,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Image(
                  image: AssetImage('assets/images/latest.png'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
