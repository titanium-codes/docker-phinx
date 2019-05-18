# robmorgan/phinx dockerized

```bash
docker run tico/phinx help
```

You must pass your migrations/seeds/configs to container.

Example (for [framework.wtf](https://framework.wtf)): 

```bash
docker run -v $PWD/app/seeds:/app/seeds -v $PWD/app/migrations:/app/migrations -v $PWD/app/config/phinx.php:/app/phinx.php tico/phinx migrate
```
