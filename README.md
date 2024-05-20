# Cheatsheets :notebook_with_decorative_cover:

A set of personal cheat sheets ready to use with [cheat](https://github.com/cheat/cheat).

## Sheets

The following cheatsheets are available :

| Sheet name                  | Description                 |
| --------------------------- | --------------------------- |
| [kubectl](./sheets/kubectl) | useful commands for kubectl |

## Import

Sheets can be imported with the following command :

```sh
curl -s https://raw.githubusercontent.com/this-is-tobi/tools/main/shell/clone-subdir.sh | bash -s -- \
  -u "https://github.com/this-is-tobi/cheatsheets" -s "sheets" -o "$HOME/.config/cheat/cheatsheets/personal" -d
```

Change the output folder accordingly to your needs / cheat configuration.

> [!TIP]
> Check the script options with the helper flag :
> ```sh
> curl -s https://raw.githubusercontent.com/this-is-tobi/tools/main/shell/clone-subdir.sh | bash -s -- -h
> ```
