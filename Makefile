
search:
	for seed in 1234; do \
	    OMP_NUM_THREADS=1 python main.py \
		--algo ddpg \
		--env-name $(ENV) \
		--ou_noise 0 \
		--num_episodes 1000 \
		--noise_scale 0.0 \
		--final_noise_scale 0.0 \
		--seed $$seed; \
	done
