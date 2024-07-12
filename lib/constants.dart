
import 'package:flutter/material.dart';

double responsiveWidth(BuildContext context) {
  double maxScreenWidth = MediaQuery.of(context).size.width;
  return maxScreenWidth * 0.85;
}

const Color primaryColor = Color(0xFF1D3E5D);
const Color backgroundColor = Colors.white;