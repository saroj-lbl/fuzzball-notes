# Fuzzball Testing Notes

## UI

Currenlty (2024), one needs to be on VPN or onsite to access https://ui.fuzzball.lbl.gov.

## CLI

When using CLI for the first time, create a context:
```
fuzzball context create default 'api.fuzzball.lbl.gov' \
'https://auth.fuzzball.lbl.gov/auth/realms/4e9e2efa-1775-4772-b0b8-465784335e65' fuzzball-cli
```

### Port-forward

```
fuzzball workflow port-forward <workflow-uuid> <name> <port>:<localport>

## API

## Workflows

## Fuzzball Docs from CIQ
https://ui.stable.fuzzball.ciq.dev/docs/
