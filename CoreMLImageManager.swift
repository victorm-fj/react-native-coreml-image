import Foundation

@available(iOS 11.0, *)
@objc(CoreMLImageManager)
class CoreMLImageManager: RCTViewManager {
  
  override func view() -> UIView! {
    return CoreMLImage();
  }

  @objc func takePhoto() -> Void {
    CoreMLImage.takePhoto();
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
}
