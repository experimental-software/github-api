import "package:http/http.dart" as http;
import "package:meta/meta.dart";

class GitHubClient {
  final String baseUrl;
  final String userName;
  final String _accessToken;

  GitHubClient({
    @required this.baseUrl,
    this.userName,
    String accessToken,
  })  : _accessToken = accessToken,
        assert(baseUrl != null);

  Future<http.Response> get(String resource) async {
    if (!resource.startsWith("/")) {
      throw FormatException("Resource name needs to start with a slash.");
    }
    return await http.get("$baseUrl$resource");
  }
}
