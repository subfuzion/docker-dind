# dind

[On Docker Hub](https://hub.docker.com/r/subfuzion/dind/). Cloned from [subfuzion/docker-dind](https://github.com/subfuzion/docker-dind).
Convenience image based on latest Docker in Docker with experimental flag set and
a few network utilities (like iproute2, dig and drill).

Why is this useful? Right now if you want to start dind with the experimental flag
you have to explicitly supply it as follows:

    $ docker run --detach --privileged --name=dind docker:dind --experimental
    $ docker exec -it dind sh
    / # docker version
    Client:
    version:      17.07.0-ce-rc2
    API version:  1.31
    Go version:   go1.8.3
    Git commit:   36ce605
    Built:        Mon Aug  7 23:42:06 2017
    OS/Arch:      linux/amd64
    
    Server:
    Version:      17.07.0-ce-rc2
    API version:  1.31 (minimum version 1.12)
    Go version:   go1.8.3
    Git commit:   36ce605
    Built:        Mon Aug  7 23:48:34 2017
    OS/Arch:      linux/amd64
    Experimental: true

You can see from the last line that the daemon was started in experimental mode.
With this image, however, experimental mode is the default:

    $ docker run --detach --privileged --name=dind subfuzion/dind
    $ docker exec dind docker version
    ...
    Server:
     Version:      17.07.0-ce-rc2     Experimental: true

This image also adds a few convenient network tools, [iproute2](http://baturin.org/docs/iproute2/)
[dig](https://linux.die.net/man/1/dig), and [drill](https://linux.die.net/man/1/drill) (from the [ldns project](https://www.nlnetlabs.nl/projects/ldns/)).

