// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Tool Results API (toolresults/v1beta3)
// Description:
//   Reads and publishes results from Cloud Test Lab.
// Documentation:
//   https://developers.google.com/cloud-test-lab/

#import "GTLRToolResultsObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRToolResults_Execution.state
NSString * const kGTLRToolResults_Execution_State_Complete     = @"complete";
NSString * const kGTLRToolResults_Execution_State_InProgress   = @"inProgress";
NSString * const kGTLRToolResults_Execution_State_Pending      = @"pending";
NSString * const kGTLRToolResults_Execution_State_UnknownState = @"unknownState";

// GTLRToolResults_Outcome.summary
NSString * const kGTLRToolResults_Outcome_Summary_Failure      = @"failure";
NSString * const kGTLRToolResults_Outcome_Summary_Inconclusive = @"inconclusive";
NSString * const kGTLRToolResults_Outcome_Summary_Skipped      = @"skipped";
NSString * const kGTLRToolResults_Outcome_Summary_Success      = @"success";
NSString * const kGTLRToolResults_Outcome_Summary_Unset        = @"unset";

// GTLRToolResults_Step.state
NSString * const kGTLRToolResults_Step_State_Complete     = @"complete";
NSString * const kGTLRToolResults_Step_State_InProgress   = @"inProgress";
NSString * const kGTLRToolResults_Step_State_Pending      = @"pending";
NSString * const kGTLRToolResults_Step_State_UnknownState = @"unknownState";

// ----------------------------------------------------------------------------
//
//   GTLRToolResults_Any
//

@implementation GTLRToolResults_Any
@dynamic typeUrl, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_Duration
//

@implementation GTLRToolResults_Duration
@dynamic nanos, seconds;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_Execution
//

@implementation GTLRToolResults_Execution
@dynamic completionTime, creationTime, executionId, outcome, state,
         testExecutionMatrixId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_FailureDetail
//

@implementation GTLRToolResults_FailureDetail
@dynamic crashed, notInstalled, otherNativeCrash, timedOut, unableToCrawl;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_FileReference
//

@implementation GTLRToolResults_FileReference
@dynamic fileUri;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_History
//

@implementation GTLRToolResults_History
@dynamic displayName, historyId, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_Image
//

@implementation GTLRToolResults_Image
@dynamic error, sourceImage, stepId, thumbnail;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_InconclusiveDetail
//

@implementation GTLRToolResults_InconclusiveDetail
@dynamic abortedByUser, infrastructureFailure;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_ListExecutionsResponse
//

@implementation GTLRToolResults_ListExecutionsResponse
@dynamic executions, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"executions" : [GTLRToolResults_Execution class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"executions";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_ListHistoriesResponse
//

@implementation GTLRToolResults_ListHistoriesResponse
@dynamic histories, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"histories" : [GTLRToolResults_History class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"histories";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_ListStepsResponse
//

@implementation GTLRToolResults_ListStepsResponse
@dynamic nextPageToken, steps;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"steps" : [GTLRToolResults_Step class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"steps";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_ListStepThumbnailsResponse
//

@implementation GTLRToolResults_ListStepThumbnailsResponse
@dynamic nextPageToken, thumbnails;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"thumbnails" : [GTLRToolResults_Image class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"thumbnails";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_Outcome
//

@implementation GTLRToolResults_Outcome
@dynamic failureDetail, inconclusiveDetail, skippedDetail, successDetail,
         summary;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_ProjectSettings
//

@implementation GTLRToolResults_ProjectSettings
@dynamic defaultBucket, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_PublishXunitXmlFilesRequest
//

@implementation GTLRToolResults_PublishXunitXmlFilesRequest
@dynamic xunitXmlFiles;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"xunitXmlFiles" : [GTLRToolResults_FileReference class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_SkippedDetail
//

@implementation GTLRToolResults_SkippedDetail
@dynamic incompatibleAppVersion, incompatibleArchitecture, incompatibleDevice;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_StackTrace
//

@implementation GTLRToolResults_StackTrace
@dynamic exception;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_Status
//

@implementation GTLRToolResults_Status
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRToolResults_Any class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_Step
//

@implementation GTLRToolResults_Step
@dynamic completionTime, creationTime, descriptionProperty, deviceUsageDuration,
         dimensionValue, hasImages, labels, name, outcome, runDuration, state,
         stepId, testExecutionStep, toolExecutionStep;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"dimensionValue" : [GTLRToolResults_StepDimensionValueEntry class],
    @"labels" : [GTLRToolResults_StepLabelsEntry class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_StepDimensionValueEntry
//

@implementation GTLRToolResults_StepDimensionValueEntry
@dynamic key, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_StepLabelsEntry
//

@implementation GTLRToolResults_StepLabelsEntry
@dynamic key, value;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_SuccessDetail
//

@implementation GTLRToolResults_SuccessDetail
@dynamic otherNativeCrash;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_TestCaseReference
//

@implementation GTLRToolResults_TestCaseReference
@dynamic classNameProperty, name, testSuiteName;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"classNameProperty" : @"className" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_TestExecutionStep
//

@implementation GTLRToolResults_TestExecutionStep
@dynamic testIssues, testSuiteOverviews, testTiming, toolExecution;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"testIssues" : [GTLRToolResults_TestIssue class],
    @"testSuiteOverviews" : [GTLRToolResults_TestSuiteOverview class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_TestIssue
//

@implementation GTLRToolResults_TestIssue
@dynamic errorMessage, stackTrace;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_TestSuiteOverview
//

@implementation GTLRToolResults_TestSuiteOverview
@dynamic errorCount, failureCount, name, skippedCount, totalCount, xmlSource;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_TestTiming
//

@implementation GTLRToolResults_TestTiming
@dynamic testProcessDuration;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_Thumbnail
//

@implementation GTLRToolResults_Thumbnail
@dynamic contentType, data, heightPx, widthPx;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_Timestamp
//

@implementation GTLRToolResults_Timestamp
@dynamic nanos, seconds;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_ToolExecution
//

@implementation GTLRToolResults_ToolExecution
@dynamic commandLineArguments, exitCode, toolLogs, toolOutputs;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"commandLineArguments" : [NSString class],
    @"toolLogs" : [GTLRToolResults_FileReference class],
    @"toolOutputs" : [GTLRToolResults_ToolOutputReference class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_ToolExecutionStep
//

@implementation GTLRToolResults_ToolExecutionStep
@dynamic toolExecution;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_ToolExitCode
//

@implementation GTLRToolResults_ToolExitCode
@dynamic number;
@end


// ----------------------------------------------------------------------------
//
//   GTLRToolResults_ToolOutputReference
//

@implementation GTLRToolResults_ToolOutputReference
@dynamic creationTime, output, testCase;
@end
