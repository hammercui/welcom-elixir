<!--
 * @Description: 无
 * @version: 1.0.0
 * @Company: sdbean
 * @Author: hammercui
 * @Date: 2020-04-30 16:01:24
 * @LastEditors: hammercui
 * @LastEditTime: 2020-05-09 16:53:53
 -->

# Helloelixir

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `helloelixir` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:helloelixir, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/helloelixir](https://hexdocs.pm/helloelixir).

## mix新建项目
```
mix new helloProject
```

安装依赖`mix deps.get`
生成文档`mix docs`
生产环境编译`MIX_ENV=prod mix compile``

在iex环境使用最新的项目代码`iex -S mix`