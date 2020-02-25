ulimit -n 4096
export NGPUS=8
python3 -m torch.distributed.launch --nproc_per_node=$NGPUS tools/train_net.py --config-file "configs/baseline_e2.yaml"
