if(spawnDelay > 0)spawnDelay--;

if(global.enemyCount < 5 and spawnDelay <= 0){
	with(instance_create_layer(1793.5, 1947, "Player", oEnemyMax)){
		if(global.enemyCount % 2 != 0){
			movementSpeed = movementSpeed * -1;
		}
	}
	spawnDelay = 500;
}