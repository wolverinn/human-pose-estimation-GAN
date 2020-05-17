# 3D Human pose estimation GAN

## Introduction

This work is very much like [hmr](https://github.com/akanazawa/hmr)/[vibe](https://github.com/mkocabas/VIBE) in the following ways:

- Overall network architecture: Encoder + Regressor + Discriminator
- Loss function: 2D reprojection loss + SMPL parameter loss + 3D keypoints loss + discriminator loss
- Dataset: 2D annotated data + 3D annotated data + unpaired data (for GAN)
- Source code: mostly borrowed from hmr except the network architecture

The different part of this work:

- A different network in detail: different encoder and regressor
- A simpler way to train: start training on any Linux/Unix environment by running one line of bash command! You don't even need to download this repository.

## Training

Simply run bash command ```wget https://github.com/wolverinn/human-pose-estimation-GAN/raw/master/auto.sh && bash auto.sh``` and the training will be on !

The command will do dataset downloading, directory creating, source code downloading and running.

Small checks before training:

- Python3
- Tensorflow==1.14
- Check the device for "cpu" or "gpu" in ```src/main.py``` after you run the command above.
- Check ```start.bash``` to start training !

## Architecture
(Pictures of the network architecture will be released 06/30)

## Result

## Reference
- https://zhuanlan.zhihu.com/p/85506259
- https://zhuanlan.zhihu.com/p/113024569
- https://ibz.bz/2019/05/04/729843.html
- https://mp.weixin.qq.com/s/RdxmOi75glQBKMhKD-APNg
- https://paperswithcode.com/task/3d-human-pose-estimation
- https://github.com/cbsudux/awesome-human-pose-estimation
