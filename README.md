# Get Container MTU

This action simply prints the MTU of eth0` within a simple alpine container.
It's useful if you want to check that any defaults you're applying to containers are working.

## Outputs

## `mtu`

The MTU of `eth0` within the container.

## Example usage

```
name: ci

on:
  push:

jobs:
  my_job:
    runs-on: self-hosted
    steps:
      - 
        name: Get container MTU
        id: mtu
        uses: michaelfindlater/get-container-mtu@v1
        
      -
        name: Print MTU
        run: echo ${{ steps.mtu.outputs.mtu }}
```
