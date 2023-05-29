import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ToLineHeight on num {
  double toLineHeight(num fontSize) {
    return (this / fontSize).sp;
  }
}

extension ToRowSizedBox on num {
  Widget toRowSizedBox() {
    return SizedBox(
      width: toDouble().w,
    );
  }
}

extension ToColumnSizedBox on num {
  Widget toColumnSizedBox() {
    return SizedBox(
      height: toDouble().h,
    );
  }
}
