#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python main.py --epochs 20\
                --batch_size 1\
                --checkpoint pretrain\
                --pre_train\
                --num_workers 2\
                --dataset kitti2012\
                --dataset_directory /home/ubuntu/datasets/KITTI/2012\
                --weight_reg 0.5\
                --name elfnet_pretrain\
                --lr_sttr 0.0002\
                --lr_backbone 0.0002\
                --lr_regression 0.0004\
                --lr_pcw 0.002\
                --lrepochs "4,8,10,12"\
                --resume ./ckpt/elfnet_pretrain.tar        

# sh scripts/elfnet_pretrain.sh |tee logs/elfnet_pretrain.log