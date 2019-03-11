# Car scraper deployment config
This repo contains the environment variables and config files for the car_app.

## Create a docker engine on aws

To configure a remote docker instance run the following command

    docker-machine create --driver amazonec2 --amazonec2-instance-type m5a.large --amazonec2-region us-east-2 --amazonec2-access-key AKIAJX3CZLJ2ZFVZ25DQ --amazonec2-secret-key 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  car-app

This creates configuration in the ```.docker``` directory

    cd /Users/<user_name>/.docker/machine/machines/

    # copy the private key
    cp car-app/id_rsa <path to save config to>/

1. login and allow docker access

        ssh -i "id_rsa" ubuntu@ec2-52-15-32-208.us-east-2.compute.amazonaws.com

        ubuntu@car-browsers:~$ sudo groupadd docker
        ubuntu@car-browsers:~$ sudo gpasswd -a $USER docker

        ubuntu@car-browsers:~$ sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
        ubuntu@car-browsers:~$ sudo chmod g+rwx "/home/$USER/.docker" -R

2. install aws-cli and docker compose

        ubuntu@car-browsers:~$ sudo apt install awscli
        ubuntu@car-browsers:~$ sudo apt install docker-compose
        
        export AWS_SECRET_ACCESS_KEY=fjtJYvwv50ZnUR4mVrhi2rhzOohI6ueoUSqWqdm+
        export AWS_DEFAULT_REGION=us-west-2
        export AWS_ACCESS_KEY_ID=AKIAJX3CZLJ2ZFVZ25DQ
        export AWS_DEFAULT_OUTPUT=json

3. log into the ecr and pull the image

        (aws ecr get-login --region us-east-1)

         docker pull 064106913348.dkr.ecr.us-east-1.amazonaws.com/car-feed

4. using the git credential helper login with

        username: car_app-at-064106913348
        pass: cRYOD9+34Wqf5DviPm8DiGPPlZR94XfK48/2Vct3YUE=

        git config credential.helper store
        git pull https://git-codecommit.us-west-2.amazonaws.com/v1/repos/car_platform

5. download the selenium browser image

        docker pull selenium/standalone-chrome:3.141.59

        docker-compose up

        # kill browsers
        docker stop $(docker ps -q --filter ancestor=343402bb75a3 )
