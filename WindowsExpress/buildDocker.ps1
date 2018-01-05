docker container rm sqltest
docker rmi -f sqlsaurabh
docker build . -t sqlsaurabh
docker logs $(docker run -e SA_PASSWORD=HappyPass!23 -e ACCEPT_EULA=Y -p 1403:1433 -d sqlsaurabh)
