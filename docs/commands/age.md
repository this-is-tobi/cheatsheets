# Age

## Keys

### Generate a key pair

```sh
age-keygen -o key.txt
```

### Display public key

```sh
grep public key.txt
```

## Encryption & Decryption

### Encrypt a file (to recipient)

```sh
age -r <recipient_public_key> -o <file>.age <file>
```

### Encrypt a file (multiple recipients)

```sh
age -r <recipient1> -r <recipient2> -o <file>.age <file>
```

### Encrypt a file with passphrase

```sh
age -p -o <file>.age <file>
```

### Decrypt a file

```sh
age -d -i key.txt -o <file> <file>.age
```

### Decrypt a file with passphrase

```sh
age -d -o <file> <file>.age
```

## Misc

### Use age with stdin/stdout

```sh
cat <file> | age -r <recipient_public_key> > <file>.age
cat <file>.age | age -d -i key.txt > <file>
```

### Generate key in YAML format (for Kubernetes Sealed Secrets)

```sh
age-keygen | kubeseal --cert <cert.pem> --format yaml
```
