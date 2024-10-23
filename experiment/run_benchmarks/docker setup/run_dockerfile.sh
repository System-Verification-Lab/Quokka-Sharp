docker rm -v -f $(docker ps -qa)
docker build --tag 'quokka' .
docker run --name quokka_test -t -detach 'quokka'
docker exec -it quokka_test sh
