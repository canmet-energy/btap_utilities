````shell
@reboot /home/nrcan/after_reboot.sh
````
The above line is added to the crontab file after executing `crontab -e` 

A file with the following contents are stored as `after_reboot.sh` in the home directory. 

This script will be executed by cron after ELMO is rebooted. 

This script will erase ALL docker containers and create the dataviz and run necb standards test.

````shell
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
cd ~/parallel-coordinates/
git pull
docker build -t nodeserver .
docker run -d -p 8080:8080 --name node nodeserver
cd ~/projects/btap-test-necb
docker run --name necb -d -it canmet/btap-test-necb
````
