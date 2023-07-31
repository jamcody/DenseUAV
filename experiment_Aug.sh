name="Aug_Experiment-u_rr_re-s_ra"
data_dir="/home/dmmm/Dataset/DenseUAV/data_2022/train" #"/media/dmmm/4T-3/DataSets/DenseCV_Data/高度数据集/data_2021/train"
# data_dir="/media/dmmm/4T-3/DataSets/DenseCV_Data/高度数据集/data_2021/train"
test_dir="/home/dmmm/Dataset/DenseUAV/data_2022/test" #"/media/dmmm/4T-3/DataSets/DenseCV_Data/高度数据集/data_2021/test"
# test_dir="/media/dmmm/4T-3/DataSets/DenseCV_Data/高度数据集/data_2021/test"
gpu_ids=0
num_worker=8
lr=0.003
batchsize=16
sample_num=1
triplet_loss=1
block=1
WSTR=0
num_bottleneck=512
backbone="ViTS-224"
head="SingleBranch"
h=224
w=224
load_from="no"
ra="satellite"  # random affine
re="uav"  # random erasing
cj="no"  # color jitter
rr="uav"  # random rotate

python train.py --name $name --data_dir $data_dir --gpu_ids $gpu_ids --sample_num $sample_num \
                --triplet_loss $triplet_loss --block $block --WSTR $WSTR --lr $lr --num_worker $num_worker --head $head  \
                --num_bottleneck $num_bottleneck --backbone $backbone --h $h --w $w --batchsize $batchsize --load_from $load_from \
                --ra $ra --re $re --cj $cj --rr $rr


cd checkpoints/$name
python test.py --name $name --test_dir $test_dir --gpu_ids $gpu_ids --num_worker $num_worker
python evaluate_gpu.py
python evaluateDistance.py
cd ../../


name="Aug_Experiment-u_rr-s_ra_re"
data_dir="/home/dmmm/Dataset/DenseUAV/data_2022/train" #"/media/dmmm/4T-3/DataSets/DenseCV_Data/高度数据集/data_2021/train"
# data_dir="/media/dmmm/4T-3/DataSets/DenseCV_Data/高度数据集/data_2021/train"
test_dir="/home/dmmm/Dataset/DenseUAV/data_2022/test" #"/media/dmmm/4T-3/DataSets/DenseCV_Data/高度数据集/data_2021/test"
# test_dir="/media/dmmm/4T-3/DataSets/DenseCV_Data/高度数据集/data_2021/test"
gpu_ids=0
num_worker=8
lr=0.003
batchsize=16
sample_num=1
triplet_loss=1
block=1
WSTR=0
num_bottleneck=512
backbone="ViTS-224"
head="SingleBranch"
h=224
w=224
load_from="no"
ra="satellite"  # random affine
re="satellite"  # random erasing
cj="no"  # color jitter
rr="uav"  # random rotate

python train.py --name $name --data_dir $data_dir --gpu_ids $gpu_ids --sample_num $sample_num \
                --triplet_loss $triplet_loss --block $block --WSTR $WSTR --lr $lr --num_worker $num_worker --head $head  \
                --num_bottleneck $num_bottleneck --backbone $backbone --h $h --w $w --batchsize $batchsize --load_from $load_from \
                --ra $ra --re $re --cj $cj --rr $rr


cd checkpoints/$name
python test.py --name $name --test_dir $test_dir --gpu_ids $gpu_ids --num_worker $num_worker
python evaluate_gpu.py
python evaluateDistance.py
cd ../../


name="Aug_Experiment-u_rr_re-s_ra_re"
data_dir="/home/dmmm/Dataset/DenseUAV/data_2022/train" #"/media/dmmm/4T-3/DataSets/DenseCV_Data/高度数据集/data_2021/train"
# data_dir="/media/dmmm/4T-3/DataSets/DenseCV_Data/高度数据集/data_2021/train"
test_dir="/home/dmmm/Dataset/DenseUAV/data_2022/test" #"/media/dmmm/4T-3/DataSets/DenseCV_Data/高度数据集/data_2021/test"
# test_dir="/media/dmmm/4T-3/DataSets/DenseCV_Data/高度数据集/data_2021/test"
gpu_ids=0
num_worker=8
lr=0.003
batchsize=16
sample_num=1
triplet_loss=1
block=1
WSTR=0
num_bottleneck=512
backbone="ViTS-224"
head="SingleBranch"
h=224
w=224
load_from="no"
ra="satellite"  # random affine
re="uavsatellite"  # random erasing
cj="no"  # color jitter
rr="uav"  # random rotate

python train.py --name $name --data_dir $data_dir --gpu_ids $gpu_ids --sample_num $sample_num \
                --triplet_loss $triplet_loss --block $block --WSTR $WSTR --lr $lr --num_worker $num_worker --head $head  \
                --num_bottleneck $num_bottleneck --backbone $backbone --h $h --w $w --batchsize $batchsize --load_from $load_from \
                --ra $ra --re $re --cj $cj --rr $rr


cd checkpoints/$name
python test.py --name $name --test_dir $test_dir --gpu_ids $gpu_ids --num_worker $num_worker
python evaluate_gpu.py
python evaluateDistance.py
cd ../../

