# iOSTemplate

本仓库为组件模板库，用于快速创建所需文件，主要包含以下几个方面的内容：

1. 基础文件
	1. xxx.podspec
	2. .gitignore
	3. README.md
2. 示例工程
	1. ExamplePod
3. Lint 相关文件
	1. .arcconfig
	2. .arclint
	3. .clang-format
	4. .swiftformat
4. 其他文件
	1. Gemfile
	2. Gemfile.lock

飞书文档：<>

## 使用方法

终端执行以下命令即可

```
$ pod lib create --template-url=https://github.com/lidian6864677/iOSTemplate.git 组件名字
```

## 示例工程

使用本模板仓库创建工程之后，自动包含一个 Example 工程。

### ExamplePod

用于测试当前组件 `pod install` 之后的效果，可以在准备发布之前，到 ExamplePod 目录执行 `pod install` 命令安装组件，并打开 ExamplePod 工程查看是否符合预期。

## 参考

* <https://guides.cocoapods.org/making/using-pod-lib-create.html>
* <https://github.com/cocoapods/pod-template>

## 其他注意事项

@sunyinglun 发现了几个问题：

1. 工程中引用的 Pod 如果本身就是静态库的话，需要把 Podfile 中 use_framework! 删除，这个选项默认会把 pod 源码编译成动态库，pod 暂不支持依赖静态库。
2. 工程中引用的 Pod 如果是纯 Swift/混编 Pod 的话，需要把 Podfile 开启 use_modular_headers! 或者对应 Pod 开启 :modular_headers => true
3. 工程中引用的 Pod 如果是纯 Swift/混编 Pod 的话，需要在工程中随意创建一个 Swift 文件（Demo 工程默认是 Objc 工程，添加 Swift 文件后会默认更改工程配置为兼容 Swift 混编，这个无法手动开启），否则编译不过。
4.  Podspec 需要指定 swift_version，这个不能少，否则对于有依赖 Swift、混编 Pod 会 pod install 不过。
