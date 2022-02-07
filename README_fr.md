# SPIP pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/spip.svg)](https://dash.yunohost.org/appci/app/spip) ![](https://ci-apps.yunohost.org/ci/badges/spip.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/spip.maintain.svg)  
[![Installer SPIP avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=spip)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer SPIP rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

CMS conçu pour l'édition collaborative et le multilinguisme

**Version incluse :** 4.0.1~ynh1

**Démo :** https://demo.spip.net/

## Avertissements / informations importantes

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

## Documentations et ressources

* Site officiel de l'app : http://www.spip.net/
* Documentation officielle utilisateur : https://www.spip.net/en_rubrique57.html
* Documentation officielle de l'admin : https://www.spip.net/en_rubrique209.html
* Dépôt de code officiel de l'app : https://git.spip.net/spip/spip
* Documentation YunoHost pour cette app : https://yunohost.org/app_spip
* Signaler un bug : https://github.com/YunoHost-Apps/spip_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/spip_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/spip_ynh/tree/testing --debug
ou
sudo yunohost app upgrade spip -u https://github.com/YunoHost-Apps/spip_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps