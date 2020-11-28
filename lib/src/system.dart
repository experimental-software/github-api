import "dart:io";

class System {
  static String getEnvironmentVariable(String key) {
    var env = Platform.environment;
    if (env.containsKey(key)) {
      return Platform.environment[key];
    } else {
      return null;
    }
  }
}
