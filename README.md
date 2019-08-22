# TestBazel
An Xcode project to play around with Bazel in iOS. Trying to build fully functional iOS App with Bazel.

## Todos
- [x] Depend on Swift Library (RxSwift & SnapKit)
- [ ] Able to achieve multi language module/framework (Objective-C, Swift)
- [ ] Depend on Texture (previously AsyncDisplayKit)

## Known Issues
1. Issue from PodToBuild: Some of the Pod introduced doesn't have public visibility

## Before building on Xcode
```sh-session
pod install
```

## Building on Bazel
```sh-session
bazel build //:TestBazel
```

## Specs
1. [Bazel](https://bazel.build) [version **0.24.1**](https://github.com/bazelbuild/bazel/releases/tag/0.24.1)
2. [Rules Apple](https://github.com/bazelbuild/rules_apple) [commit **eaf5817105d1aa8c473b4e5c3ddfdc34b36b071f**](https://github.com/bazelbuild/rules_apple/commit/eaf5817105d1aa8c473b4e5c3ddfdc34b36b071f). One commit behind 0.16.1 which upgraded to a broken version of rules_swift on Bazel 0.24
3. [PodToBuild](https://github.com/pinterest/PodToBUILD) [version 0.25.2](https://github.com/pinterest/PodToBUILD/releases/download/0.25.2-fc71a0b/PodToBUILD.zip)