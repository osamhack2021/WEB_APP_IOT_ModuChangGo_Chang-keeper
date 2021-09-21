import 'package:flutter/material.dart';
import 'package:moduchango/components/common/custom_text_form_field.dart';
import 'package:moduchango/components/common/page_footer.dart';
import 'package:moduchango/components/common/page_header.dart';
import 'package:moduchango/components/common/page_left_menu_bar.dart';

class JoinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PageHeader(),
          // PageLeftMenuBar(),
          Container(
            child: Column(
              children: [
                CustomTextFormField(titleText: "e", hintText: "q"),
                CustomTextFormField(titleText: "q", hintText: "q"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
