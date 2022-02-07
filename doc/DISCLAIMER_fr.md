## Configuration

Comment configurer cette application: via le panneau d'administration.

#### Support multi-utilisateurs

 * L'authentification LDAP et HTTP est-elle prise en charge? **Oui**
 * L'application peut-elle être utilisée par plusieurs utilisateurs? **Oui**

## Migration depuis SPIP2

**Ceci n'est pas encore considéré comme stable, veuillez le faire avec soin et uniquement pour test!**

Ce paquet gère la migration de SPIP2 vers SPIP. Pour cela, votre application SPIP2 doit être **à jour** dans YunoHost. Pour s'en assurer :

```bash
sudo yunohost app upgrade -u https://github.com/YunoHost-Apps/spip2_ynh spip2 --debug
```

Vous devrez ensuite mettre à jour votre application SPIP2 avec ce dépôt.
Cela ne peut se faire qu'à partir de l'interface en ligne de commande - par exemple via SSH. Une fois connecté, il vous suffit d'exécuter ce qui suit :

```bash
sudo yunohost app upgrade -u https://github.com/YunoHost-Apps/spip_ynh spip2 --debug
```

L'option `--debug` vous permettra de voir la sortie complète. Si vous rencontrez un problème, veuillez ouvrir une issue.

Notez qu'une tâche cron sera exécutée après la fin de cette commande. Vous devez attendre cela avant de faire toute autre opération d'application ! Vous devriez voir que SPIP est installé après cela.
