#!/bin/bash
export SBATCH_ACCOUNT
#SBATCH --job-name=image_caption
#SBATCH -A $USER
#SBATCH --mail-type=COMPLETED,FAILED
#SBATCH --mail-user=kanishk.jain@alumni.iiit.ac.in
#SBATCH -n 1
#SBATCH --mem-per-cpu=4096
#SBATCH --gres=gpu:2
#SBATCH --time=4-00:00:00
#module load opencv/3.3.0
module load cuda/10.0
module load cudnn/7-cuda-10.0
#module load cudnn/6-cuda-8.0 

set -e
python3 train.py
