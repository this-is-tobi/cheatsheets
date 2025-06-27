# Openssl

## Generate a self-signed SSL certificate.

### Create a 2048-bit private key

```sh
openssl genrsa -out server.key 2048
```

### Create the Certificate Signing Request (CSR)

```sh
openssl req -new -key server.key -out server.csr
```

### Sign a certificate using a private key and CSR

```sh
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
```

## Show certificate infos

### Show certificate information for a certificate signing request

```sh
openssl req -text -noout -in server.csr
```

### Show certificate information for generated certificate

```sh
openssl x509 -text -noout -in server.crt 
```

### Get the sha256 fingerprint of a certificate

```sh
openssl x509 -in server.crt -noout -sha256 -fingerprint
```

### View certificate expiration

```sh
echo | openssl s_client -connect <hostname>443 2> /dev/null | \
  awk '/-----BEGIN/,/END CERTIFICATE-----/' | \
  openssl x509 -noout -enddate
```

### Generate Diffie-Hellman parameters

```sh
openssl dhparam -outform PEM -out dhparams.pem 2048
```

### Test an https server

```sh
openssl s_client -connect 10.240.2.130:433
```

## Password

### Generate strong secret with openssl

```sh
openssl rand -base64 36
```

## High-quality options for openssl for symmetric (secret key) encryption

> This is what knowledgable people consider a good set of options for 
> symmetric encryption with openssl to give you a high-quality result.
> Also, always remember that the result is only as good as the password
> you use. You must use a strong password otherwise encryption is meaningless.

### Encrypt

```sh
openssl enc -e -aes-256-cbc \
  -salt \
  -pbkdf2 \
  -iter 1000000 \
  -md sha512 \
  -base64 \
  -in somefile \
  -out somefile.enc
```

### Decrypt

```sh
openssl enc -d -aes-256-cbc \
  -salt \
  -pbkdf2 \
  -iter 1000000 \
  -md sha512 \
  -base64 \
  -in somefile.enc \
  -out somefile
```
