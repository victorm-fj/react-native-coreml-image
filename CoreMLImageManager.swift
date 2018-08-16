import Foundation

@available(iOS 11.0, *)
@objc(CoreMLImageManager)
class CoreMLImageManager: RCTViewManager {
  var coreMLImage = CoreMLImage()
  
  override func view() -> UIView! {
    return coreMLImage
  }

  @objc func takePhoto() {
    DispatchQueue.main.async {
      self.coreMLImage.takePhoto()
    }
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
}
