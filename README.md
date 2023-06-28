clone : https://github.com/williamyang1991/DualStyleGAN

```
> cd workspace/DualStyleGAN/
> conda init bash
> source ~/.bashrc
> pip install --no-cache-dir dlib==19.21.0
> pip install --no-cache-dir wget==3.2
> conda config --append channels pytorch
> conda config --append channels conda-forge
> conda install faiss==1.7.1
> conda env create -f ./environment/dualstylegan_env.yaml
> conda activate dualstylegan_env
# https://anaconda.org/pytorch/pytorch/files
> conda install ./assets/pytorch-1.12.1-py3.8_cuda11.3_cudnn8.3.2_0.tar.bz2
# https://anaconda.org/pytorch/torchvision/files
> conda install ./assets/torchvision-0.13.1-py38_cu113.tar.bz2
...
```
