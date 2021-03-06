import 'package:flutter/material.dart';

import 'app.dart';

export 'dart:math';

// system export
export 'package:flutter/material.dart';
export 'package:flutter/services.dart';
export 'package:get/get.dart' hide Response, HeaderValue, MultipartFile, FormData;
export 'package:intl/intl.dart' hide TextDirection;

// project export
export 'theme.dart';
export 'util/util.dart';
export 'widgets/widgets.dart';

void main() {
  runApp(App());
}
