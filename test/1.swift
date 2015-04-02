#!/usr/bin/env cato 1.2

import Chores
import Foundation

extension NSBundle {
  func fromAppStore() -> Bool? {
    return appStoreReceiptURL?.checkResourceIsReachableAndReturnError(nil)  
  }
}

let xcodes = split((>["mdfind", "kMDItemCFBundleIdentifier == 'com.apple.dt.Xcode'"]).stdout) {
  $0 == "\n"
}
println(xcodes.filter { !NSBundle(path: $0)!.fromAppStore()! })

