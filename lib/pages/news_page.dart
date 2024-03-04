import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/AppStrings.dart';
import 'package:news_app/pages/latest_news.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

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
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/back.svg',
              ),
            ),
          ),
        ),
        title: const Text(
          AppString.title1,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
          5,
        ),
        child: Column(
          children: [
            Container(
              width: 414,
              color: const Color(0xffFFFFFF),
              child: const Image(
                image: AssetImage(
                  'assets/images/hn.png',
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 374,
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff191F33),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            'Maecenas mattis hendrerit enim ac\nvestibulu... '),
                    TextSpan(
                      text: '                           2nd Feb 2024',
                      style: TextStyle(
                        color: Color(0xff767E94),
                      ),
                    )
                  ],
                ),
              ),
            ),

            // Container(
            //   width: 374,
            //   child: const Text(
            //     'Maecenas mattis hendrerit enim ac vestibulu...                              2 Feb 2024',
            //     maxLines: 2,
            //     style: TextStyle(
            //       overflow: TextOverflow.ellipsis,
            //       fontWeight: FontWeight.w400,
            //       fontSize: 18,
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: 374,
              height: 310,
              child: const Text(
                'Phasellus interdum neque nunc, non tempor dui auctor eu. Mauris tincidunt tincidunt odio, eu elementum tellus. Curabitur blandit nisl sit amet mauris finibus. Phasellus interdum neque nunc, non tempor dui auctor eu. Mauris tincidunt tincidunt odio, eu elementum tellus. Curabitur blandit nisl sit amet mauris finibus. Phasellus interdum neque nunc, non tempor dui auctor eu. Mauris tincidunt tincidunt odio, eu elementum tellus. Curabitur blandit nisl sit amet mauris finibus. Phasellus interdum neque nunc, non tempor dui auctor eu. Mauris tincidunt tincidunt odio, eu elementum tellus. Curabitur blandit nisl sit amet mauris finibus. Phasellus interdum neque nunc, non tempor dui auctor eu. Mauris tincidunt tincidunt odio, eu elementum tellus. Curabitur blandit nisl sit amet mauris finibus.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff767E94)),
              ),
            ),
            const Divider(
              color: Color(0xffDADDE5),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  width: 300,
                  child: const Text(
                    AppString.title2,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff191F33),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LatestNews(),
                          ),
                        );
                      },
                      child: Container(
                        width: 300,
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
                                        fontSize: 14,
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
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LatestNews(),
                          ),
                        );
                      },
                      child: Container(
                        width: 300,
                        padding: const EdgeInsets.all(20),
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
                                        fontSize: 14,
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
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
