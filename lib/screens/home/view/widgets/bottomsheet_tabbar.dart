import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_portal/core/common.dart';
import 'package:job_portal/screens/home/view/widgets/company_tab.dart';
import 'package:job_portal/screens/home/view/widgets/job_description.dart';

class BottomSheetTabBar extends StatelessWidget {
  const BottomSheetTabBar({
    Key? key,
  }) : super(key: key);

  //late TabController tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: height * 0.055,
            padding: EdgeInsets.all(width * 0.01),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TabBar(
              labelColor: Colors.grey.shade800,
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
              ),
              labelStyle: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
              ),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.cyan.withOpacity(0.1),
              ),
              tabs: const [
                Tab(
                  child: Text("Description"),
                ),
                Tab(
                  child: Text("Company"),
                ),
                Tab(
                  child: Text("Job Details"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: width * 0.06),
              child: const TabBarView(
                children: [
                  JobDescription(),
                  CompanyTab(),
                  Text("zxcv"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
