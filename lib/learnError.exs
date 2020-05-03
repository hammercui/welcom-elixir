# 学习处理错误

raise ArgumentError, message: "the argument value is invalid"

# 区别于其他语言，捕捉错误用try raise rescue after 类似于java的try throw catch finally
# elixir也存在try throw catch,但含义是抛出特定的值来退出循环，并捕捉到改值

