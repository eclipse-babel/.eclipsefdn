local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-babel') {
  settings+: {
    readers_can_create_discussions: true,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('babel-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('plugins') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('server') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      web_commit_signoff_required: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
    orgs.newRepo('translations') {
      allow_merge_commit: true,
      delete_branch_on_merge: false,
      workflows+: {
        actions_can_approve_pull_request_reviews: false,
      },
    },
  ],
}
