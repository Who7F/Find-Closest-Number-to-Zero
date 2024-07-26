defmodule Solution do
  @spec find_closest_number(nums :: [integer]) :: integer
  def find_closest_number(nums) do
    if length(nums) > 1 do
        [head | tail] = nums;
        rtn = find_closest_number(tail);
        cond do
            abs(head) < abs(rtn) -> head
            abs(head) > abs(rtn) -> rtn
            true -> max(head, rtn)
        end
    else
        hd(nums)
    end
  end
end