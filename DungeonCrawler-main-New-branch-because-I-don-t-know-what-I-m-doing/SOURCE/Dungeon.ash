// new module header

import void doBattle();

#define FAR_4_SPRITE 20
#define CLEAR_SCREEN 25
#define P_X playerChar.x

enum PlayerFaceDirection
{
	eFaceUp = 0,
	eFaceRight,
	eFaceDown, 
	eFaceLeft, 
};


enum MazeType
{
	eVoid, 
	eMazeWall, 
	eMazeFree, 
	eMazeTorch,
	eMazePlayer, 
	eMazeExit
};

struct DungeonMap
{
	int currentRow;
	String mapRow[1000];//stores 100 lines of a map rows, empty lines will be ignored. 
	int width;
	int height;
	//Stores a copy of mapa data so we can combine it later with other maps etc.
	String mapData;
	
	import Point* GetExitPosition();
	
	
	import void SetCell(int x, int y, MazeType cell);
	import MazeType GetCell(int x, int y);
	
	/// Generate a random dungeon
	import static void GenerateAndAttachDungeon(int dimensions);
	
	import void SetPlayerPosition();

	/// Each line represents one row.
	import static void loadMap(String fileName);
};

struct PlayerController
{
	int x;
	int y;
	
	PlayerFaceDirection faceDir;
	int rotation_x;
	int rotation_y;

	import void UpdateRotation();
	import void Rotate(int direction);
	import void Move(int distance);
  import int GetPos(int x, int y);
  
  

};
/*
struct Stats{
  int Strength;
  int Vitality;
  int Wisdom;
  int Intelligence;
  
};
  */
import function renderVisionCone();
