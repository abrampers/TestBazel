load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

# Based on RxSwift.podspec
swift_library(
    name = "RxSwift",
    module_name = "RxSwift",
    srcs = glob(
        ["Platform/**/*.swift", "RxSwift/**/*.swift"],
        exclude= ["RxSwift/Platform/**/*.swift"]
    ),
    visibility = ["//visibility:public"],
)