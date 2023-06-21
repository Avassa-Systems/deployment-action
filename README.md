# deployment action

This action creates or updates an application deployment

## Inputs

## `control-tower`
**Required** Control Tower address, e.g. api.foo.example.avassa.net

## `username`
**Required** Control Tower user, allowed to push applications

## `password`
**Required** Control Tower password

## `application-name`
**Required** Application deployment name

## `specification`
**Required** Path to the application deployment specification

## Outputs

None


## Example usage

```
uses: /Avassa-Systems/deployment-action@v1
  with:
    control-tower: ${{secrets.CONTROL_TOWER}}
    username: ${{secrets.CT_USER}}
    password: ${{secrets.CT_PASSWORD}}
    deployment-name: theater-room-manager
    specification: theater-room-manager.dep.yml
```
