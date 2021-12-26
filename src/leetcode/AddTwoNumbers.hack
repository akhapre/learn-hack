namespace learnhack\leetcode;
use type learnhack\leetcode\{ListNode};
class ListNode {
    public int $val = 0;
    public ?ListNode $next = null;
    public function __construct(int $val = 0, ?ListNode $next = null) {
        $this->val = $val;
        $this->next = $next;
    }

    public function __toString(): string {
        return $this->next !== null ? ($this->next->__toString().$this->val) : $this->val.'';
    }
}
class Solution {
    public function addTwoNumbers(ListNode $l1, ListNode $l2) : ListNode {

        $first_node = $l1;
        $second_node = $l2;
        $result_node = null;
        $carryover = 0;
        $previous_node = null;
        while ($first_node !== null && $second_node !== null) {
            $sum = $first_node->val + $second_node->val + $carryover;
            $carryover = (int)($sum / 10);
            $sum = $sum - ($carryover * 10);
            if ($previous_node === null) {
                $result_node = new ListNode((int)$sum);;
                $previous_node = $result_node;
            } else {
                $previous_node->next = new ListNode((int)$sum);
                $previous_node = $previous_node->next;
            }
            $first_node = $first_node->next;
            $second_node = $second_node->next;
        }

        while ($first_node !== null) {
            $sum = $first_node->val + $carryover;
            $carryover = (int)($sum / 10);
            $sum = $sum - ($carryover * 10);
            if ($previous_node === null) {
                $result_node = new ListNode((int)$sum);;
                $previous_node = $result_node;
            } else {
                $previous_node->next = new ListNode((int)$sum);
                $previous_node = $previous_node->next;
            }
            $previous_node = $previous_node->next;
            $first_node = $first_node->next;
        }

        while ($second_node !== null) {
            $sum = $second_node->val + $carryover;
            $carryover = (int)($sum / 10);
            $sum = $sum - ($carryover * 10);
            if ($previous_node === null) {
                $result_node = new ListNode((int)$sum);;
                $previous_node = $result_node;
            } else {
                $previous_node->next = new ListNode((int)$sum);
                $previous_node = $previous_node->next;
            }
            $previous_node = $previous_node->next;
            $first_node = $second_node->next;
        }

        return $result_node === null ? new ListNode() : $result_node;
    }
}

<<__EntryPoint>>
function main():void {
    echo"https://leetcode.com/problems/add-two-numbers/\n<br>\n
    O(n)<br><br>";

    $l1 = new ListNode(2, new ListNode(3, new ListNode(4, new ListNode(5))));
    $l2 = new ListNode(5, new ListNode(6, new ListNode(4)));
    $l3 = (new Solution())->addTwoNumbers($l1, $l2);
    echo $l1->__toString().'<br>';
    echo $l2->__toString().'<br>';
    echo $l3->__toString().'<br>';
}
