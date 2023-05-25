#!/bin/bash

bash /nfs/volume-902-16/tangwenbo/s3_all.sh

cd /nfs/ofs-902-1/object-detection/jiangjing/experiments/DsCML && pip install -ve . -i https://pypi.mirrors.ustc.edu.cn/simple/

# 训练
cd /nfs/ofs-902-1/object-detection/jiangjing/experiments/DsCML && CUDA_VISIBLE_DEVICES=0 /home/luban/apps/miniconda/miniconda/envs/torch1101/bin/python \
  DsCML/train_DsCML.py --cfg=./configs/nuscenes/usa_singapore/xmuda.yaml

## 测试
#cd /nfs/ofs-902-1/object-detection/jiangjing/experiments/DsCML && CUDA_VISIBLE_DEVICES=0 /home/luban/apps/miniconda/miniconda/envs/torch1101/bin/python \
#  DsCML/test.py --cfg=configs/nuscenes/usa_singapore/xmuda.yaml /nfs/ofs-902-1/object-detection/jiangjing/experiments/DsCML/ckpt/nuscenes/usa_singapore/DsCML /nfs/ofs-902-1/object-detection/jiangjing/experiments/DsCML/ckpt/nuscenes/usa_singapore/DsCML
