/*
 * Copyright 2015, The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <private/bionic_asm.h>

ENTRY(lrint)
  frintX d0, d0
  fcvtzs x0, d0
  ret
END(lrint)

ENTRY(lrintf)
  frintX s0, s0
  fcvtzs x0, s0
  ret
END(lrintf)

// sizeof(long) and sizeof(long long) are the same for aarch64
ALIAS_SYMBOL(llrint, lrint);

ALIAS_SYMBOL(llrintf, lrintf);
