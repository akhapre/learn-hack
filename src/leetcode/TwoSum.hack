//https://leetcode.com/problems/two-sum/
namespace learnhack\leetcode;
use namespace HH\Lib\C;
class Solution {

    /**
     * @param vec<int> $nums
     * @param int $target
     * @return vec<int>
     */
    public function twoSum(vec<int> $nums, int $target): vec<int> {
        $return_value = vec<int>[];
        $start = 0;
        $end = -1;
        $sum = 0;
        $length = C\count($nums);
        for ($i = $end + 1; $i < $length; $i++) {
            $sum += $nums[$i];
            $end = $i;
            if ($sum < $target) {
                continue;
            } else if ($sum > $target) {
                $sum -= $nums[$start];
                $start++;
                for ($j = $start; $j <= $end; $j++) {
                    if ($sum < $target) {
                        break;
                    } else if ($sum > $target) {
                        $sum -= $nums[$start];
                        $start++;
                    } else {
                        $return_value[] = $start;
                        $return_value[] = $end;
                        return $return_value;
                    }
                }
            } else {
                $return_value[] = $start;
                $return_value[] = $end;
                return $return_value;
            }
        }
        return $return_value;
    }
}

<<__EntryPoint>>
function main(): void {
    echo
        "Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.\n
    You may assume that each input would have exactly one solution, and you may not use the same element twice.\n
    You can return the answer in any order.<br>\n
    https://leetcode.com/problems/two-sum/\n<br>\n
    O(n)<br><br>";

    $nums = vec[2, 2, 2, 2, 2];
    $target = 4;
    echo '$nums : ';
    \var_dump($nums);
    echo '<br>$target : ';
    \var_dump($target);
    echo '<br>Result : ';
    \var_dump((new Solution())->twoSum($nums, $target));
}
