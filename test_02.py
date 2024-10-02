def longest_consecutive_sequence(nums: list[int]) -> int:
    # guard clauses
    if len(nums) == 0:
        return 0
    if len(nums) == 1:
        return 1

    nums.sort()
    count = 1
    max_length = 1
    for i in range(1, len(nums)):
        if nums[i - 1] == nums[i] - 1:
            count += 1
            if max_length < count:
                max_length = count
        elif nums[i - 1] != nums[i] - 1:
            if nums[i - 1] == nums[i]:
                pass
            else:
                count = 1

    return max_length


def main() -> None:
    print(longest_consecutive_sequence([1, 2, 0, 1]))


if __name__ == '__main__':
    main()
