# XpandIt_Challenge

<!-- Build docker image -->
sudo docker build -t challenge .

<!-- Run docker image: -->
sudo docker run -p 4041:4041 -d --name the_challenge challenge

<!-- Access it -->
https://localhost:4041