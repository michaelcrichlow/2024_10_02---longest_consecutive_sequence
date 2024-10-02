package test

import "core:fmt"
import "core:mem"
import "core:slice"
print :: fmt.println
printf :: fmt.printf

main :: proc() {

	val := [?]int{1, 2, 0, 1}
	val2 := [?]int{100, 4, 200, 1, 3, 2}
	val3 := [?]int{0, 3, 7, 2, 5, 8, 4, 6, 0, 1}
	print(longest_consecutive_sequence(val[:])) // 3
	print(longest_consecutive_sequence(val2[:])) // 4
	print(longest_consecutive_sequence(val3[:])) // 9

}

longest_consecutive_sequence :: proc(nums: []int) -> int {
	// guard clauses
	if len(nums) == 0 do return 0
	if len(nums) == 1 do return 1

	slice.sort(nums)
	count := 1
	max_length := 1
	for i in 1 ..< len(nums) {
		if nums[i - 1] == nums[i] - 1 {
			count += 1
			if max_length < count {
				max_length = count
			}
		} else if nums[i - 1] != nums[i] - 1 {
			if nums[i - 1] == nums[i] {
				// do nothing
			} else do count = 1
		}
	}

	return max_length
}
