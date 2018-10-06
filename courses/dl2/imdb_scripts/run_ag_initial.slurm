#!/bin/sh
#BATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=6:19:00
#SBATCH --mem=32G
#SBATCH --partition=deeplearn
#SBATCH -A punim0478
#SBATCH --gres=gpu:v100:1

cd /data/projects/punim0478/gaurava/fastai/courses/dl2/imdb_scripts
#. /home/gaurava/miniconda3/etc/profile.d/conda.sh
#source deactivate
#source activate fastai

/home/gaurava/miniconda3/envs/fastai/bin/python train_clas.py data/ag 0 --lm-id AG__wiki_finetunelm --clas-id AG_classification_model_spartan --cl 52 --shared_encoder_my shared_encoder_ag_52_epochs
