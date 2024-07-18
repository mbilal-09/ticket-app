// class Navigate {
//   const Navigate({required this.name});

//   final String name;

// }

import 'package:flutter/material.dart';

void navigate(BuildContext context, String name) {
  Navigator.pushNamed(context, name);
}
