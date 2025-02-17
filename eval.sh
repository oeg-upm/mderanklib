#This is script for MDERank testing
# test MDERank
# Dataset name: Inspec, SemEval2010, SemEval2017, DUC2001, nus, krapivin
# Please download data first and save in 'data' folder.
dataset_name=SemEval2017
#CUDA_VISIBLE_DEVICES=0 python MDERank/mderank_main.py --dataset_dir data/$dataset_name --batch_size 1 --distance cos --doc_embed_mode max \
# --log_dir log_path --dataset_name $dataset_name --layer_num -1  --no_cuda


## ENGLISH EXAMPLE 1
#python MDERank/mderank_main.py --dataset_dir data/$dataset_name --batch_size 1  --doc_embed_mode max \
# --log_dir log_path --model_name_or_path bert-base-uncased --model_type bert --dataset_name $dataset_name --type_execution eval --layer_num -1 --lang en --no_cuda

#python MDERank/mderank_main.py --dataset_dir data/$dataset_name --batch_size 1  --doc_embed_mode max \
# --log_dir log_path --model_name_or_path roberta-base --model_type roberta --dataset_name $dataset_name --type_execution eval --layer_num -1 --lang en --no_cuda


## SPANISH EXAMPLE
python MDERank/mderank_main.py --dataset_dir data/$dataset_name --batch_size 1  --doc_embed_mode max \
 --log_dir log_path --model_name_or_path PlanTL-GOB-ES/roberta-base-bne --model_type roberta --dataset_name $dataset_name --type_execution eval --layer_num -1 --lang es --no_cuda
