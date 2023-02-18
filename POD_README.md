# ${POD_NAME}

## Example

本仓库包含两个 Example 工程

* ExampleDevelop 用于开发组件功能
* ExamplePod 用于验证组件 pod 安装效果

## Lint && Push


## Installation

在 Podfile 添加以下语句

```ruby
pod '${POD_NAME}'
```

## Author

${USER_NAME}, ${USER_EMAIL}

## License

${POD_NAME} is available under the MIT license. See the LICENSE file for more info.


## 其他注意事项

@sunyinglun 发现了几个问题：

1. 工程中引用的 Pod 如果本身就是静态库的话，需要把 Podfile 中 use_framework! 删除，这个选项默认会把 pod 源码编译成动态库，pod 暂不支持依赖静态库。
2. 工程中引用的 Pod 如果是纯 Swift/混编 Pod 的话，需要把 Podfile 开启 use_modular_headers! 或者对应 Pod 开启 :modular_headers => true
3. 工程中引用的 Pod 如果是纯 Swift/混编 Pod 的话，需要在工程中随意创建一个 Swift 文件（Demo 工程默认是 Objc 工程，添加 Swift 文件后会默认更改工程配置为兼容 Swift 混编，这个无法手动开启），否则编译不过。
4.  Podspec 需要指定 swift_version，这个不能少，否则对于有依赖 Swift、混编 Pod 会 pod install 不过。
