# Shortest path in maze
import queue 
import numpy as np
cimport numpy as np


def BFS(pos, pacmanPosition):
    cdef np.ndarray[long, ndim=2] mat = np.array([
[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0],
[0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0],
[0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0],
[0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0],
[0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0],
[0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0],
[0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0],
[0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0],
[0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]])
    row = [-1,0,0,1]
    col = [0,-1,1,0]

    j = int(pos[0])
    y = int(pacmanPosition[0])
    i = int(10 - pos[1])
    x = int(10 - pacmanPosition[1])

    def isValid(mat, visited,row,col):
        return (row >= 0) and (row < M)  and (col >= 0) and (col < N) and (mat[row,col]) and (not visited[row,col])

    #print(i,j,x,y)
    if (mat[i,j] == 0) or (mat[x,y] == 0):
        print("WALL INDEX ERROR")

    #M,N = mat.shape
    cdef int M = 11
    cdef int N = 20
    visited = np.zeros([M,N])
    # create an empty queue
    q = queue.Queue(maxsize=1000) 
    
    visited[i][j] = 1
    q.put((i,j,0))
    min_dist = INI_MAX = 100
    
    while(not q.empty()):
        node = q.get()
        i,j,dist = node[0],node[1], node[2]
        
        if (i == x) and (j == y):
            min_dist = dist
            break
        
        for k in range(4):
            if isValid(mat, visited, i+row[k], j + col[k]):
                visited[i+row[k], j + col[k]] = 1
                q.put((i+row[k], j + col[k], dist + 1))
    
    if min_dist != INI_MAX:
        #print(min_dist)
        return min_dist
    else:
        print("Destination can't be reached from given source")
        return None

