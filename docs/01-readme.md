# Cheatsheets :notebook_with_decorative_cover:

A set of personal cheat sheets ready to use with [cheat](https://github.com/cheat/cheat).

## Sheets

### Commands

| Sheet name                                 | Description                       |
| ------------------------------------------ | --------------------------------- |
| [age](./commands/age)               | useful commands for age           |
| [ansible](./commands/ansible)       | useful commands for ansible       |
| [buildx](./commands/buildx)         | useful commands for docker buildx |
| [gh](./commands/gh)                 | useful commands for gh            |
| [git](./commands/git)               | useful commands for git           |
| [helm](./commands/helm)             | useful commands for helm          |
| [k9s](./commands/k9s)               | useful commands for k9s           |
| [kubectl](./commands/kubectl)       | useful commands for kubectl       |
| [openssl](./commands/openssl)       | useful commands for openssl       |
| [pg_dump](./commands/pg_dump)       | useful commands for pg_dump       |
| [pg_restore](./commands/pg_restore) | useful commands for pg_restore    |
| [vim](./commands/vim)               | useful commands for vim           |

### Notes

| Sheet name                          | Description                   |
| ----------------------------------- | ----------------------------- |
| [git-flow](./notes/git-flow) | standard git flow description |
| [sql](./notes/sql)           | SQL language reminder         |

## Import

Assuming this [configuration file](https://github.com/this-is-tobi/dotfiles/blob/main/dotfiles/.config/cheat/conf.yml), sheets can be imported with the following command :

```sh
curl -fsSL https://raw.githubusercontent.com/this-is-tobi/tools/main/shell/clone-subdir.sh | bash -s -- \
  -u "https://github.com/this-is-tobi/cheatsheets" -s "sheets" -o "$HOME/.config/cheat/cheatsheets/personal" -d
```

> [!TIP]
> Change the output folder accordingly to your needs / cheat configuration.
>
> Check the script options with the helper flag :
> ```sh
> curl -fsSL https://raw.githubusercontent.com/this-is-tobi/tools/main/shell/clone-subdir.sh | bash -s -- -h
> ```
