#!/bin/sh
# */AIPND-revision/intropyproject-classify-pet-images/run_models_batch_uploaded.sh
#                                                                             
# PROGRAMMER: Jennifer S. , Avishkar Nikale
# DATE CREATED: 02/08/2018                                  
# REVISED DATE: 02/27/2018  - 06/04/2019(Avishkar Nikale)
# PURPOSE: Runs all three models to test which provides 'best' solution on the Uploaded Images.
#          Please note output from each run has been piped into a text file.
#
# Usage: sh run_models_batch_uploaded.sh    -- will run program from commandline within Project Workspace
#  
python check_images.py --dir uploaded_images/ --cnnArchType resnet  --dogNameFile dognames.txt > resnet_uploaded-images.txt
python check_images.py --dir uploaded_images/ --cnnArchType alexnet --dogNameFile dognames.txt > alexnet_uploaded-images.txt
python check_images.py --dir uploaded_images/ --cnnArchType vgg  --dogNameFile dognames.txt > vgg_uploaded-images.txt
