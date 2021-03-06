// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart = 2.7

import 'dart:html';

import 'package:async_helper/async_minitest.dart';

main() {
  test('Notification.requestPermission', () async {
    String permission = await Notification.requestPermission();
    expect(permission, isNotNull);
  });
}
