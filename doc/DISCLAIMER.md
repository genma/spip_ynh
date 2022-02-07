## Configuration

How to configure this app: by an admin panel.

#### Multi-users support

 * Are LDAP and HTTP auth supported? **Yes**
 * Can the app be used by multiple users? **Yes**

## Migrate from SPIP2

**This is not considered as stable yet, please do it with care and only for testing!**

This package handle the migration from SPIP2 to SPIP. For that, your
SPIP2 application must be **up-to-date** in YunoHost. To ensure that, execute:

```bash
sudo yunohost app upgrade -u https://github.com/YunoHost-Apps/spip2_ynh spip2 --debug
```

You will then have to upgrade your SPIP2 application with this repository.
This can only be done from the command-line interface - e.g. through SSH. Once you're connected, you simply have to execute the following:

```bash
sudo yunohost app upgrade -u https://github.com/YunoHost-Apps/spip_ynh spip2 --debug
```

The `--debug` option will let you see the full output. If you encounter any issue, please paste it.

Note that a cron job will be executed at some time after the end of this
command. You must wait that before doing any other application operations!
You should see that SPIP is installed after that.
