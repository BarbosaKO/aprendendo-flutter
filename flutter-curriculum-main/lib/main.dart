import 'dart:io' show Platform;
import 'package:flutter/material.dart';

import 'android/app.dart';
import 'ios/app.dart';

void main() =>
    Platform.isIOS ? runApp(const IOSApp()) : runApp(const AndroidApp());
