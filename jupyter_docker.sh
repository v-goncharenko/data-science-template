#!/usr/bin/env bash

image_name=jupyter_img
container_name=jupyter_cont
jupyter_port=8888

case $1 in
  build)
    docker build . -t $image_name --platform linux/x86_64
    ;;

  run)
    docker run \
      -v "$PWD"/workspace:/workspace \
      -d \
      -p $jupyter_port:$jupyter_port \
      --name $container_name \
      $image_name
    ;;

  token)
    docker exec $container_name bash -l -c 'conda run -n base jupyter notebook list'
    ;;

  bash)
    docker exec -it $container_name /bin/bash
    ;;

  stop)
    docker stop $container_name
    ;;

  remove)
    docker rm $container_name
    ;;

  *)
    echo "Unknown command. Please provide valid command"
    ;;
esac
