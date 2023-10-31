

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/style.dart';

AppBar buildAppBar({ final String? title}) {
  return AppBar(
    leading: Center(
      child: SvgPicture.asset('assets/images/arrow1.svg',),),
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title:Text(
      title ??'',
      textAlign: TextAlign.center,
      style: Style.style25,

    ) ,
  );}