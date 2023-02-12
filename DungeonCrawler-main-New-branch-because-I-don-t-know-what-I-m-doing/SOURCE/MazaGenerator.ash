// new module header

managed struct CellPosition
{
	int index;//index of a cell in an array
	int x;
	int y;
};

managed struct Cell
{
	int index;//Index of this cell in a global array...for easy access
	int line;//row index
	int column;//column index
	
	/// Was it visited? Algorithm needs to know that to make a correct decission.
	bool visited;
	
	/// Array of corridors(Cell indexes)
	int corridors[100];
	int currentCorridorIndex;
};

managed struct Row
{
	int cells[];
	int length;
	
	import bool isValid(int index);
};

struct Maze
{
	int row[];
	int length;
	
	import bool isValid(int index);
};

struct MazeGenerator
{
	/// Don't call it on it's own, used to find next random cell that hasn't been traversed yet.
	import static CellPosition* _FindRandomNeighbour(int cellIndex, bool isVisitedNeighbour = false);
	import static void _CreateEmptyCellsConnections(int cellLine = 0, int cellColumn = 0);
	import static void _CreateMaze(int dimensions, String filePath);
	import static void _CreateMap(int dimensions = 5);
};