# What is this?

Sometimes people would like to know why it is not possible to use e.g. `macvlan`
on macOS with Docker Desktop. This tiny repository provides you some evidence,
by just showing the visible network environment from within Docker Desktop.

# Usage

Just clone this repository through `git`, and of course ensure you have a working
Docker environment available (e.g. Docker Desktop, OrbStack, ...)/

```shell
./run.sh
```

# Example

```console
⌁ [user:~/Projects/docker-test] main ± ./run.sh
[+] Building 0.9s (6/6) FINISHED                                                                                                                docker:orbstack
 => [ip_show_route internal] load build definition from Dockerfile                                                                                         0.0s
 => => transferring dockerfile: 111B                                                                                                                       0.0s
 => [ip_show_route internal] load metadata for docker.io/library/alpine:latest                                                                             0.9s
 => [ip_show_route internal] load .dockerignore                                                                                                            0.0s
 => => transferring context: 47B                                                                                                                           0.0s
 => [ip_show_route 1/2] FROM docker.io/library/alpine:latest@sha256:c5b1261d6d3e43071626931fc004f70149baeba2c8ec672bd4f27761f8e1ad6b                       0.0s
 => CACHED [ip_show_route 2/2] RUN apk add iproute2                                                                                                        0.0s
 => [ip_show_route] exporting to image                                                                                                                     0.0s
 => => exporting layers                                                                                                                                    0.0s
 => => writing image sha256:7383e60205dddb7d54f94417b0cbe7c37dd724c8ef520e7d1cb74bf6fd4aa89b                                                               0.0s
 => => naming to docker.io/library/docker-test-ip_show_route                                                                                               0.0s
[+] Running 1/0
 ✔ Container docker-test-ip_show_route-1  Created                                                                                                          0.0s
Attaching to ip_show_route-1
ip_show_route-1  | default via 198.19.249.1 dev eth0
ip_show_route-1  | 192.168.194.0 dev .orbmirror0
ip_show_route-1  | 192.168.194.0/25 dev cni0 proto kernel scope link src 192.168.194.1
ip_show_route-1  | 192.168.215.0/24 dev docker0 proto kernel scope link src 192.168.215.1 linkdown
ip_show_route-1  | 198.19.249.0/24 dev eth0 proto kernel scope link src 198.19.249.2
ip_show_route-1 exited with code 0
[+] Running 1/0
 ✔ Container docker-test-ip_show_route-1  Removed
```

Of course, my host in this example had used `192.168.2.0/24` on `en0`, which is not visible in that output.

# Bugs

This tool is free of any bugs, however: It has been made for non-Linux environments,
it has no useful function on Linux.
