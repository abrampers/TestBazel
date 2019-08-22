load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")


git_repository(
    name = "build_bazel_rules_apple",
    remote = "https://github.com/bazelbuild/rules_apple.git",
    # This is 1 commit behind 0.16.1 which upgraded to a broken verison of
    # rules_swift on Bazel 0.24.
    commit = "eaf5817105d1aa8c473b4e5c3ddfdc34b36b071f",
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

http_archive(
    name = "rules_pods",
    urls = ["https://github.com/pinterest/PodToBUILD/releases/download/0.25.2-fc71a0b/PodToBUILD.zip"],
)

# Load the new_pod_repository macro - needed for `WORKSPACE` usage
load("@rules_pods//BazelExtensions:workspace.bzl", "new_pod_repository")

http_file(
    name = "xctestrunner",
    executable = 1,
    urls = ["https://github.com/google/xctestrunner/releases/download/0.2.2/ios_test_runner.par"],
)

# 3rd party libraries from pods
http_archive(
    name = "Rx",
    url = "https://github.com/ReactiveX/RxSwift/archive/5.0.1.zip",
    strip_prefix = "RxSwift-5.0.1",
    sha256 = "bf8a9e5cae58894cf3edddda9cd2ac307531c114f72658242121a80dcbcedf90",
    build_file = "@//Pods/RxSwift:BUILD",
)

http_archive(
    name = "SnapKit",
    url = "https://github.com/SnapKit/SnapKit/archive/5.0.1.zip",
    strip_prefix = "SnapKit-5.0.1",
    sha256 = "95594f6cf7d09282fd2c53eedbc7dce0259f2200a073e8d7950dffdb3db77932",
    build_file = "@//Pods/SnapKit:BUILD",
)