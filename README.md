GO1 Tools
====

# Install service

```
./install.sh API_URL SERVICE_NAME
```

# Create MR

## Work MR

```
./mr.sh SERVICE_NAME source_branch target_branch title assignee_id
```

## Deploy staging

```
./mr_staging.sh SERVICE_NAME1 SERVICE_NAME2 SERVICE_NAME3
```

## Deploy production

```
./mr_prod.sh SERVICE_NAME1 SERVICE_NAME2 SERVICE_NAME3
```
