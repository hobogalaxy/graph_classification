python run.py --multirun \
experiment=GIN/gin_mnist_sp75 \
hparams_search=gin_optuna optimized_metric="val/acc_best" \
hydra.sweeper.n_trials=15 \
logger=wandb logger.wandb.group="GIN_mnist_sp75_optuna" \
trainer.gpus=1 trainer.min_epochs=10 trainer.max_epochs=100 \
callbacks.early_stopping.patience=5 \
datamodule.num_workers=10 datamodule.pin_memory=True


python run.py --multirun \
experiment=GIN/gin_fashion_mnist_sp100 \
hparams_search=gin_optuna \
optimized_metric="val/acc_best" \
hydra.sweeper.n_trials=15 \
logger=wandb logger.wandb.group="GIN_fashion_mnist_sp100_optuna" \
trainer.gpus=1 trainer.min_epochs=10 trainer.max_epochs=100 \
callbacks.early_stopping.patience=5 \
datamodule.num_workers=10 datamodule.pin_memory=True


python run.py --multirun \
experiment=GIN/gin_cifar10_sp100 \
hparams_search=gin_optuna \
optimized_metric="val/acc_best" \
hydra.sweeper.n_trials=15 \
logger=wandb logger.wandb.group="GIN_cifar10_sp100_optuna" \
trainer.gpus=1 trainer.min_epochs=10 trainer.max_epochs=100 \
callbacks.early_stopping.patience=5 \
datamodule.num_workers=10 datamodule.pin_memory=True


python run.py --multirun \
experiment=GIN/gin_ogbg_molhiv \
hparams_search=gin_optuna \
optimized_metric="val/rocauc_best" \
hydra.sweeper.n_trials=15 \
logger=wandb logger.wandb.group="GIN_ogbg_molhiv_optuna" \
trainer.gpus=1 trainer.min_epochs=10 trainer.max_epochs=100 \
callbacks.early_stopping.patience=5 \
datamodule.num_workers=10 datamodule.pin_memory=True


python run.py --multirun \
experiment=GIN/gin_ogbg_molpcba \
hparams_search=gin_optuna \
optimized_metric="val/ap_best" \
'datamodule.batch_size=choice(256, 512)' \
hydra.sweeper.n_trials=15 \
logger=wandb logger.wandb.group="GIN_ogbg_molpcba_optuna" \
trainer.gpus=1 trainer.min_epochs=10 trainer.max_epochs=100 \
callbacks.early_stopping.patience=5 \
datamodule.num_workers=10 datamodule.pin_memory=True
