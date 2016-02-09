
@available(OSX 10.11, *)
class WKWebsiteDataStore : Object {
  class func defaultDataStore() -> WKWebsiteDataStore
  class func nonPersistent() -> WKWebsiteDataStore
  var isPersistent: Bool { get }
  class func allWebsiteDataTypes() -> Set<String>
  func fetchDataRecordsOf(types dataTypes: Set<String>, completionHandler: ([WKWebsiteDataRecord]) -> Void)
  func removeData(ofTypes dataTypes: Set<String>, forDataRecords dataRecords: [WKWebsiteDataRecord], completionHandler: () -> Void)
  func removeData(ofTypes websiteDataTypes: Set<String>, modifiedSince date: Date, completionHandler: () -> Void)
}
