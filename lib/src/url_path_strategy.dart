//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// Dart/Flutter (DF) Packages by dev-cetera.com & contributors. The use of this
// source code is governed by an MIT-style license described in the LICENSE
// file located in this project's root directory.
//
// See: https://opensource.org/license/mit
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'package:flutter/foundation.dart' show kIsWeb;

import 'noop_url_strategy.dart'
    if (dart.library.io) 'noop_url_strategy.dart'
    if (dart.library.html) 'package:flutter_web_plugins/flutter_web_plugins.dart'
    if (dart.library.wasm) 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// Initializes the URL path strategy for the application.
///
/// On web platforms, it sets the [web_plugins.PathUrlStrategy] to remove the
/// '#' from URLs. On non-web platforms, it performs a no-op.
@pragma('vm:prefer-inline')
void configureUrlPathStrategy() {
  if (kIsWeb) {
    try {
      setUrlStrategy(PathUrlStrategy());
    } catch (_) {
      // Ignore errors during hot reloading since setUrlStrategy can only be set once.
    }
  }
}
