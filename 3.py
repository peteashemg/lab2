n = int(input())
nums = input().split()

for x in nums:
    val = int(x)
    if val < 10:
        print("-", end=" ")
    else:
        count = 0
        for char in x:
            if int(char) % 2 == 0:
                count += 1
        print(count, end=" ")
print()

