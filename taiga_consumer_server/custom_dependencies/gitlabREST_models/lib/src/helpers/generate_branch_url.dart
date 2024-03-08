/// This function is used to create the url based on the bool 
/// [removeMergedBranches] if its `True` will return the `url` to delete all
/// the merged branches, if is not
String generateBranchUrl({
  required String gitlabApiUrl,
  required String projectId,
  required bool removeMergedBranches,
  String? branchName,
}) {
  if (removeMergedBranches) {
    final url = '$gitlabApiUrl/projects/repository/merged_branches';
    return url;
  } else {
    return '$gitlabApiUrl/projects/$projectId/repository/branches/$branchName';
  }
}
