#!/bin/bash

export TASK=sst
export OUTPUT_PATH=sst_output
export CUDA_VISIBLE_DEVICES=0,3

python glue/train.py \
       --task_name $TASK \
       --do_train \
       --do_save \
       --do_lower_case \
       --bert_model bert-base-uncased \
       --bert_load_mode from_pretrained \
       --bert_save_mode model_all \
       --train_batch_size 64 \
       --learning_rate 2e-5 \
       --output_dir $OUTPUT_PATH \
       --num_train_epochs 3 \
       --do_val --do_val_history 
