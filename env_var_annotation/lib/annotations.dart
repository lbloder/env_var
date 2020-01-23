// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library env_var_annotation;

class Env {
  final List<EnvVar> envVars;

  const Env(this.envVars);
}

class EnvVar {
  final String name;
  final String value;

  const EnvVar(this.name, this.value);
}
