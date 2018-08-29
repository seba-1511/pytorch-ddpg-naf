
search:
	for env in HalfCheetah-v2 Ant-v2 Swimmer-v2 Reacher-v2 Hopper-v2; do \
	    for seed in 1231 1232 1233 1234 12345; do \
		python main.py \
		    --algo ddpg \
		    --env-name $$env \
		    --ou_noise 0 \
		    --noise_scale 0.0 \
		    --final_noise_scale 0.0 \
		    --seed $$seed; \
	    done; \
	done

