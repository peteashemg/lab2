s = input("s: ").strip()
t = input("t: ").strip()

if len(s) == len(t) and t in (s + s):
    print("Результат: Yes")
else:
    print("Результат: No")
