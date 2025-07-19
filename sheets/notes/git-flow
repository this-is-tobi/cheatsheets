# Git Flow

## Branches

Used branches are :
- `main branch` *- pattern `main`*
- `develop branch` *- pattern `develop`*
- `feature branches` *- pattern `feat/wrong-header-title`*
- `hotfix branches` *- pattern `hotfix/wrong-header-title`*

Feature branches should be merged into the `develop` branch, and the `develop` branch should be merged into the `main` branch (i.e. `feature > develop > main`).

Hotfix branches should be merged directly into the `main` branch (i.e `hotfix > main`), and the `develop` branch should then be rebased on the `main` branch.

The git tree should looks something like this :

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

## Conventional commits

Commits should follow the specification of [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/), it is possible to add the [VSCode extension](https://github.com/vivaxy/vscode-conventional-commits) to facilitate creating commits.

A PR must be made with a branch up-to-date with the `develop` branch (use rebase to keep your branch up-to-date, not merge) before requesting a fusion, and the fusion must be requested into `develop`.

## Semmantic versioning

Tags should follow the [Semantic Versioning](https://semver.org/) specification and should be managed in CI/CD using tools like:
- *apps / packages -* [release-please](https://github.com/googleapis/release-please) and [release-please-action](https://github.com/googleapis/release-please-action).
- *helm chart -* [chart-releaser](https://github.com/helm/chart-releaser) and [chart-releaser-action](https://github.com/helm/chart-releaser-action).

### Tag patterns

#### Pre-release

Every push on the `develop` branch should trigger the creation or update of the pre-release PR.

| Tag type | Pattern       |
| -------- | ------------- |
| Git      | `v1.2.3-rc.4` |
| Npm      | `1.2.3-rc.4`  |
| Docker   | `1.2.3-rc.4`  |
| Helm     | `1.2.3-rc.4`  |

#### Release 

Every push on the `develop` branch should trigger the creation or update of the release PR.

| Tag type | Pattern  |
| -------- | -------- |
| Git      | `v1.2.3` |
| Npm      | `1.2.3`  |
| Docker   | `1.2.3`  |
| Helm     | `1.2.3`  |

### Helm

Helm release should be triggered on every application pre-releease / release and should follow these rules:
- Helm chart could be bumped independently from the target app version (following semver).
- Helm chart should follow application version bump:
  - Increase major tag if application got major tag bump.
  - Increase minor tag if application got minor tag bump.
  - Increase patch tag if application got patch tag bump.
  - Increase rc tag if application got rc tag bump.

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

### Semmantic versioning

Given a version number `MAJOR.MINOR.PATCH`, increment the:
- `MAJOR` version when you make incompatible API changes.
- `MINOR` version when you add functionality in a backward compatible manner.
- `PATCH` version when you make backward compatible bug fixes.

> Additional labels for pre-release and build metadata are available as extensions to the `MAJOR.MINOR.PATCH` format (ex: `MAJOR.MINOR.PATCH-rc.RELEASE_CANDIDATE` - `1.2.3-rc.4`).

### Git

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
