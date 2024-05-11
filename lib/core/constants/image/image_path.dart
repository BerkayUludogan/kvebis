import 'package:flutter/material.dart';

enum ImagePaths {
  login('login'),
  splash('splashLogo'),
  createClass('createClass')
  ;

  const ImagePaths(this.value);
  final String value;
}

extension ExtensionImagePaths on ImagePaths {
  Widget toWidget({double? width, double? height}) {
    return Image.asset(
      withPathValue(value),
      height: height,
      width: width,
    );
  }

  String withPathValue(String path) => 'assets/images/$path.png';
}
