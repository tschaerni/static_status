# Stellar-Dashboard

Generate and serve a static status/health page, forked from [Cyclenerd/static_status](https://github.com/Cyclenerd/static_status)


![Screenshot](https://i.imgur.com/8bqHrpw.png)

## Configuration

Edit the [hostname list](status_files/status_hostname_list.txt) to configure the services that should be checked.  

In addition, you can edit [config](status_files/config):
```
# Title for the status page
MY_STATUS_TITLE="Status Page"

# Duration we wait for response (nc and curl).
MY_TIMEOUT="2"

# Duration we wait for response (only ping).
MY_PING_TIMEOUT="4"
MY_PING_COUNT="2"
```


## Usage

To start:
```
$ sudo docker-compose up -d
# The site will now be avilable at localhost:80, and will refresh once a minute.
```

To clear all data:
```
$ ./clear.sh
```
