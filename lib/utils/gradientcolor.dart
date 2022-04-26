import 'package:flutter/material.dart';
import 'package:todo/utils/gradientcolor.dart';
import 'package:todo/custom_colors.dart';

/*
*
* "!" Tells dart even if we have a variable
* defined as a Nullable type, it will not actually be null.
*/

Gradient gradient1 = LinearGradient(
  colors: [
    Colors.teal[600]!.withOpacity(0.8),
    Colors.green[500]!.withOpacity(0.8),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

Gradient gradient2 = LinearGradient(
  colors: [
    Colors.red[600]!.withOpacity(0.8),
    Colors.orange[500]!.withOpacity(0.8),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

Gradient gradient3 = LinearGradient(
  colors: [
    CustomColors.firebaseOrange.withOpacity(0.8),
    CustomColors.firebaseYellow.withOpacity(0.8),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
