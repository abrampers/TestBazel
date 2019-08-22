load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "TestBazelSources",
    srcs = glob([
         "TestBazel/*.swift",
    ]),
    data = [
        "TestBazel/Base.lproj/Main.storyboard"
    ],
    # deps = ["//Vendor/Texture:Texture"],
    # deps = [":TextureObjc"]
    deps = [
        "@Rx//:RxSwift",
        "@SnapKit//:SnapKit"
        # "//Vendor/RxSwift:RxSwift",
        # "//Vendor/SnapKit:SnapKit",
        # "//Vendor/Texture:Texture"
    ],
    copts = [
        "-DBAZELBUILD"
    ]
    # deps = ["@RxSwift//:RxSwift"]
)

ios_application(
    name = "TestBazel",
    bundle_id = "example.TestBazel",
    families = [
        "iphone",
    ],
    minimum_os_version = "11.0",
    infoplists = glob(["TestBazel/Info.plist"]),
    launch_storyboard = "TestBazel/Base.lproj/LaunchScreen.storyboard",
    deps = [":TestBazelSources"],
)