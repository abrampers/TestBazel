# TestBazel
An Xcode project to play around with Bazel in iOS. Trying to build fully functional iOS App with Bazel.

## Todos
[x] Depend on Swift Library (RxSwift & SnapKit)
[ ] Able to achieve multi language module/framework (Objective-C, Swift)
[ ] Depend on Texture (previously AsyncDisplayKit)

## Known Issues
1. Issue from PodToBuild: Every Pod introduced doesn't have public visibility
2. Module naming follows `Vendor_{rule name}_{module name}` (i think)

## Before building on Xcode
```sh-session
pod install
```

## Building on Bazel
```sh-session
bazel build //:TestBazel
```

## Third Party Libraries Used
1. [PodToBuild](https://github.com/pinterest/PodToBUILD)