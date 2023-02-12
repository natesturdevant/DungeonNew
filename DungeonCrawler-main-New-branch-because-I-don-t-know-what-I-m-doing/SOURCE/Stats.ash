// new module header

managed struct Stats
{
	int health;
	int maxHealth;
	int mana;
	int maxMana;

	int strength;
	int speed;
	int constitution;
	int intelligence; 
	int luck;

	int baseDamage;
	
	import void Initialize();
	import void SetStats(int hp = 10, int mana = 10, int str = 1, int spd = 1, int con = 1, int intelligence = 1, int luck = 1);
	
	import int GetDamage();
	import void TakeDamage(int damage);
	
};

import function UpdateInfobar();

