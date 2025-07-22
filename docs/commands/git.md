# Git

## Configuration

### Set user name and email

```sh
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```

### List current configuration

```sh
git config --list
```

## Repository

### Initialize a new repository

```sh
git init
```

### Clone a repository

```sh
git clone <repo_url>
```

## Staging & Committing

### Check status

```sh
git status
```

### Add files to staging

```sh
git add <file>
```

### Add all files

```sh
git add -A
```

### Commit changes

```sh
git commit -m "commit message"
```

## Branching

### List branches

```sh
git branch
```

### Create new branch

```sh
git checkout -b <branch_name>
```

### Switch branch

```sh
git checkout <branch_name>
```

### Delete branch

```sh
git branch -d <branch_name>
```

## Merging & Rebasing

### Merge branch

```sh
git merge <branch_name>
```

### Rebase branch

```sh
git rebase <branch_name>
```

## Remote

### List remotes

```sh
git remote -v
```

### Add remote

```sh
git remote add <name> <url>
```

### Remove remote

```sh
git remote remove <name>
```

## Pull & Push

### Pull changes

```sh
git pull
```

### Push changes

```sh
git push
```

### Push to specific branch

```sh
git push origin <branch_name>
```

## Logs & Diffs

### Show commit log

```sh
git log
```

### Show log on one line per commit

```sh
git log --oneline
```

### Show file changes

```sh
git diff
```

## Undo

### Unstage file

```sh
git reset <file>
```

### Discard local changes

```sh
git checkout -- <file>
```

### Amend last commit

```sh
git commit --amend
```

## Stash

### Stash changes

```sh
git stash
```

### List stashes

```sh
git stash list
```

### Apply last stash

```sh
git stash apply
```

## Tags

### List tags

```sh
git tag
```

### Create tag

```sh
git tag <tag_name>
```

### Push tags

```sh
git push --tags
```
