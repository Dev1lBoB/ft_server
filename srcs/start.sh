cd ..
docker  build -t wp .
afplay "srcs/beep.wav" &
docker run -p 80:80 -p 443:443 -it wp:latest
killall afplay
cd srcs
