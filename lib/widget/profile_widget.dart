import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileWidget extends StatelessWidget {
  final String code;

  const ProfileWidget({
    Key? key,
    required this.code,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlImage = 'assets/users/$code.svg';

    return SvgPicture.asset(
      urlImage,
      height: 30,
      width: 30,
      fit: BoxFit.cover,
    );
  }
}
