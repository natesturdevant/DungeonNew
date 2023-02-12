struct BattleManager
{
	/// default false, set to true to show each enemy stats during battle
	bool debugMode;
	
	int selectedTarget;
	
	int turnOrder[8];
	
	
	import static void EndCombat();
	import static void StartCombat(int enemyCount = 1);
	import static void SetPlayerStartTurn();
	import static void SetupTurnOrder();
	
	import static int GetSelectedTarget();
	
	// debug
	import static void ShowCombatSpeed(int index);
	
	/// Attack selected entity
	import static void Attack(int target);// Enable enemies to be clickable so we can attack them otherwise they cant be clicked.
	
	/// Select target
	import static void SelectTarget(int targetSlot);
	
	import static void UpdateUI();
	
	import static void TryToFlee();
	import static void Rest();
	
	import static void EndTurn();

};
