# Skels

## About Skels

## Schema



## Fetch

> GET /v2/accounts/{ACCOUNT_ID}/skels

```shell
curl -v -X GET \
    -H "X-Auth-Token: {AUTH_TOKEN}" \
    http://{SERVER}:8000/v2/accounts/{ACCOUNT_ID}/skels
```

## Create

> PUT /v2/accounts/{ACCOUNT_ID}/skels

```shell
curl -v -X PUT \
    -H "X-Auth-Token: {AUTH_TOKEN}" \
    http://{SERVER}:8000/v2/accounts/{ACCOUNT_ID}/skels
```

## Fetch

> GET /v2/accounts/{ACCOUNT_ID}/skels/{THING_ID}

```shell
curl -v -X GET \
    -H "X-Auth-Token: {AUTH_TOKEN}" \
    http://{SERVER}:8000/v2/accounts/{ACCOUNT_ID}/skels/{THING_ID}
```

## Change

> POST /v2/accounts/{ACCOUNT_ID}/skels/{THING_ID}

```shell
curl -v -X POST \
    -H "X-Auth-Token: {AUTH_TOKEN}" \
    http://{SERVER}:8000/v2/accounts/{ACCOUNT_ID}/skels/{THING_ID}
```

## Patch

> PATCH /v2/accounts/{ACCOUNT_ID}/skels/{THING_ID}

```shell
curl -v -X PATCH \
    -H "X-Auth-Token: {AUTH_TOKEN}" \
    http://{SERVER}:8000/v2/accounts/{ACCOUNT_ID}/skels/{THING_ID}
```

## Remove

> DELETE /v2/accounts/{ACCOUNT_ID}/skels/{THING_ID}

```shell
curl -v -X DELETE \
    -H "X-Auth-Token: {AUTH_TOKEN}" \
    http://{SERVER}:8000/v2/accounts/{ACCOUNT_ID}/skels/{THING_ID}
```
