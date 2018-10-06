#!/bin/sh
#BATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=5:19:00
#SBATCH --mem=32G
#SBATCH --partition=deeplearn
#SBATCH -A punim0478
#SBATCH --gres=gpu:v100:1

cd /data/projects/punim0478/gaurava/fastai/courses/dl2/imdb_scripts
#. /home/gaurava/miniconda3/etc/profile.d/conda.sh
#source deactivate
#source activate fastai

/home/gaurava/miniconda3/envs/fastai/bin/python train_clas.py data/imdb1/aclImdb/ 0 --lm-id pretrain_wiki_finetunelm --clas-id IMDB_classification_model_new_5th_october --cl 50 --out_shared_encoder shared_encoder_new_5th_october
