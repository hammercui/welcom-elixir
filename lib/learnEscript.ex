# 可执行文件,改可执行文件只能运行在安装了erlang的平台
defmodule ExampleApp.CLI do
  def main(args \\ []) do
    #IO.inspect("Hello App!")
    args
    |> parse_args
    |> response
    |> IO.puts()
  end

  #解析入参
  defp parse_args(args) do
    #通过parse解析cli,并通过模式匹配赋值
    {opts,word,_} =
      args
      |> OptionParser.parse(switches: [upcase: :boolean]) # 参数upcase是布尔型

    #返回元祖
    {opts,List.to_string(word)}
  end

  defp response({opts,word}) do
    if opts[:upcase],do: String.upcase(word),else: word
  end
end