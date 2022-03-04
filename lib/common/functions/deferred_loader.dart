import 'package:flutter/foundation.dart';
import 'package:qlevar_router/qlevar_router.dart';

class DeferredLoader extends QMiddleware {
  Future<dynamic> Function()? loader;

  DeferredLoader(this.loader);
  @override
  Future onEnter() async {
    await loader!();
    if (kDebugMode) print('users loaded');
  }
}
