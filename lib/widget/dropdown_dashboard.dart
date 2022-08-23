import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class DropDownDashboard2 extends StatelessWidget {
  DropDownDashboard2(
      {Key? key,
      required this.item1,
      required this.item2,
      required this.item3,
      required this.item4,
      required this.item5})
      : super(key: key);

  String item1;
  String item2;
  String item3;
  String item4;
  String item5;

  @override
  Widget build(BuildContext context) {
    final myKey = GlobalKey<DropdownSearchState<MultiLevelString>>();
    final List<MultiLevelString> myItems = [
      MultiLevelString(level1: item1),
      MultiLevelString(level1: item2),
      MultiLevelString(level1: item3),
      MultiLevelString(level1: item4),
      MultiLevelString(level1: item5),
    ];
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.124,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: DropdownSearch<MultiLevelString>(
        key: myKey,
        items: myItems,
        compareFn: (i1, i2) => i1.level1 == i2.level1,
        popupProps: PopupProps.menu(
          showSelectedItems: true,
          interceptCallBacks: true,
          itemBuilder: (ctx, item, isSelected) {
            return ListTile(
              selected: isSelected,
              title: Text(item.level1),
              onTap: () => myKey.currentState?.popupValidate([item]),
            );
          },
        ),
        clearButtonProps: const ClearButtonProps(
            icon: Icon(
              Icons.clear,
              color: Colors.grey,
            ),
            isVisible: true),
      ),
    );
  }
}

class MultiLevelString {
  final String level1;
  bool isExpanded;

  MultiLevelString({
    this.level1 = "",
    this.isExpanded = false,
  });

  MultiLevelString copy({
    String? level1,
    bool? isExpanded,
  }) =>
      MultiLevelString(
        level1: level1 ?? this.level1,
        isExpanded: isExpanded ?? this.isExpanded,
      );

  @override
  String toString() => level1;
}
