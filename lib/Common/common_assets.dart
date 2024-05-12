import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CommonAssets {

  static const String baseURL = 'https://apiuat.reeroute.in';

  static const String logo = 'assets/common/thilllalogo.png';
  static const String splash = 'assets/splash/splash.png';
  static const String group = 'assets/common/group1.png';
  static const String star = 'assets/common/star.png';
  static const String profile = 'assets/common/media.png';
  static const String sameer = 'assets/common/sameer.jpg';
  static const String sameerdp = 'assets/common/sameerdp.png';
  static const String location1 = 'assets/common/media2.png';
  static const String location2 = 'assets/common/media3.png';
  static const String github = 'assets/common/github.svg';
  static const String email = 'assets/common/email.svg';
  static const String contact = 'assets/common/contact.svg';
  static const String source = 'assets/common/source.png';





  static Widget getAssetsSvgImage(String imagePath,
      {double height = 40, double width = 40, Color? color}) {
    return SvgPicture.asset(
      imagePath,
      height: height,
      width: width,
      fit: BoxFit.cover,
      color: color,
    );
  }

  static Widget getNetworkImage(String imageUrl,
      {String defaultImage = logo,
        double height = 90,
        double width = 90}) {
    return imageUrl.isNotEmpty
        ? CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      fit: BoxFit.cover,
      filterQuality: FilterQuality.medium,
      errorWidget:
          (BuildContext context, String exception, dynamic stackTrace) {
        return getAssetsSvgImage(defaultImage,
            height: height, width: width);
      },
    )
        : getAssetsSvgImage(defaultImage, height: height, width: width);
  }
}