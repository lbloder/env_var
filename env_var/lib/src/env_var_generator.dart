// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
import 'dart:io';
import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'package:env_var_annotation/annotations.dart';

class EnvVarGenerator extends GeneratorForAnnotation<Env> {
  @override
  String? generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    if (element.kind != ElementKind.CLASS) {
      return null;
    }
      final List<DartObject> list = annotation.read('envVars').listValue;
      final List<String> stringList = list.map((e) {
        final name = e.getField("name")?.toStringValue();
        final value = e.getField("value")?.toStringValue();
        return "const String ${name} = \"${Platform.environment[value]}\";";
      }).toList();
      return stringList.join("\n");
  }
}
