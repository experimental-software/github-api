import "package:http/http.dart" as http;
import "package:meta/meta.dart";
import "dart:convert";

class GitHubClient {
  final String baseUrl;
  final String username;
  final String _accessToken;

  GitHubClient({
    @required this.baseUrl,
    this.username,
    String accessToken,
  })  : _accessToken = accessToken,
        assert(baseUrl != null);

  Future<http.Response> get(String resource) async {
    if (!resource.startsWith("/")) {
      throw FormatException("Resource name needs to start with a slash.");
    }

    var headers = <String, String>{};

    if (username != null && _accessToken != null) {
      headers["Authorization"] = "Basic " + base64Encode(utf8.encode("$username:$_accessToken"));
    }

    return await http.get("$baseUrl$resource", headers: headers);
  }
}

extension JsonResponse on http.Response {
  get jsonBody {
    return json.decode(body);
  }

  String get formattedJsonBody {
    var encoder = new JsonEncoder.withIndent("  ");
    return encoder.convert(this.jsonBody);
  }
}
