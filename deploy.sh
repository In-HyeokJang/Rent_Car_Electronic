#!/bin/bash

# Jenkins 에서 체크가 끝나면 해당 파일을 실행

cat ./src/main/resources/static/hat.txt

container_name="evrent";
repository="baugh248730/isosim";

echo "docker logins try"
docker login


echo "Docker compose down start ... "
docker-compose down

if [ $? -eq 0 ];then
    echo "Docker compose down clear!"
else
    echo "docker-compose down Failure!"
    exit 9
fi
echo "After CMD OK!"


# gradle build
echo "DockerFile start... and"
#docker build -t isosim:latest .

echo "DockerFile clear !!!"
echo "image push to docker hub"
docker tag isosim baugh248730/isosim:latest
docker push ${repository}

echo "New images with Docker-composeer up start ... "
docker-compose up -d

if [ $? -eq 0 ];then
    echo "Docker compose up clear!"
    docker rmi $(docker images -f "dangling=true" -q)
else
    echo "docker-compose up Failure!"
    exit 9
fi

cat ./src/main/resources/static/Done.txt

