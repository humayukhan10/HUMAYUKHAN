graph = {
    1:[2,5],
    2:[1,3,4],
    3:[2],
    4:[2],
    5:[1,6],
    6:[5]
}

start=int(input("Enter Start Node:"))
gole=int(input("Enter GoleNode:"))

#print(graph)

from collections import deque

def bfs(graph, start):
    path = []
    queue = deque([start])
    
    while True:
        if len(queue) == 0:
            break
        
        v = queue.popleft()
        if v not in path:
            path.append(v)
            print("Path: ", path)
            queue.extend(graph[v])
            print("Queue: ", list(queue))
            print()
            
            print("Final Path:", path)
            
bfs(graph, gole)



