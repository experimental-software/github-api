import "package:github_api/github_api.dart";
import "dart:io";

const baseUrl = "https://api.github.com";

void main(List<String> arguments) async {
  var username = System.getEnvironmentVariable("GITHUB_USERNAME");
  var accessToken = System.getEnvironmentVariable("GITHUB_TOKEN");

  if (arguments.isEmpty) {
    throw "No request path provided.";
  }

  var gitHubClient = GitHubClient(
    baseUrl: baseUrl,
    username: username,
    accessToken: accessToken,
  );
  var getOrganizationResponse = await gitHubClient.get(arguments.first);

  stderr.writeln(getOrganizationResponse.statusCode);
  print(getOrganizationResponse.formattedJsonBody);
}
