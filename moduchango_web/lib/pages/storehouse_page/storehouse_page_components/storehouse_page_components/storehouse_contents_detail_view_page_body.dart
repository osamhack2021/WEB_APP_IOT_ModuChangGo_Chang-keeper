import 'package:flutter/material.dart';
import 'package:moduchango/components/common/contents_tile.dart';
import 'storehouse_page_left_menu_bar.dart';

class StoreHouseContentsDetailViewPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StoreHousePageLeftMenuBar(),
        Expanded(
                    child: Wrap(
                      spacing: 10,
                      children: List.generate(
                          3,
                          (index) => ContentsTile(
                                contentsName: "방상외피",
                                Storage: "훈련용창고",
                                Shelf: "3",
                                rfidInfo: "띠바",
                                cnt: 12,
                                Col: "1",
                                Row: "2",
                              )),
                    ),
                  ),
      ],
    );
  }
}
