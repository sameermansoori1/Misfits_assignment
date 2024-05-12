import 'dart:ui';

import 'package:flutter/material.dart';

import '../app_themes.dart';

class CustomAnimatedBottomBar extends StatelessWidget {
  const CustomAnimatedBottomBar({
    super.key,
    this.selectedIndex = 0,
    this.showElevation = true,
    this.iconSize = 24,
    this.backgroundColor,
    this.itemCornerRadius = 50,
    this.containerHeight = 56,
    this.animationDuration = const Duration(milliseconds: 270),
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    required this.items,
    required this.onItemSelected,
    this.curve = Curves.linear,
  }) : assert(items.length >= 3 && items.length <= 3);

  final int selectedIndex;
  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final List<BottomNavyBarItem> items;
  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;
  final double containerHeight;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? Theme.of(context).bottomAppBarColor;

    return SizedBox(

      height: 80,

      child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white24),

                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],

                ),
                child: Container(
                  width: 320,
                  height: 90,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: items.map((item) {
                      var index = items.indexOf(item);
                      return GestureDetector(
                        onTap: () => onItemSelected(index),
                        child: _ItemWidget(
                          item: item,
                          iconSize: iconSize,
                          isSelected: index == selectedIndex,
                          backgroundColor: bgColor,
                          itemCornerRadius: itemCornerRadius,
                          animationDuration: animationDuration,
                          curve: curve,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              )
          ),
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final double iconSize;
  final bool isSelected;
  final BottomNavyBarItem item;
  final Color backgroundColor;
  final double itemCornerRadius;
  final Duration animationDuration;
  final Curve curve;

  const _ItemWidget({
    required this.item,
    required this.isSelected,
    required this.backgroundColor,
    required this.animationDuration,
    required this.itemCornerRadius,
    required this.iconSize,
    this.curve = Curves.linear,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      selected: isSelected,
      child: AnimatedContainer(
        width: isSelected ? 80 : 80,
        height: double.maxFinite,
        duration: animationDuration,
        curve: curve,
        decoration: BoxDecoration(
          color: isSelected ? item.activeColor : Colors.transparent,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Container(
              width: isSelected ? 80 : 80,
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // IconTheme(
                  //   data: IconThemeData(
                  //     size: iconSize,
                  //     color: item.inactiveColor,
                  //   ),
                  //   child: item.icon,
                  // ),
                  Icon(
                   item.Icon1,

                    color: AppThemes.borderColor,
                  ),

                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: DefaultTextStyle.merge(
                style: TextStyle(
                    color: item.inactiveColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    fontFamily: AppThemes.font1),
                maxLines: 1,
                textAlign: item.textAlign,
                child: item.title,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavyBarItem {
  BottomNavyBarItem({
    required this.Icon1,
    this.icon,
    required this.title,
    this.activeColor = Colors.blue,
    this.textAlign,
    this.inactiveColor,
  });

  final Widget? icon;
  final IconData Icon1;
  final Widget title;
  final Color activeColor;
  final Color? inactiveColor;
  final TextAlign? textAlign;
}
