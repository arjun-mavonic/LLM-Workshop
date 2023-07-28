accelerate launch --config_file "configs/deepspeed_config.yaml"  train.py \
--model_path "bigcode/starcoderbase-3b" \
--dataset_name "smangrul/hf-stack-v1"  \
--subset "data" \
--data_column "content" \
--split="train" \
--seq_length 2048 \
--max_steps 2000 \
--batch_size 8 \
--gradient_accumulation_steps 2 \
--learning_rate 5e-5  \
--lr_scheduler_type "cosine" \
--weight_decay 0.01 \
--num_warmup_steps 30 \
--eval_freq 100 \
--save_freq 100 \
--log_freq 25 \
--num_workers 4 \
--bf16 \
--no_fp16  \
--output_dir "full-finetune-starcoderbase-3b-deepspeed-colab" \
--fim_rate 0.5 \
--fim_spm_rate 0.5 \
--use_flash_attn