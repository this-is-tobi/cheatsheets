# Cheatsheets :notebook_with_decorative_cover:

A set of personal cheat sheets ready to use with [cheat](https://github.com/cheat/cheat).

## Sheets

The following cheatsheets are available :

| Sheet name                        | Description                       |
| --------------------------------- | --------------------------------- |
| [ansible](./sheets/ansible)       | useful commands for ansible       |
| [buildx](./sheets/buildx)         | useful commands for docker buildx |
| [git-flow](./sheets/git-flow)     | standard git flow description     |
| [helm](./sheets/helm)             | useful commands for helm          |
| [k9s](./sheets/k9s)               | useful commands for k9s           |
| [kubectl](./sheets/kubectl)       | useful commands for kubectl       |
| [openssl](./sheets/openssl)       | useful commands for openssl       |
| [pg_dump](./sheets/pg_dump)       | useful commands for pg_dump       |
| [pg_restore](./sheets/pg_restore) | useful commands for pg_restore    |
| [sql](./sheets/sql)               | SQL language reminder             |
| [vim](./sheets/vim)               | useful commands for vim           |

## Import

Sheets can be imported with the following command :

```sh
curl -fsSL https://raw.githubusercontent.com/this-is-tobi/tools/main/shell/clone-subdir.sh | bash -s -- \
  -u "https://github.com/this-is-tobi/cheatsheets" -s "sheets" -o "$HOME/.config/cheat/cheatsheets/personal" -d
```

Change the output folder accordingly to your needs / cheat configuration.

> [!TIP]
> Check the script options with the helper flag :
> ```sh
> curl -fsSL https://raw.githubusercontent.com/this-is-tobi/tools/main/shell/clone-subdir.sh | bash -s -- -h
> ```
