# program 1#

string = 'aabbbcwa'

result = []
current_char = string[0]
count = 1

for char in range(1, len(string)):
    if string[char] == current_char:
        count += 1
    else:
        result.append((current_char, count))
        current_char = string[char]
        count = 1

result.append((current_char, count))

print(result)

###

#program 2#


def find_closest_num(arr, k):
    maximum = max(arr)
    closest_num = 0
    # if maximum is less than the target then closest_num will be maximum
    if maximum < k:
        closest_num = maximum
    # if target is less than maximum then it finds for closest number to it
    else:
        if i in arr:
            index = arr.index(k)
            value = arr[index-1]
            closest_num = value
        else:
            minimum = 0
            for j in arr:
                if minimum < k:
                    minimum = j
            closest_num = minimum
    return closest_num


arr = list(map(int, input().split()))
k = int(input())

arr.sort()
# calling the function to find the closest number
result = find_closest_num(arr, k)
print(result)

###

#program 4#

lis = list(map(int, input().split(",")))

last_two = lis[-2:]
first = lis[:-2]
last_two.extend(first)
print(last_two)

###
