# Guess Who

This is a simple representation of the Guess Who board game from the 80s. After
watching a [video on YouTube][youtube_video] I thought I'd try to recreate the game using raw
shell scripts.

## Docker Images

This repository is configured to auto deploy the latest version to the Docker
Registry as an `alpine` and `busybox` build. More may come in the future
including versions.

```bash
# BusyBox
$ docker container run --rm -it baylor/guess-who:latest-busybox

# Alpine
$ docker container run --rm -it baylor/guess-who:latest-alpine
```

[youtube_video]: https://youtu.be/FRlbNOno5VA
