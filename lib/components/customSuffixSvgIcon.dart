import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class customSufixSvg extends StatelessWidget {
  const customSufixSvg({
    Key? key, required this.SvgIcon,
  }) : super(key: key);
  final String SvgIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13,horizontal: 8),
      child: SvgPicture.asset(SvgIcon,
          height:20,width:20),
    );
  }
}