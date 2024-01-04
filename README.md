# s3upload

## Description
This script makes use of a progam called `shrimp` to upload all files in a folder into an S3 bucket.

## Supported Operating Systems
- Ubuntu
  - 20.04 Focal Fossa
  - 22.04 Jammy Jellyfish
- EL
  - Oracle, Rocky
    - 9
  - Centos
    - 8 Stream
    - 7
  - Kali

## Dependencies
- [aws-cli]
- [shrimp]

## Usage
1. Install dpenendices on your machine.
2. Clone this project onto your target system that has the files you want to upload to the S3 bucket.
```bash
git clone https://github.com/opzesty/s3upload.git
```
3. Create a symlink in the root of this project that is labeled the same as the s3 bucket you want to upload to.
```bash
ln -s /path/to/your/files <symlink_bucket_name>
```
4. Run the shell script.
```bash
./upload_s3.sh  <symlink_bucket_name>
```

[aws-cli]: https://aws.amazon.com/cli/
[shrimp]: https://github.com/stefansundin/shrimp/
