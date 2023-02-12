struct Entity
{
	String name;
	
	// level and experience used to level up
	int level;
	int currentExp;
	int maxExp;
  int attackView;
  int takeDamageView;
  int deathView;
  int expGiven;
	
	bool isInitialized;// false by default and at the start of any battl
	bool isPlayerControlled;
	Stats stats;
	Equipment equipment;
	
	// Combat
	
	// Reduce by their speed each turn or after specific actions to determine the turn order
	// Should not affect current entity at the top since its taking a turn already and goes to the end after.
	int combatTimer;
	
	// Setup
	import void Initialize(String name, int level);
	
	// Result
	import int GetDamage();
	import void TakeDamage(int damage);
	
	// Actions
	import void Attack(int targetSlot);
	import void Defend();
	import void UseItem(int targetSlot);
	import void TryToFlee();
	
	import String GetStringHPSP();
};