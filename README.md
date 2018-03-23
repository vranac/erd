## Docker Container for erd tool

This is a docker container for excellent https://github.com/BurntSushi/erd tool.

To get help how to run erd, execute the following
```bash
docker run vranac/erd
```

Or for a quick example from the repo
```bash
curl 'https://raw.githubusercontent.com/BurntSushi/erd/master/examples/simple.er' > simple.er
docker run --rm -v "$(pwd)":/erd erd -i simple.er -o simple.pdf
```