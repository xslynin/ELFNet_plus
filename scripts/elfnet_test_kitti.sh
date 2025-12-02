#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python main.py  --epochs 1\
                --batch_size 1\
                --checkpoint test\
                --num_workers 1\
                --dataset kitti2015\
                --dataset_directory /home/ubuntu/datasets/KITTI/2015\
                --name elfnet_test_kitti\
                --resume ./ckpt/elfnet_pretrain.tar\
                --eval\
                --validation validation_all

# sh scripts/elfnet_test_kitti.sh |tee logs/elfnet_test_kitti.log
#                --resume ./ckpt/elfnet_pretrain.tar\