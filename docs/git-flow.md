# Git Flow

## Branches

Used branches are:
- `main branch` *- pattern `main`*
- `develop branch` *- pattern `develop`*
- `feature branches` *- pattern `fix/wrong-header-title`*
- `hotfix branches` *- pattern `hotfix/wrong-header-title`*

Feature branches should be merged into the `develop` branch, and the `develop` branch should be merged into the `main` branch (i.e. `feature > develop > main`).

Hotfix branches should be merged directly into the `main` branch (i.e `hotfix > main`), and the `develop` branch should then be rebased on the `main` branch.

The git tree should looks something like this:

```txt
*   ef33162 Merge branch 'release/v1.3.1' into main
| \
|  * 1c4c85f (release/v1.3.1) chore(bot): release v1.3.1
| /
*   1a2b3c4 Merge branch 'hotfix/security-headers' into main
| \
|  * 5d6e7f8 (hotfix/security-headers) fix(api): add security headers
| /
*   e92b3d2 Merge branch 'release/v1.3.0' into main
| \
|  * 3b6e7a8 (release/v1.3.0) chore(bot): release v1.3.0
| /
*   9a8c7c8 Merge branch 'develop' into main
| \
|  *   939c4c4 Merge branch 'pre-release/v1.3.0' into develop
|  | \
|  |  * 2ac6d3d (pre-release/v1.3.0) chore(bot): pre-release v1.3.0
|  | /
|  *   8b7c6d5 Merge branch 'feat/add-sso' into develop
|  | \
|  |  * 2a3b4c5 (feat/add-sso) feat(ui): use sso authentification
|  | /
|  *   895b0b6 Merge branch 'pre-release/v1.2.4' into develop
|  | \
|  |  * 854823b (pre-release/v1.2.4) chore(bot): pre-release v1.2.4
|  | /
|  *   9a8b7c6 Merge branch 'fix/navbar-responsive' into develop
|  | \
|  |  * 3e4f5g6 (fix/navbar-responsive) fix(ui): handle responsive on navbar
|  | /
| /
* 7f8g9h0 Merge branch 'release/v1.2.3' into main
...
* c383ae0 chore(global): initial commit
```

> The previous example is using `Merge commit` method for illustration, it is recommended to use the `Rebase merge` method to keep a linear history (See. [merge methods on GitHub](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/about-merge-methods-on-github))

## Conventional commits

Commits should follow the specification of [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/), it is possible to add the [VSCode extension](https://github.com/vivaxy/vscode-conventional-commits) to facilitate creating commits.

A PR must be made with a branch up-to-date with the `develop` branch (use rebase to keep your branch up-to-date, not merge) before requesting a fusion, and the fusion must be requested into `develop`.

## Semantic versionning

All generated tags should follow the [Semantic Versioning specs](https://semver.org/).

## Tags

Tags should be managed in CI/CD using [release-please](https://github.com/googleapis/release-please) and [release-please-actions](https://github.com/googleapis/release-please-actions). Each release or pre-release should trigger the build and release of packages, images, charts, etc... depending on the application scope.

### Pre-release

It should be trigger on every push on the `develop` branch (and the pre-release PR merged by hand when ready).

| Tag type | Pattern       |
| -------- | ------------- |
| Git      | `v1.2.3-rc.4` |
| Npm      | `1.2.3-rc.4`  |
| Docker   | `1.2.3-rc.4`  |
| Helm     | `1.2.3-rc.4`  |

### Release 

It should be trigger on every push on the `main` branch (and the release PR merged by hand when ready).

| Tag type | Tag Pattern |
| -------- | ----------- |
| Git      | `v1.2.3`    |
| Npm      | `1.2.3`     |
| Docker   | `1.2.3`     |
| Helm     | `1.2.3`     |

### Helm charts rules

- Each new pre-release / release of the application generates a new chart (version in `1.2.3-rc.4` format).
- A new pre-release / release of the application increases the `major`, `minor` or `patch` version of the chart in a reciprocal way to the application increase (by adding `-rc.` as long as the next application version is not validated).
- Each new release of the chart that is not related to the application is carried out with the latest stable image (version in `1.2.3` format).
- Each new pre-release / release of the application should use the last stable chart version.
- A major version of the chart can be increased without the application being involved if it is no longer compatible with the previous version.
- A new version of the chart follows standard Semantic Versioning.

## Environments

| Env Name | ArgoCD Target Revision    | Description                                                            | Flow                            |
| -------- | ------------------------- | ---------------------------------------------------------------------- | ------------------------------- |
| personal | Git branch `feat/add-sso` | (Optional) Test active development in cloud condition.                 | -                               |
| dev      | Helm chart `1.2.3-rc.4`   | Test active development in a shared environment working with the team. | `Step 1` - Technical validation |
| qualif   | Helm chart `1.2.3-rc.4`   | Business tests for release validation.                                 | `Step 2` - Business validation  |
| preprod  | Helm chart `1.2.3-rc.4`   | Stress tests, perfs tests, security tests in prod condition.           | `Step 2` - Technical validation |
| prod     | Helm chart `1.2.3`        | Userland, where all the magic happen.                                  | `Step 3` - Shipping to users    |

## Cheatsheet

### Conventional commits

The commit message should be structured as follows:

```txt
<type>[(<scope>)][!]: <description>

[optional body]

[optional footer(s)]
```

Types definition:

| Type       | Description                                                    |
| ---------- | -------------------------------------------------------------- |
| `build`    | Changes that affect the build system or external dependencies. |
| `chore`    | Other changes that don't modify src or test files.             |
| `ci`       | Changes to CI configuration files and scripts.                 |
| `docs`     | Documentation only changes.                                    |
| `feat`     | A new feature.                                                 |
| `fix`      | A bug fix.                                                     |
| `perf`     | A code change that improves performance.                       |
| `refactor` | A code change that neither foxes a bug nor adds a feature.     |
| `revert`   | Reverts a previous commit.                                     |
| `style`    | Changes that do not affect the meaning of the code.            |
| `test`     | Adding missing tests or correcting existing tests.             |

### Semantic versionning

Given a version number `MAJOR.MINOR.PATCH`, increment the:
- `MAJOR` version when you make incompatible API changes
- `MINOR` version when you add functionality in a backward compatible manner
- `PATCH` version when you make backward compatible bug fixes

> Additional labels for pre-release and build metadata are available as extensions to the `MAJOR.MINOR.PATCH` format (for example with `-rc.` > `MAJOR.MINOR.PATCH-rc.CANDIDATE`).

### Git

#### Aliases

```ini
# ~/.gitconfig

[alias]
  aa = add -A
  aop = "!f() { git aa && git oopn && git push -f; }; f"
  ap = add -p
  br = branch
  bv = br -vv
  ci = commit
  co = checkout
  cm = commit -m
  df = diff
  ds = diff --staged
  h = log --format='%C(yellow)%h%Creset %C(red)%d%Creset %s %Cgreen(%cr) %C(blue)<%an>%Creset' --graph
  lg = log --oneline --decorate --graph
  oops = commit --amend
  oopn = oops --no-edit
  pf = push --force-with-lease --force-if-includes
  psup = push --set-upstream origin $(git_current_branch)
  rb = rebase
  rba = rebase --abort
  rbc = rebase --continue
  rbi = rebase --interactive
  sre = "!f() { git log -S$1 --pickaxe-regex ; }; f"
  st = status
  sw = switch
  unstage = reset HEAD
  us = unstage
  root = rev-parse --show-toplevel
```

#### Create a feature branch

```sh
# Put the head on the `develop` branch
git checkout develop

# Pull `develop` branch updates
git pull

# Create and checkout on the branch `feat/my-feature-description`
git checkout -b feat/my-feature-description

# Add files to the staging area
git add -A

# Create a commit
git commit -m 'feat: my feature description'

# Push the branch to remote
git push --set-upstream origin feat/my-feature-description

# Create a pull request
gh pr create --fill --base main --head develop
```

#### Rebase a branch on another

```sh
# Put the head on the `develop` branch
git checkout develop

# Pull `develop` branch updates
git pull

# Put the head on the `feat/my-feature-description` branch
git checkout feat/my-feature-description

# Rebase the `feat/my-feature-description` branch on the recently pulled `develop` branch
git rebase develop

## Optionaly resolve conflicts

# Push `feat/my-feature-description` updates to remote
git push --force-with-lease --force-if-includes
```

#### Add files to the staging area with interactive mode

```sh
# Add all files interactively
git add -A -p

---

# Add given file interactively
git add -p path/to/file
```
