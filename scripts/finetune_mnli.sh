#!/bin/bash

export TASK=mnli
export OUTPUT_PATH=mnli_output

python glue/train.py \
       --task_name $TASK \
       --do_val --do_test --do_val_history \
       --do_save \
       --do_lower_case \
       --bert_model bert-large-uncased \
       --bert_load_mode from_pretrained \
       --bert_save_mode model_all \
       --train_batch_size 24 \
       --learning_rate 2e-5 \
       --output_dir $OUTPUT_PATH
