#!/bin/sh
# */AIPND-revision/intropyproject-classify-pet-images/run_models_batch.sh
#                                                                             
# PROGRAMMER: Jennifer S. , Avishkar Nikale
# DATE CREATED: 02/08/2018                                  
# REVISED DATE: 02/27/2018  - , 06/04/2019(Avishkar Nikale)
# PURPOSE: Runs all three models to test which provides 'best' solution.
#          Please note output from each run has been piped into a text file.
#
# Usage: sh run_models_batch.sh    -- will run program from commandline within Project Workspace
#  
python check_images.py --dir pet_images/ --cnnArchType resnet  --dogNameFile dognames.txt > resnet_pet-images.txt
python check_images.py --dir pet_images/ --cnnArchType alexnet --dogNameFile dognames.txt > alexnet_pet-images.txt
python check_images.py --dir pet_images/ --cnnArchType vgg  --dogNameFile dognames.txt > vgg_pet-images.txt
