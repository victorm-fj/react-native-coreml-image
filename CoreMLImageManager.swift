import Foundation

@available(iOS 11.0, *)
@objc(CoreMLImageManager)
class CoreMLImageManager: RCTViewManager {  
  override func view() -> UIView! {
    return CoreMLImage()
  }

  @objc func takePhoto(_ node:NSNumber) {
    DispatchQueue.main.async {
      let coreML = self.bridge.uiManager.view(forReactTag: node) as! CoreMLImage
      coreML.takePhoto()
    }
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
}
