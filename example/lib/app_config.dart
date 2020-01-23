
import 'package:env_var_annotation/annotations.dart';

part 'app_config.g.dart';

@Env([
  EnvVar("myPath", "PATH")
])
class AppConfig {

}