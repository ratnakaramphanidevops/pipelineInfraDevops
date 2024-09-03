#/bin/sh
sudo apt-get install cowsay -y
cowsay -f dragon "Run f0r cover, I am a DRAGON....RAWR" >> dragon.txt
grep -i "dragon" dragon.txt
cat dragon.txt
ls -ltra     