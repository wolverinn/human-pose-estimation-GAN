# tensorflow<=1.14

mkdir hmr
cd hmr/
mkdir models
mkdir logs

cd ./models/
wget https://people.eecs.berkeley.edu/~kanazawa/cachedir/hmr/neutral_smpl_mean_params.h5
wget http://download.tensorflow.org/models/resnet_v2_50_2017_04_14.tar.gz
wget https://people.eecs.berkeley.edu/~kanazawa/cachedir/hmr/models.tar.gz
mkdir resnet_v2_50
tar -xf resnet_v2_50_2017_04_14.tar.gz -C ./resnet_v2_50
tar -xf models.tar.gz
mv ./models/neutral_smpl_with_cocoplus_reg.pkl ./neutral_smpl_with_cocoplus_reg.pkl
rm resnet_v2_50_2017_04_14.tar.gz
rm models.tar.gz
cd ..

pip3 install deepdish --user
pip3 install chumpy --user

wget https://github.com/wolverinn/hmr2020/archive/master.zip
unzip master.zip
rm master.zip
mv ./hmr2020-master/src ./src
rm -rf hmr2020-master

tar -xf tf_records.tar.gz
mv ./content/drive/My\ Drive/tf_records ./tf_records

# 确认src/main.py中使用的device是选gpu还是cpu
# 最后运行 python3 -m src.main 即可