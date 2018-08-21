/*
 Copyright 2015-present the Material Components for iOS authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

/**
 The Typography component provides methods for getting sized fonts and opacities following Material
 style guidelines.

 This header is the umbrella header for the component and should be imported by consumers of the
 Typography component. Please do not directly import other headers. This will allow the componet to
 expand or contract the header file space without consumer modifications.
 */

#import "MDCFontTextStyle.h"
#import "MDCTypography.h"
#import "UIFont+MaterialSimpleEquality.h"
#import "UIFont+MaterialTypography.h"
#import "UIFontDescriptor+MaterialTypography.h"

#if !defined(__IPHONE_11_0)
#error "Canary for removing Xcode 8"
#endif

// HACK HACK HACK
// Manually set minimum iOS deplyment target to test against
#define ___IEG_MIN_IOS_DEPLOYMENT_TARGET __IPHONE_9_0

#if !defined(___IEG_MIN_IOS_DEPLOYMENT_TARGET)
#error "Canary for definition of ___IEG_MIN_IOS_DEPLOYMENT_TARGET"
#endif

#if ___IEG_MIN_IOS_DEPLOYMENT_TARGET >= __IPHONE_OS_VERSION_MIN_REQUIRED
#error "Canary for ___IEG_MIN_IOS_DEPLOYMENT_TARGET >= ___IEG_MIN_IOS_DEPLOYMENT_TARGET"
#endif
