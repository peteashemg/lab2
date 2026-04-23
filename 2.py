n = int(input())
routes = {}
starts = []
ends = []

for i in range(n):
    line = input().split()
    u, v = line[0], line[1]
    routes[u] = v
    starts.append(u)
    ends.append(v)

current = ""
for city in starts:
    if city not in ends:
        current = city
        break

while current in routes:
    current = routes[current]

print(current)
