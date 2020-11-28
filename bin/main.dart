import "package:github_api/github_api.dart";

const baseUrl = "https://api.github.com";

void main(List<String> arguments) async {
  var username = System.getEnvironmentVariable("GITHUB_USERNAME");
  var accessToken = System.getEnvironmentVariable("GITHUB_TOKEN");

  var gitHubClient = GitHubClient(
    baseUrl: baseUrl,
    username: username,
    accessToken: accessToken,
  );
  var getOrganizationResponse = await gitHubClient.get("/repos/experimental-software/succedo");
  print(getOrganizationResponse.statusCode);
  print(getOrganizationResponse.formattedJsonBody);
}
