import re

sample =  "xmul(2,4)&mul[3,7]!^don't()_mul(5,5)+mul(32,64](mul(11,8)undo()?mul(8,5))"


def task1(s):
    pattern = r"mul\((\d+),(\d+)\)"
    muls = [(int(match[0]), int(match[1])) for match in re.findall(pattern, s)]
    return sum(a * b for a, b in muls)

def task2(s):
    pattern = r"don't\(\).*?(do\(\)|$)"
    filtered_input = re.sub(pattern, '', s, flags=re.DOTALL)
    return task1(filtered_input)

with open("data/AOC24_03.txt", 'r') as file:
    s = file.read() 
print(task1(s))
print(task2(s))

