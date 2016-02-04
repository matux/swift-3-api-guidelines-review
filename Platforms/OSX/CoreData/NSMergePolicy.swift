
@available(OSX 10.4, *)
var NSErrorMergePolicy: AnyObject
@available(OSX 10.4, *)
var NSMergeByPropertyStoreTrumpMergePolicy: AnyObject
@available(OSX 10.4, *)
var NSMergeByPropertyObjectTrumpMergePolicy: AnyObject
@available(OSX 10.4, *)
var NSOverwriteMergePolicy: AnyObject
@available(OSX 10.4, *)
var NSRollbackMergePolicy: AnyObject
enum NSMergePolicyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ErrorMergePolicyType
  case MergeByPropertyStoreTrumpMergePolicyType
  case MergeByPropertyObjectTrumpMergePolicyType
  case OverwriteMergePolicyType
  case RollbackMergePolicyType
}
@available(OSX 10.7, *)
class NSMergeConflict : NSObject {
  var sourceObject: NSManagedObject { get }
  var objectSnapshot: [String : AnyObject]? { get }
  var cachedSnapshot: [String : AnyObject]? { get }
  var persistedSnapshot: [String : AnyObject]? { get }
  var newVersionNumber: Int { get }
  var oldVersionNumber: Int { get }
  init(source srcObject: NSManagedObject, newVersion newvers: Int, oldVersion oldvers: Int, cachedSnapshot cachesnap: [String : AnyObject]?, persistedSnapshot persnap: [String : AnyObject]?)
}
@available(OSX 10.11, *)
class NSConstraintConflict : NSObject {
  var constraint: [String] { get }
  var constraintValues: [String : AnyObject] { get }
  var databaseObject: NSManagedObject? { get }
  var databaseSnapshot: [String : AnyObject]? { get }
  var conflictingObjects: [NSManagedObject] { get }
  var conflictingSnapshots: [[NSObject : AnyObject]] { get }
  init(constraint contraint: [String], databaseObject: NSManagedObject?, databaseSnapshot: [NSObject : AnyObject]?, conflictingObjects: [NSManagedObject], conflictingSnapshots: [AnyObject])
  convenience init()
}
@available(OSX 10.7, *)
class NSMergePolicy : NSObject {
  var mergeType: NSMergePolicyType { get }
  init(mergeType ty: NSMergePolicyType)
  func resolveConflicts(list: [AnyObject]) throws
  @available(OSX 10.11, *)
  func resolveOptimisticLockingVersionConflicts(list: [NSMergeConflict]) throws
  @available(OSX 10.11, *)
  func resolveConstraintConflicts(list: [NSConstraintConflict]) throws
}