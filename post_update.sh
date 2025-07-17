#!/bin/bash

#
# Copyright (C) 2025 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# After running external_updater/updater.sh external/javaparser, the release
# source has been downloaded but generated sources are not present. We need
# to run the code generation and copy it to the directory that will be used
# for compilation.
#

# Fail on any error.
set -e

# Build the project and run tests.
./mvnw clean install

# Copy target files into source directory.
cp -r 'javaparser-core/target/generated-sources' 'javaparser-core/'
