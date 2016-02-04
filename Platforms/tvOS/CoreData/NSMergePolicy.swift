
@available(tvOS 3.0, *)
var NSErrorMergePolicy: AnyObject
@available(tvOS 3.0, *)
var NSMergeByPropertyStoreTrumpMergePolicy: AnyObject
@available(tvOS 3.0, *)
var NSMergeByPropertyObjectTrumpMergePolicy: AnyObject
@available(tvOS 3.0, *)
var NSOverwriteMergePolicy: AnyObject
@available(tvOS 3.0, *)
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
@available(tvOS 5.0, *)
class NSMergeConflict : NSObject {
  var sourceObject: NSManagedObject { get }
  var objectSnapshot: [String : AnyObject]? { get }
  var cachedSnapshot: [String : AnyObject]? { get }
  var persistedSnapshot: [String : AnyObject]? { get }
  var newVersionNumber: Int { get }
  var oldVersionNumber: Int { get }
  init(source srcObject: NSManagedObject, newVersion newvers: Int, oldVersion oldvers: Int, cachedSnapshot cachesnap: [String : AnyObject]?, persistedSnapshot persnap: [String : AnyObject]?)
}
@available(tvOS 9.0, *)
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
@available(tvOS 5.0, *)
class NSMergePolicy : NSObject {
  var mergeType: NSMergePolicyType { get }
  init(mergeType ty: NSMergePolicyType)
  func resolveConflicts(list: [AnyObject]) throws
  @available(tvOS 9.0, *)
  func resolveOptimisticLockingVersionConflicts(list: [NSMergeConflict]) throws
  @available(tvOS 9.0, *)
  func resolveConstraintConflicts(list: [NSConstraintConflict]) throws
}