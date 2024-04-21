git-default-branch() {
  git symbolic-ref refs/remotes/origin/HEAD | awk -F'[/]' '{print $NF}'
}

git-checkout-default-branch() {
  git checkout "$(git-default-branch)"
}

git-update-default-branch() {
  git remote set-head origin --auto
}

git-delete-merged-branch() {
  PROTECT_BRANCHES='main|master|staging|release-candidate'
  git fetch --prune
  git branch --merged | grep -E -v "\*|${PROTECT_BRANCHES}$" | xargs git branch -d
}
