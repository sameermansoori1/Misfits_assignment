import 'package:flutter/material.dart';
import 'package:misfits_assignment/Common/app_themes.dart';

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final Color containerColor;
  final Color iconColor;
  final Color textColor;

  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.children,
    this.containerColor = AppThemes.container2,
    this.iconColor = AppThemes.white,
    this.textColor = AppThemes.white,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: containerColor),
          color: containerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ExpansionTile(
          title: Text(
            title,
            style: TextStyle(
              fontFamily: AppThemes.font1, // Change this to your font family
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
          trailing: Icon(
            Icons.arrow_drop_down,
            color: iconColor,
            size: 30,
          ),
          children: children,
        ),
      ),
    );
  }
}
