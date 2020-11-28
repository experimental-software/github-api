import "package:github_api/github_api.dart";

const baseUrl = "https://api.github.com";

void main(List<String> arguments) async {
  var gitHubClient = GitHubClient(baseUrl: baseUrl);
  var getOrganizationResponse = await gitHubClient.get("/orgs/experimental-software");
  print(getOrganizationResponse.body);
}
