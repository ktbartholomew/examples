Rough instructions on how to use this half-baked thing.

Terminal 1

```bash
script/deploy.sh
```

Terminal 2

```bash
docker-compose up
```

Note the errors.

Terminal 3

```bash
source script/include/constants.sh
source script/include/util.sh
output_nginx_config
```

The `upstream` and `server` are not right. I know they're driven by labels on the container and those should be changed but why doesn't Interlock just discover this stuff? Why do you have to statically bake it into the `docker-compose.yml` file?
