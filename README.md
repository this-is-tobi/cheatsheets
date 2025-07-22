# Cheatsheets :notebook_with_decorative_cover:

A set of personal cheat sheets ready to use with [cheat](https://github.com/cheat/cheat).

## Sheets

### Commands

| Sheet name                                 | Description                       |
| ------------------------------------------ | --------------------------------- |
| [ansible](./sheets/commands/ansible)       | useful commands for ansible       |
| [buildx](./sheets/commands/buildx)         | useful commands for docker buildx |
| [gh](./sheets/commands/gh)                 | useful commands for gh            |
| [git](./sheets/commands/git)               | useful commands for git           |
| [helm](./sheets/commands/helm)             | useful commands for helm          |
| [k9s](./sheets/commands/k9s)               | useful commands for k9s           |
| [kubectl](./sheets/commands/kubectl)       | useful commands for kubectl       |
| [openssl](./sheets/commands/openssl)       | useful commands for openssl       |
| [pg_dump](./sheets/commands/pg_dump)       | useful commands for pg_dump       |
| [pg_restore](./sheets/commands/pg_restore) | useful commands for pg_restore    |
| [vim](./sheets/commands/vim)               | useful commands for vim           |

### Notes

| Sheet name                          | Description                   |
| ----------------------------------- | ----------------------------- |
| [git-flow](./sheets/notes/git-flow) | standard git flow description |
| [sql](./sheets/notes/sql)           | SQL language reminder         |

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
