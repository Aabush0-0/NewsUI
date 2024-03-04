import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/AppStrings.dart';

class FinancialReports extends StatefulWidget {
  const FinancialReports({super.key});

  @override
  State<FinancialReports> createState() => _FinancialReportsState();
}

class _FinancialReportsState extends State<FinancialReports> {
  final sectorOptions = [''];
  final allComOptions = [''];

  TableRow tableRow = TableRow(
    children: <Widget>[
      Container(
        color: const Color(0xffCCE6CC),
        padding: const EdgeInsets.all(10),
        child: const Text(
          AppString.row1,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0xff000000),
          ),
        ),
      ),
      Container(
        color: const Color(0xffCCE6CC),
        padding: const EdgeInsets.all(10),
        child: const Text(
          AppString.row2,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0xff000000),
          ),
        ),
      ),
      Container(
        color: const Color(0xffCCE6CC),
        padding: const EdgeInsets.all(10),
        child: const Text(
          AppString.row4,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0xff000000),
          ),
        ),
      ),
    ],
  );

  TableRow tableRow1 = const TableRow(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          AppString.digit,
          style: TextStyle(
            color: Color(0xff737373),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          AppString.row8,
          style: TextStyle(
            color: Color(0xff737373),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          AppString.row10,
          style: TextStyle(
            color: Color(0xff737373),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                onChanged: (value) {},
                icon: SvgPicture.asset('assets/icons/dropdown.svg'),
                decoration: const InputDecoration(
                  hintText: AppString.form2,
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
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Table(
                  border: TableBorder.all(
                    color: const Color(0xffD9D9D9),
                  ),
                  defaultColumnWidth: const FixedColumnWidth(135),
                  children: <TableRow>[
                    tableRow,
                    tableRow1,
                    tableRow1,
                    tableRow1,
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}