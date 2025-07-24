docker rm -v -f $(docker ps -qa)
docker build --build-arg CACHEBUST=$(date +%s) --tag 'quokka' .
docker run --name quokka_test -t -detach 'quokka'
docker exec -it quokka_test bash
