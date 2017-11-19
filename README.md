# Pandoc docker image

* It's a very small pandoc image (about 120Mb). You can pull it in quickly and
  use it.


## Get the image

```
docker pull yen3/pandoc
```


## Run pandoc with the image

* The default work folder in container is `/data`

    ```
    docker run --rm -v $(pwd):/data yen3/pandoc -f markdown -t html README.md
    ```

## Limitation

* The docker image used the offical pandoc static binary, so you can not
  use lua filters. You can see [Install pandoc in linux](https://github.com/jgm/pandoc/blob/master/INSTALL.md#linux) section to get more details.
