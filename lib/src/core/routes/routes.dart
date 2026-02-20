import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final routerProvider = Provider<Map<String, Widget Function(BuildContext)>>(
  (ref) => {},
);
