# 卫兵表达式
larger_than_two? = fn
n when is_integer(n) and n > 2  -> IO.inspect("整数并>2")
n when is_integer(n) -> IO.inspect("仅整数")
end

larger_than_two?.(2)