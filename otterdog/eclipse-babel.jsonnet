local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-babel') {
  settings+: {
    default_repository_permission: "none",
    dependabot_alerts_enabled_for_new_repositories: false,
    dependabot_security_updates_enabled_for_new_repositories: false,
    dependency_graph_enabled_for_new_repositories: false,
    members_can_change_project_visibility: false,
    members_can_change_repo_visibility: true,
    members_can_delete_repositories: true,
    packages_containers_internal: false,
    packages_containers_public: false,
    readers_can_create_discussions: true,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
  },
  _repositories+:: [
    orgs.newRepo('babel-website') {
      allow_update_branch: false,
      default_branch: "master",
      dependabot_alerts_enabled: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('plugins') {
      allow_update_branch: false,
      default_branch: "master",
      dependabot_alerts_enabled: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('server') {
      allow_update_branch: false,
      default_branch: "master",
      dependabot_alerts_enabled: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('translations') {
    }
  ],
}
