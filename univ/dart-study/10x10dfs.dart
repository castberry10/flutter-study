// 격자의 크기
const int N = 10;
const int M = 10;

// 10x10 격자 (0: 빈 칸, 1: 장애물, 2: 도착지)
List<List<int>> grid = [
  [0, 0, 1, 1, 0, 0, 0, 0, 1, 0],
  [1, 0, 0, 1, 1, 1, 0, 0, 1, 0],
  [1, 1, 0, 0, 0, 1, 0, 1, 1, 0],
  [0, 0, 0, 1, 0, 0, 0, 1, 0, 0],
  [0, 1, 1, 1, 0, 1, 0, 0, 0, 1],
  [0, 0, 0, 0, 0, 1, 0, 1, 1, 1],
  [1, 1, 1, 1, 0, 1, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 1, 1, 0, 0],
  [0, 1, 0, 0, 0, 0, 0, 1, 0, 0],
  [0, 0, 0, 1, 1, 0, 0, 0, 0, 2],
];

// 이동 방향: 상, 하, 좌, 우
List<List<int>> directions = [
  [-1, 0], // 위
  [1, 0],  // 아래
  [0, -1], // 왼쪽
  [0, 1],  // 오른쪽
];

// 방문한 좌표를 기록할 배열
List<List<bool>> visited = List.generate(N, (_) => List.generate(M, (_) => false));

// DFS 함수
bool dfs(int x, int y) {
  // 범위를 벗어났거나, 방문했거나, 장애물인 경우 종료
  if (x < 0 || x >= N || y < 0 || y >= M || visited[x][y] || grid[x][y] == 1) {
    return false;
  }

  // 도착지(2)에 도착한 경우
  if (grid[x][y] == 2) {
    print("도착지에 도착했습니다: ($x, $y)");
    return true;
  }

  // 현재 좌표 방문 처리
  visited[x][y] = true;

  // 현재 좌표 출력 (디버깅용)
  print("방문 중: ($x, $y)");

  // 4가지 방향으로 DFS 탐색
  for (var dir in directions) {
    int newX = x + dir[0];
    int newY = y + dir[1];
    if (dfs(newX, newY)) {
      return true; // 도착지를 찾으면 탐색 종료
    }
  }

  // 더 이상 갈 곳이 없으면 false 반환
  return false;
}

void main() {
  // DFS 시작 (0, 0)에서 시작
  if (!dfs(0, 0)) {
    print("도착지에 도달할 수 없습니다.");
  }
}
