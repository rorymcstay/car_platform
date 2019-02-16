#!/usr/bin/env bash

CAR_KEY=fjtJYvwv50ZnUR4mVrhi2rhzOohI6ueoUSqWqdm+

CAR_USER=AKIAJX3CZLJ2ZFVZ25DQ

REGION=us-west-2

aws configure --profile car_app --access-key AKIAJX3CZLJ2ZFVZ25DQ --secret-key fjtJYvwv50ZnUR4mVrhi2rhzOohI6ueoUSqWqdm --region us-west-2

# Make a docker engine and copy the bits to src

#docker-machine create --driver amazonec2 --amazonec2-region us-west-2 --amazonec2-access-key $CAR_USER --amazonec2-secret-key $CAR_KEY  car-browsers

#cd /Users/rorymcstay/.docker/machine/machines/

#cp -r car-browsers /Users/rorymcstay/IdeaProjects/Car/car/car_app

car_app-at-064106913348
cRYOD9+34Wqf5DviPm8DiGPPlZR94XfK48/2Vct3YUE=