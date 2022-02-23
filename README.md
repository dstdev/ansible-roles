# DST General Roles

Add to an existing ansible directory as its roles directory
```
git submodule add git@github.com:dstdev/ansible-roles.git roles
```

# Status

| Role Name        | Status      | Dependencies |
|------------------|-------------|--------------|
| beegfs-client    | production  |              |
| common           | development |              |
| docker           |             |              |
| docker-compose   |             |              |
| datalake         |             |              |
| fail2ban         |             |              |
| healthcheck-cron |             |              |
|                  |             |              |




# Development

Creating a new role

    ansible-galaxy role init <name of role>

## Documentation
[Good example](https://github.com/cloudalchemy/ansible-prometheus) can be found here for what documentation should look like
