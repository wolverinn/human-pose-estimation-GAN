# wget https://github.com/wolverinn/hmr2020/raw/master/auto.sh && bash auto.sh
# tensorflow<=1.14
# 确认src/main.py中使用的device是选gpu还是cpu

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
# pip3 install gast==0.2.2 --user

# get train code from github
wget https://github.com/wolverinn/hmr2020/archive/master.zip
unzip master.zip
rm master.zip
mv ./hmr2020-master/src ./src
mv ./hmr2020-master/start.sh ./start.sh
rm -rf hmr2020-master

# get processed data tf_record
wget https://github.com/wolverinn/hmr2020/releases/download/v1.0/tf1.tar.gz
tar -xf tf1.tar.gz
mv ./tf1 ./tf_records

wget https://github.com/wolverinn/hmr2020/releases/download/v1.1/tf2.tar.gz
tar -xf tf2.tar.gz
mv ./mocap_neutrMosh ./tf_records/mocap_neutrMosh

wget https://github.com/wolverinn/hmr2020/releases/download/v1.2/tf3.tar.gz
tar -xf tf3.tar.gz
mv ./coco_pre ./tf_records/coco

wget https://github.com/wolverinn/hmr2020/releases/download/v1.2/tf4.tar.gz
tar -xf tf4.tar.gz
mv ./coco/* ./tf_records/coco/

# 最后运行 python3 -m src.main 即可，或者使用：
# bash start.sh