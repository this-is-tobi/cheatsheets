# Gpg

## Keys

### Generate a new key

```sh
gpg --full-generate-key
```

### List keys

```sh
gpg --list-keys
```

### List secret keys

```sh
gpg --list-secret-keys
```

### Export public key

```sh
gpg --armor --export <email>
```

### Export secret key

```sh
gpg --armor --export-secret-key <email>
```

### Import key

```sh
gpg --import <keyfile>
```

### Delete public key

```sh
gpg --delete-key <email>
```

### Delete secret key

```sh
gpg --delete-secret-key <email>
```

## Encryption & Decryption

### Encrypt a file (to recipient)

```sh
gpg --output <file>.gpg --encrypt --recipient <email> <file>
```

### Decrypt a file

```sh
gpg --output <file> --decrypt <file>.gpg
```

### Encrypt a file with symmetric cipher

```sh
gpg --symmetric <file>
```

### Decrypt a symmetric file

```sh
gpg --output <file> --decrypt <file>.gpg
```

## Signing & Verification

### Sign a file

```sh
gpg --armor --output <file>.asc --sign <file>
```

### Verify a signed file

```sh
gpg --verify <file>.asc
```

### Create a detached signature

```sh
gpg --armor --output <file>.sig --detach-sign <file>
```

### Verify a detached signature

```sh
gpg --verify <file>.sig <file>
```

## Misc

### Trust a key

```sh
gpg --edit-key <email>
# then use 'trust' command in the prompt
```

### Refresh keys from keyserver

```sh
gpg --refresh-keys
```

### Send key to keyserver

```sh
gpg --keyserver <server> --send-keys <keyid>
```
