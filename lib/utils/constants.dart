
import 'package:flutter/material.dart';

const double kDefaultPadding = 20.0;

var whiteBoxShadow = BoxDecoration(
  color: Colors.transparent,
  borderRadius: const BorderRadius.all(Radius.circular(50)),
  boxShadow: [
    BoxShadow(
      color: Colors.white.withOpacity(0.7),
      spreadRadius: 0,
      blurRadius: 10,
      offset: const Offset(-1, 1),
    ),
  ],
);

const pageTransitionsTheme = PageTransitionsTheme(builders: <TargetPlatform, PageTransitionsBuilder>{
  TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
});
