# Copyright 2016 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This .bazelrc file is generated by rbe_autoconfig
# when the output_base attr is used.
# It contains some  of the flags required for the provided
# toolchain with Remote Build Execution.
# Specifically, it includes all toolchain/platform flags
# This file is used for testing purposes.

build:remote --host_javabase=//%{dest_target}/java:jdk
build:remote --javabase=//%{dest_target}/java:jdk
build:remote --crosstool_top=//%{dest_target}/cc:toolchain
build:remote --extra_toolchains=//%{dest_target}/config:cc-toolchain
build:remote --extra_execution_platforms=//%{dest_target}/config:platform
build:remote --host_platform=//%{dest_target}/config:platform
build:remote --platforms=//%{dest_target}/config:platform

# Import the default bazelrc file in bazel-toolchains repo.
# This will only work for tests executed from bazel-toolchains
# repo.
try-import %workspace%/bazelrc/.bazelrc.test