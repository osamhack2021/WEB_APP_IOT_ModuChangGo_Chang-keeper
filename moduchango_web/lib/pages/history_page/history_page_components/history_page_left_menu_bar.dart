import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moduchango/components/common/components_detail/page_left_menu_bar_function_block.dart';
import 'package:moduchango/design_data/size.dart';
import 'package:moduchango/pages/history_page/history_byContents_page/history_byContents_page.dart';
import 'package:moduchango/pages/history_page/history_byDate_page/history_byDate_datepicker_page.dart';
import 'package:moduchango/pages/history_page/history_byStorage_page/history_byStorage_select_page.dart';



class HistoryPageLeftMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: gap_l),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: 180,
                  height: 3,
                  color: Colors.grey,
                ),
              ),
              PageLeftMenuBarFunctionBlock(
                mText: "날짜별 보기",
                funPageRoute: () {
                  Get.to(() => HistoryByDateDatepickerPage());
                },
              ),
              PageLeftMenuBarFunctionBlock(
                mText: "창고별 보기",
                funPageRoute: () {
                  Get.to(() => HistoryByStorageSelectPage());
                },
              ),
              PageLeftMenuBarFunctionBlock(
                mText: "물품별 보기",
                funPageRoute: () {
                  Get.to(() => HistoryByContentsPage());
                },
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}