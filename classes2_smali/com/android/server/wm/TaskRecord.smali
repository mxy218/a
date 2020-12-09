.class Lcom/android/server/wm/TaskRecord;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskRecord$TaskRecordFactory;,
        Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;,
        Lcom/android/server/wm/TaskRecord$ReparentMoveStackMode;
    }
.end annotation


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PERSIST_TASK_VERSION:Ljava/lang/String; = "persist_task_version"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supports_picture_in_picture"

.field private static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field private static final INVALID_MIN_SIZE:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field private static final PERSIST_TASK_VERSION:I = 0x1

.field static final REPARENT_KEEP_STACK_AT_FRONT:I = 0x1

.field static final REPARENT_LEAVE_STACK_IN_PLACE:I = 0x2

.field static final REPARENT_MOVE_STACK_TO_FRONT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static sTaskRecordFactory:Lcom/android/server/wm/TaskRecord$TaskRecordFactory;


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field hasBeenVisible:Z

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field final mDisplayedBounds:Landroid/graphics/Rect;

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field mLastTimeMoved:J

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskUid:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/wm/TaskRecord;

.field mNextAffiliateTaskId:I

.field mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

.field mPrevAffiliateTaskId:I

.field mResizeMode:I

.field final mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

.field private mReuseTask:Z

.field private mRootProcess:Lcom/android/server/wm/WindowProcessController;

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mStack:Lcom/android/server/wm/ActivityStack;

.field private mSupportsPictureInPicture:Z

.field mTask:Lcom/android/server/wm/Task;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpInsets:Landroid/graphics/Rect;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mUserSetupComplete:Z

.field maxRecents:I

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field final taskId:I

.field userId:I

.field final voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)V
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityTaskManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;JZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)V"
        }
    .end annotation

    .line 407
    move-object v0, p0

    move v1, p2

    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 259
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 261
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    .line 265
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v4}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 279
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 288
    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 292
    iput-boolean v4, v0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 299
    iput v3, v0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 301
    iput v3, v0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 309
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 310
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 311
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 312
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    .line 317
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 325
    iput v3, v0, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    .line 330
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    .line 333
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 339
    new-instance v3, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    invoke-direct {v3}, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    .line 408
    move-object v3, p1

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 409
    iput v1, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 410
    move-object v3, p3

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 411
    move-object v3, p4

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 412
    move-object v3, p5

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    .line 413
    move-object v3, p6

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 414
    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 415
    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 416
    move-object v3, p7

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 417
    move/from16 v3, p28

    iput-boolean v3, v0, Lcom/android/server/wm/TaskRecord;->realActivitySuspended:Z

    .line 418
    move-object v3, p8

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 419
    move/from16 v3, p9

    iput-boolean v3, v0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    .line 420
    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    .line 421
    move/from16 v2, p10

    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    .line 422
    move/from16 v2, p11

    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->askedCompatMode:Z

    .line 423
    move/from16 v2, p12

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 424
    move/from16 v2, p29

    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->mUserSetupComplete:Z

    .line 425
    move/from16 v2, p13

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    .line 426
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 427
    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/server/wm/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 428
    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 429
    move-wide/from16 v2, p16

    iput-wide v2, v0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 430
    move/from16 v2, p18

    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 431
    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 432
    move/from16 v2, p20

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    .line 433
    move/from16 v2, p23

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    .line 434
    move/from16 v2, p21

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 435
    move/from16 v2, p22

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 436
    move/from16 v2, p24

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 437
    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 438
    move/from16 v2, p26

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 439
    move/from16 v2, p27

    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    .line 440
    move/from16 v2, p30

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    .line 441
    move/from16 v2, p31

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    .line 442
    iget-object v2, v0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, p2, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 443
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V
    .registers 11

    .line 370
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 259
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 261
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    .line 265
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 279
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 288
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 292
    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 299
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 301
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 309
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 310
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 311
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 312
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    .line 317
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 325
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    .line 330
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    .line 333
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 339
    new-instance v1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    invoke-direct {v1}, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    .line 371
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 372
    iget-object p1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 373
    iput p2, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 375
    iput p2, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    .line 376
    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 377
    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 378
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    .line 379
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 380
    iget-object p1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 381
    iget-object p1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 382
    invoke-direct {p0, p4, p3}, Lcom/android/server/wm/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 383
    invoke-direct {p0, p3}, Lcom/android/server/wm/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 385
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 387
    iget p1, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 388
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result p3

    .line 387
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskRecord;->maxRecents:I

    .line 390
    iput-object p5, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 391
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 392
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 393
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 12

    .line 346
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 259
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 261
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    .line 265
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 279
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 288
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 292
    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 299
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 301
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 309
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 310
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 311
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 312
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    .line 317
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 325
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    .line 330
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    .line 333
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 339
    new-instance v1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    invoke-direct {v1}, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    .line 347
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 348
    iget-object p1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 349
    iput p2, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 351
    iput p2, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    .line 352
    iput-object p5, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 353
    iput-object p6, p0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 354
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    .line 355
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 356
    iget-object p1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 357
    iget-object p1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 358
    invoke-direct {p0, p4, p3}, Lcom/android/server/wm/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 359
    invoke-direct {p0, p3}, Lcom/android/server/wm/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 361
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 362
    return-void
.end method

.method private calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
    .registers 11

    .line 2042
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2043
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2044
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p3

    if-eqz p3, :cond_56

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p3

    if-nez p3, :cond_17

    goto :goto_56

    .line 2047
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p3

    .line 2048
    if-nez p3, :cond_28

    .line 2049
    return-void

    .line 2051
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget v1, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2053
    iget v1, p4, Landroid/view/DisplayInfo;->rotation:I

    iget v2, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v4, p4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v5, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 2055
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/TaskRecord;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2057
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    iget p4, p4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p3, p1, p4}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 2058
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p2, p1, p3}, Lcom/android/server/wm/TaskRecord;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2059
    return-void

    .line 2045
    :cond_56
    :goto_56
    return-void
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .registers 7

    .line 1620
    const/4 v0, 0x1

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4a

    .line 1624
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v2, 0x0

    if-le v1, p1, :cond_17

    move p1, v0

    goto :goto_18

    :cond_17
    move p1, v2

    .line 1625
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1626
    iget v3, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3b

    .line 1627
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_39

    .line 1628
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v3, v1, :cond_33

    move v1, v0

    goto :goto_34

    :cond_33
    move v1, v2

    :goto_34
    if-ne p1, v1, :cond_37

    goto :goto_39

    :cond_37
    move v0, v2

    goto :goto_3a

    :cond_39
    :goto_39
    nop

    .line 1627
    :goto_3a
    return v0

    .line 1630
    :cond_3b
    const/4 v1, 0x6

    if-ne v3, v1, :cond_40

    if-nez p1, :cond_48

    :cond_40
    iget v1, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_49

    if-eqz p1, :cond_48

    goto :goto_49

    :cond_48
    move v0, v2

    :cond_49
    :goto_49
    return v0

    .line 1622
    :cond_4a
    :goto_4a
    return v0
.end method

.method private closeRecentsChain()V
    .registers 3

    .line 1065
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_9

    .line 1066
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1068
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_12

    .line 1069
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1071
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1072
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1073
    return-void
.end method

.method static create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/TaskRecord;
    .registers 11

    .line 2710
    invoke-static {}, Lcom/android/server/wm/TaskRecord;->getTaskRecordFactory()Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/TaskRecord;

    move-result-object p0

    return-object p0
.end method

.method static create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/TaskRecord;
    .registers 13

    .line 2704
    invoke-static {}, Lcom/android/server/wm/TaskRecord;->getTaskRecordFactory()Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/TaskRecord;

    move-result-object p0

    return-object p0
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 7

    .line 1942
    if-eqz p1, :cond_61

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_61

    .line 1948
    :cond_f
    nop

    .line 1950
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1951
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_27

    .line 1952
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    goto :goto_37

    .line 1953
    :cond_27
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p2

    if-le v0, v1, :cond_36

    .line 1954
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    neg-int p2, p2

    goto :goto_37

    .line 1953
    :cond_36
    move p2, v2

    .line 1956
    :goto_37
    nop

    .line 1957
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1958
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    if-ge v0, v1, :cond_4f

    .line 1959
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    sub-int v2, p3, v0

    goto :goto_5d

    .line 1960
    :cond_4f
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p3

    if-le v0, v1, :cond_5d

    .line 1961
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    sub-int/2addr p3, p1

    neg-int v2, p3

    .line 1963
    :cond_5d
    :goto_5d
    invoke-virtual {p0, p2, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1964
    return-void

    .line 1943
    :cond_61
    :goto_61
    return-void
.end method

.method private getSmallestScreenWidthDpForDockedBounds(Landroid/graphics/Rect;)I
    .registers 3

    .line 2066
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2067
    if-eqz v0, :cond_13

    .line 2068
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DockedStackDividerController;->getSmallestWidthDpForBounds(Landroid/graphics/Rect;)I

    move-result p1

    return p1

    .line 2070
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method static getTaskRecordFactory()Lcom/android/server/wm/TaskRecord$TaskRecordFactory;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2691
    sget-object v0, Lcom/android/server/wm/TaskRecord;->sTaskRecordFactory:Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    if-nez v0, :cond_c

    .line 2692
    new-instance v0, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    invoke-direct {v0}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;-><init>()V

    invoke-static {v0}, Lcom/android/server/wm/TaskRecord;->setTaskRecordFactory(Lcom/android/server/wm/TaskRecord$TaskRecordFactory;)V

    .line 2694
    :cond_c
    sget-object v0, Lcom/android/server/wm/TaskRecord;->sTaskRecordFactory:Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    return-object v0
.end method

.method static intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    .line 2012
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_13

    .line 2013
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 2014
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 2016
    :cond_13
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_26

    .line 2017
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 2018
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2020
    :cond_26
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_39

    .line 2021
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 2022
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 2024
    :cond_39
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_4c

    .line 2025
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iget p2, p0, Landroid/graphics/Rect;->top:I

    .line 2026
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 2028
    :cond_4c
    return-void
.end method

.method private isResizeable(Z)Z
    .registers 3

    .line 1582
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_17

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method private static replaceWindowsOnTaskMove(II)Z
    .registers 3

    .line 839
    const/4 v0, 0x5

    if-eq p0, v0, :cond_8

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/TaskRecord;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2715
    invoke-static {}, Lcom/android/server/wm/TaskRecord;->getTaskRecordFactory()Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/TaskRecord;

    move-result-object p0

    return-object p0
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 9

    .line 880
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    .line 881
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    goto :goto_17

    .line 883
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    if-eqz v0, :cond_17

    .line 884
    return-void

    .line 887
    :cond_17
    :goto_17
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    .line 888
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_23

    .line 892
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 894
    :cond_23
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    .line 895
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->stringName:Ljava/lang/String;

    .line 897
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v3, :cond_59

    .line 898
    if-eqz p1, :cond_4a

    .line 902
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_3e

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 903
    :cond_3e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 904
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 905
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v3

    .line 909
    :cond_4a
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 910
    if-eqz p1, :cond_53

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_54

    :cond_53
    move-object p1, v0

    :goto_54
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 911
    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_89

    .line 913
    :cond_59
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    if-eqz p1, :cond_7a

    .line 916
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 917
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 918
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 921
    iput-object v4, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 922
    iput-object v3, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 923
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 924
    goto :goto_89

    .line 925
    :cond_7a
    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 926
    iput-object v3, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 927
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 931
    :goto_89
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-nez p1, :cond_8f

    move p1, v2

    goto :goto_93

    :cond_8f
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    .line 932
    :goto_93
    const/high16 v0, 0x200000

    and-int/2addr v0, p1

    if-eqz v0, :cond_9a

    .line 935
    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    .line 937
    :cond_9a
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 938
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    const-string v4, "user_setup_complete"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_b8

    move v0, v1

    goto :goto_b9

    :cond_b8
    move v0, v2

    :goto_b9
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mUserSetupComplete:Z

    .line 940
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_c4

    .line 942
    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    goto :goto_d8

    .line 943
    :cond_c4
    const v0, 0x82000

    and-int/2addr p1, v0

    const/high16 v0, 0x80000

    if-ne p1, v0, :cond_d6

    .line 948
    iget p1, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz p1, :cond_d3

    .line 949
    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    goto :goto_d8

    .line 951
    :cond_d3
    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    goto :goto_d8

    .line 954
    :cond_d6
    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    .line 956
    :goto_d8
    iget p1, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput p1, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 957
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    .line 958
    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 1551
    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 1552
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 1553
    return-void

    .line 1556
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 1557
    :goto_10
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    .line 1558
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    const/4 v3, 0x3

    if-eqz p1, :cond_39

    if-eq p1, v0, :cond_35

    const/4 v4, 0x2

    if-eq p1, v4, :cond_31

    if-eq p1, v3, :cond_23

    goto :goto_47

    .line 1573
    :cond_23
    iget p1, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 1574
    move v0, v4

    goto :goto_2e

    :cond_2d
    nop

    :goto_2e
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    goto :goto_47

    .line 1569
    :cond_31
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 1570
    goto :goto_47

    .line 1565
    :cond_35
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 1566
    goto :goto_47

    .line 1560
    :cond_39
    iget p1, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 1561
    move v0, v3

    goto :goto_44

    :cond_43
    nop

    :goto_44
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 1562
    nop

    .line 1579
    :goto_47
    return-void
.end method

.method private setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .registers 3

    .line 962
    if-eqz p1, :cond_13

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_13

    .line 963
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    .line 964
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput p1, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    goto :goto_18

    .line 966
    :cond_13
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    .line 967
    iput p1, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    .line 969
    :goto_18
    return-void
.end method

.method static setTaskRecordFactory(Lcom/android/server/wm/TaskRecord$TaskRecordFactory;)V
    .registers 1

    .line 2698
    sput-object p0, Lcom/android/server/wm/TaskRecord;->sTaskRecordFactory:Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    .line 2699
    return-void
.end method


# virtual methods
.method addActivityAtIndex(ILcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 1298
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 1299
    if-eqz v0, :cond_28

    if-ne v0, p0, :cond_9

    goto :goto_28

    .line 1300
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not add r= to task="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " current parent="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1304
    :cond_28
    :goto_28
    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1307
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3d

    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_3d

    .line 1309
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    .line 1312
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1313
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    if-nez v0, :cond_4e

    .line 1318
    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1320
    :cond_4e
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->setActivityType(I)V

    .line 1321
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 1322
    iget v0, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 1323
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 1325
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1326
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    .line 1325
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->maxRecents:I

    goto :goto_7d

    .line 1329
    :cond_76
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1332
    :goto_7d
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1334
    if-ne p1, v0, :cond_97

    if-lez v0, :cond_97

    .line 1335
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1336
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v1, :cond_97

    .line 1339
    add-int/lit8 p1, p1, -0x1

    .line 1343
    :cond_97
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1344
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1346
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateEffectiveIntent()V

    .line 1347
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1348
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1351
    :cond_af
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_ba

    .line 1354
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/Task;->positionChildAt(Lcom/android/server/wm/AppWindowToken;I)V

    .line 1359
    :cond_ba
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->updateUIDsPresentOnDisplay()V

    .line 1360
    return-void
.end method

.method addActivityToTop(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1280
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskRecord;->addActivityAtIndex(ILcom/android/server/wm/ActivityRecord;)V

    .line 1281
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .registers 6

    .line 2354
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 2355
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2356
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v2, :cond_1b

    .line 2357
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2354
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2360
    :cond_1e
    return-void
.end method

.method adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    .line 1765
    if-nez p1, :cond_3

    .line 1766
    return-void

    .line 1768
    :cond_3
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    .line 1769
    iget v1, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    .line 1773
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_38

    .line 1774
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v2, v2, Lcom/android/server/wm/RootActivityContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 1776
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    iget v4, v4, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 1777
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 1778
    nop

    .line 1779
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000  # 160.0f

    div-float/2addr v3, v4

    .line 1780
    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1782
    const/4 v3, -0x1

    if-ne v0, v3, :cond_35

    .line 1783
    move v0, v2

    .line 1785
    :cond_35
    if-ne v1, v3, :cond_38

    .line 1786
    move v1, v2

    .line 1789
    :cond_38
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v2, :cond_42

    move v2, v3

    goto :goto_43

    :cond_42
    move v2, v4

    .line 1790
    :goto_43
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_4a

    goto :goto_4b

    :cond_4a
    move v3, v4

    .line 1791
    :goto_4b
    if-nez v2, :cond_50

    if-nez v3, :cond_50

    .line 1792
    return-void

    .line 1795
    :cond_50
    if-eqz v2, :cond_69

    .line 1796
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_64

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    if-ne v2, v4, :cond_64

    .line 1797
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_69

    .line 1801
    :cond_64
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 1804
    :cond_69
    :goto_69
    if-eqz v3, :cond_82

    .line 1805
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p2, :cond_7d

    .line 1806
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v1

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_82

    .line 1810
    :cond_7d
    iget p2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1813
    :cond_82
    :goto_82
    return-void
.end method

.method autoRemoveFromRecents()Z
    .registers 2

    .line 1425
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->hasBeenVisible:Z

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method canBeLaunchedOnDisplay(I)Z
    .registers 5

    .line 1609
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result p1

    return p1
.end method

.method cancelWindowTransition()V
    .registers 3

    .line 844
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_22

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelWindowTransition: taskId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return-void

    .line 848
    :cond_22
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cancelTaskWindowTransition()V

    .line 849
    return-void
.end method

.method cleanUpResourcesForDestroy()V
    .registers 5

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 480
    return-void

    .line 484
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->saveLaunchingStateIfNeeded()V

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 488
    :goto_13
    if-eqz v0, :cond_20

    .line 490
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-interface {v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 492
    goto :goto_20

    .line 491
    :catch_1f
    move-exception v1

    .line 494
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->autoRemoveFromRecents()Z

    move-result v1

    if-nez v1, :cond_28

    if-eqz v0, :cond_31

    .line 497
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    .line 500
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->removeWindowContainer()V

    .line 501
    return-void
.end method

.method clearAllPendingOptions()V
    .registers 4

    .line 2379
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_13

    .line 2380
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked(Z)V

    .line 2379
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2382
    :cond_13
    return-void
.end method

.method clearRootProcess()V
    .registers 2

    .line 2372
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_a

    .line 2373
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->removeRecentTask(Lcom/android/server/wm/TaskRecord;)V

    .line 2374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2376
    :cond_a
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4

    .line 2075
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskRecord;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2076
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .registers 14

    .line 2089
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2090
    if-nez v0, :cond_e

    .line 2091
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2094
    :cond_e
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    .line 2095
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_19

    .line 2096
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    .line 2098
    :cond_19
    const v2, 0x3bcccccd  # 0.00625f

    mul-float/2addr v1, v2

    .line 2100
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2101
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2102
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2103
    :cond_31
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3, v2}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 2104
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2108
    :cond_3c
    const/4 v4, 0x1

    if-nez p3, :cond_41

    move v5, v4

    goto :goto_42

    :cond_41
    const/4 v5, 0x0

    .line 2109
    :goto_42
    if-eqz v5, :cond_58

    const/4 v6, 0x5

    if-eq v0, v6, :cond_58

    .line 2110
    iget-object v6, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2111
    if-eqz v6, :cond_58

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_58

    .line 2112
    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2116
    :cond_58
    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v6, :cond_60

    iget v6, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v6, :cond_11a

    .line 2118
    :cond_60
    if-eqz v5, :cond_7e

    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_7e

    .line 2119
    new-instance p3, Landroid/view/DisplayInfo;

    invoke-direct {p3}, Landroid/view/DisplayInfo;-><init>()V

    .line 2120
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, p3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 2126
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v6, v2, p3}, Lcom/android/server/wm/TaskRecord;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    .line 2127
    goto :goto_be

    .line 2130
    :cond_7e
    iget-object v6, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    .line 2131
    const/4 v7, -0x1

    if-eq v6, v7, :cond_b4

    if-eqz p3, :cond_b4

    .line 2132
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2133
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2134
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v7, v6}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getDisplayBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 2135
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v9, p3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v6

    invoke-static {v7, v8, v9}, Lcom/android/server/wm/TaskRecord;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2137
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object p3, p3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object p3, p3, v6

    invoke-static {v7, v8, p3}, Lcom/android/server/wm/TaskRecord;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2139
    iget-object p3, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_be

    .line 2142
    :cond_b4
    iget-object p3, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2143
    iget-object p3, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2147
    :goto_be
    iget p3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-nez p3, :cond_d7

    .line 2148
    iget-object p3, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v1

    float-to-int p3, p3

    .line 2149
    if-eqz v5, :cond_d4

    .line 2150
    iget v3, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_d5

    .line 2151
    :cond_d4
    nop

    :goto_d5
    iput p3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2153
    :cond_d7
    iget p3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez p3, :cond_f0

    .line 2154
    iget-object p3, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v1

    float-to-int p3, p3

    .line 2155
    if-eqz v5, :cond_ed

    .line 2156
    iget v3, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_ee

    .line 2157
    :cond_ed
    nop

    :goto_ee
    iput p3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2160
    :cond_f0
    iget p3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez p3, :cond_11a

    .line 2162
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result p3

    if-eqz p3, :cond_10d

    .line 2164
    nop

    .line 2165
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v1

    float-to-int p3, p3

    iput p3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_11a

    .line 2166
    :cond_10d
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result p3

    if-eqz p3, :cond_11a

    .line 2170
    nop

    .line 2171
    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskRecord;->getSmallestScreenWidthDpForDockedBounds(Landroid/graphics/Rect;)I

    move-result p3

    iput p3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2177
    :cond_11a
    :goto_11a
    iget p3, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez p3, :cond_128

    .line 2178
    iget p3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt p3, v0, :cond_125

    .line 2179
    goto :goto_126

    :cond_125
    const/4 v4, 0x2

    :goto_126
    iput v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2181
    :cond_128
    iget p3, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-nez p3, :cond_150

    .line 2185
    iget-object p3, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v1

    float-to-int p3, p3

    .line 2186
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 2190
    iget p2, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p2, p2, 0x3f

    .line 2192
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2193
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2194
    invoke-static {p2, v1, p3}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result p2

    iput p2, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2196
    :cond_150
    return-void
.end method

.method computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V
    .registers 8

    .line 2265
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2266
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2267
    return-void

    .line 2269
    :cond_a
    if-nez p2, :cond_11

    .line 2273
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskRecord;->getTopActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    .line 2278
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2280
    if-nez v0, :cond_21

    if-nez p2, :cond_1c

    goto :goto_21

    .line 2281
    :cond_1c
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v0

    goto :goto_22

    :cond_21
    :goto_21
    nop

    .line 2282
    :goto_22
    if-eqz v0, :cond_5a

    if-ne v0, p4, :cond_27

    goto :goto_5a

    .line 2286
    :cond_27
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 2287
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p4

    .line 2288
    int-to-float p4, p4

    int-to-float p2, p2

    div-float v1, p4, p2

    .line 2289
    const/4 v2, 0x2

    if-ne v0, v2, :cond_48

    .line 2290
    div-float/2addr p2, v1

    float-to-int p2, p2

    .line 2291
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p4, v0

    .line 2292
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p4

    invoke-virtual {p1, v0, p4, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2293
    goto :goto_59

    .line 2294
    :cond_48
    mul-float/2addr p4, v1

    float-to-int p2, p4

    .line 2295
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p4, v0

    .line 2296
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p4

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p4, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2298
    :goto_59
    return-void

    .line 2283
    :cond_5a
    :goto_5a
    return-void
.end method

.method containsAppUid(I)Z
    .registers 5

    .line 1169
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1170
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1171
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 1172
    return v1

    .line 1169
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1175
    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method createTask(ZZ)V
    .registers 14

    .line 450
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_79

    .line 455
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 456
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_60

    .line 461
    const/16 v1, 0x7919

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 462
    new-instance v10, Lcom/android/server/wm/Task;

    iget v2, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v4, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v6, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    iget-boolean v7, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    iget-object v8, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object v1, v10

    move-object v3, v0

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/Task;-><init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;IZLandroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/TaskRecord;)V

    iput-object v10, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    .line 464
    if-eqz p1, :cond_49

    const v1, 0x7fffffff

    goto :goto_4b

    :cond_49
    const/high16 v1, -0x80000000

    .line 466
    :goto_4b
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 467
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->setOverrideDisplayedBounds(Landroid/graphics/Rect;)V

    .line 471
    :cond_5a
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v2, v1, p2, p1}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V

    .line 472
    return-void

    .line 459
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TaskRecord: invalid stack="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 451
    :cond_79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTask="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " already created for task="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12

    .line 2422
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2423
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2424
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2425
    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2426
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2427
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_65

    .line 2428
    :cond_3d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2429
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_5b

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_5b

    .line 2432
    :cond_57
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_65

    .line 2430
    :cond_5b
    :goto_5b
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2435
    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_94

    .line 2436
    :cond_6d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2437
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2438
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2439
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2441
    :cond_94
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_bd

    .line 2442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2443
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2444
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 2445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2448
    :cond_bd
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_e2

    .line 2449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2450
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2451
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 2452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2455
    :cond_e2
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_f7

    .line 2456
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2457
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2459
    :cond_f7
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_10c

    .line 2460
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2461
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2463
    :cond_10c
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_11e

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-nez v0, :cond_11e

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_11e

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    if-eqz v0, :cond_14b

    .line 2464
    :cond_11e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2465
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2466
    const-string v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2467
    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2469
    :cond_14b
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_15c

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_15c

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    if-nez v0, :cond_15c

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_189

    .line 2471
    :cond_15c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2472
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2473
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2474
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2476
    :cond_189
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-ne v0, v1, :cond_1a0

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a0

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-nez v0, :cond_1a0

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v0, v1, :cond_1a0

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_1f6

    .line 2479
    :cond_1a0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2480
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2481
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2482
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    const-string v2, "null"

    if-nez v1, :cond_1c6

    .line 2483
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1d1

    .line 2485
    :cond_1c6
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2487
    :goto_1d1
    const-string v1, ") nextAffiliation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2488
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2489
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-nez v0, :cond_1e6

    .line 2490
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1f1

    .line 2492
    :cond_1e6
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    :goto_1f1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2496
    :cond_1f6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2497
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->askedCompatMode:Z

    if-eqz v0, :cond_20f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_20f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    if-nez v0, :cond_230

    .line 2498
    :cond_20f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2499
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2500
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2502
    :cond_230
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_241

    .line 2503
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2505
    :cond_241
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_252

    .line 2506
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2508
    :cond_252
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "stackId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStackId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "hasBeenVisible="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/TaskRecord;->hasBeenVisible:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2510
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mResizeMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2511
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mSupportsPictureInPicture="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2512
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " isResizeable="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2513
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " lastActiveTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2514
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " (inactive for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getInactiveDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "s)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2515
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;)V
    .registers 4

    .line 2389
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->getNumRunningActivities(Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;)V

    .line 2390
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    iput v0, p1, Landroid/app/TaskInfo;->userId:I

    .line 2391
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStackId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->stackId:I

    .line 2392
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iput v0, p1, Landroid/app/TaskInfo;->taskId:I

    .line 2393
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-nez v0, :cond_19

    const/4 v0, -0x1

    goto :goto_1b

    :cond_19
    iget v0, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    :goto_1b
    iput v0, p1, Landroid/app/TaskInfo;->displayId:I

    .line 2394
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iput-boolean v0, p1, Landroid/app/TaskInfo;->isRunning:Z

    .line 2395
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2396
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 2397
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_46

    .line 2398
    :cond_45
    move-object v0, v1

    :goto_46
    iput-object v0, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 2399
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_55

    .line 2400
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_56

    .line 2401
    :cond_55
    nop

    :goto_56
    iput-object v1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2402
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    iput-object v0, p1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 2403
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 2404
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numActivities:I

    iput v0, p1, Landroid/app/TaskInfo;->numActivities:I

    .line 2405
    iget-wide v0, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    iput-wide v0, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    .line 2406
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v0, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2407
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    iput-boolean v0, p1, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 2408
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    iput v0, p1, Landroid/app/TaskInfo;->resizeMode:I

    .line 2409
    iget-object p1, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2410
    return-void
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    .line 1646
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1647
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_25

    .line 1648
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1649
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_19

    .line 1650
    goto :goto_22

    .line 1652
    :cond_19
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1653
    return-object v1

    .line 1647
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1656
    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method findEffectiveRootIndex()I
    .registers 6

    .line 1740
    nop

    .line 1741
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1742
    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-gt v1, v0, :cond_28

    .line 1743
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1744
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1a

    .line 1745
    goto :goto_25

    .line 1747
    :cond_1a
    nop

    .line 1748
    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x1000

    if-nez v2, :cond_24

    .line 1749
    goto :goto_29

    .line 1748
    :cond_24
    move v2, v1

    .line 1742
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_28
    move v1, v2

    .line 1752
    :goto_29
    return v1
.end method

.method public getActivityType()I
    .registers 3

    .line 1286
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 1287
    if-nez v0, :cond_1d

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_1d

    .line 1290
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    return v0

    .line 1288
    :cond_1d
    :goto_1d
    return v0
.end method

.method getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 1179
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_2a

    .line 1180
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_2a

    .line 1181
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1182
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_27

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v2, :cond_27

    .line 1183
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1187
    :cond_2a
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .registers 2

    .line 1113
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    :goto_7
    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 1049
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    return-object p1
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    .line 1044
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDisplayedBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1988
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getInactiveDuration()J
    .registers 5

    .line 867
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .registers 4

    .line 2338
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2339
    return-object v1

    .line 2342
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v0

    .line 2343
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x1

    if-eq v0, v2, :cond_31

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1d

    .line 2345
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_31

    .line 2347
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2348
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 2350
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v0

    .line 2346
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_3d
    return-object v1
.end method

.method getNumRunningActivities(Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;)V
    .registers 6

    .line 1208
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->reset()V

    .line 1209
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_44

    .line 1210
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1211
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1a

    .line 1212
    goto :goto_41

    .line 1215
    :cond_1a
    iput-object v1, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    .line 1218
    iget v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numActivities:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numActivities:I

    .line 1220
    iget-object v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_30

    iget-object v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1221
    :cond_30
    iput-object v1, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 1224
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numRunning:I

    .line 1226
    :cond_35
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1228
    iget v1, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numRunning:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numRunning:I

    .line 1209
    :cond_41
    :goto_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1231
    :cond_44
    return-void
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 1054
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 1118
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 1119
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1120
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_19

    .line 1121
    nop

    .line 1118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1123
    :cond_19
    return-object v1

    .line 1125
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 6

    .line 858
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p1

    return-object p1
.end method

.method getStack()Lcom/android/server/wm/ActivityStack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">()TT;"
        }
    .end annotation

    .line 1001
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getStackId()I
    .registers 2

    .line 1039
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0
.end method

.method getTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    .line 2416
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 2417
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 2418
    return-object v0
.end method

.method getTopActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->getTopActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    .line 1133
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_21

    .line 1134
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1135
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1e

    if-nez p1, :cond_1d

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_1d

    .line 1136
    goto :goto_1e

    .line 1138
    :cond_1d
    return-object v1

    .line 1133
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1140
    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_8

    .line 629
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_b

    .line 631
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 633
    :goto_b
    return-void
.end method

.method handlesOrientationChangeFromDescendant()Z
    .registers 2

    .line 2253
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    .line 2254
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2253
    :goto_19
    return v0
.end method

.method hasDisplayedBounds()Z
    .registers 2

    .line 1995
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isClearingToReuseTask()Z
    .registers 2

    .line 1638
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    return v0
.end method

.method isResizeable()Z
    .registers 2

    .line 1587
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskRecord;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 976
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 979
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_1c

    .line 980
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 982
    :cond_1c
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method isVisible()Z
    .registers 4

    .line 1156
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1a

    .line 1157
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1158
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v2, :cond_17

    .line 1159
    return v1

    .line 1156
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1162
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .registers 3

    .line 1536
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-eqz v0, :cond_30

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1541
    :cond_24
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 1540
    :cond_27
    const-string v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    .line 1539
    :cond_2a
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 1538
    :cond_2d
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 1537
    :cond_30
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1269
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1270
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/AppWindowToken;)V

    .line 1274
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateEffectiveIntent()V

    .line 1276
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->setFrontOfTask()V

    .line 1277
    return-void
.end method

.method okToShowLocked()Z
    .registers 3

    .line 1236
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1237
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 1236
    :goto_16
    return v0
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    .registers 5

    .line 1867
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1869
    if-eqz v0, :cond_9

    .line 1870
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1872
    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1878
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    .line 1879
    nop

    .line 1880
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1881
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v1, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v1, 0x1

    .line 1882
    :goto_21
    if-nez v0, :cond_3a

    if-eqz v1, :cond_3a

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_3a

    .line 1883
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1885
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1886
    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 1889
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inMultiWindowMode()Z

    move-result v0

    .line 1890
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1891
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inMultiWindowMode()Z

    move-result p1

    if-eq v0, p1, :cond_4e

    .line 1892
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/wm/TaskRecord;)V

    .line 1897
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 1898
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 1899
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    .line 1900
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 1905
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->saveLaunchingStateIfNeeded()V

    .line 1906
    return-void
.end method

.method protected onParentChanged()V
    .registers 2

    .line 1059
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 1060
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->updateUIDsPresentOnDisplay()V

    .line 1061
    return-void
.end method

.method public onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .registers 4

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 522
    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .registers 8

    .line 1407
    nop

    .line 1408
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ltz v0, :cond_26

    .line 1409
    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1410
    if-eqz p1, :cond_1c

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1c

    .line 1411
    goto :goto_23

    .line 1413
    :cond_1c
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez v4, :cond_21

    .line 1414
    return v2

    .line 1416
    :cond_21
    add-int/lit8 v3, v3, 0x1

    .line 1408
    :goto_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1418
    :cond_26
    if-lez v3, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    return v1
.end method

.method final performClearTaskAtIndexLocked(IZLjava/lang/String;)V
    .registers 13

    .line 1434
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1435
    :goto_6
    if-ge p1, v0, :cond_39

    .line 1436
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1437
    iget-boolean v1, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_16

    .line 1438
    goto :goto_36

    .line 1440
    :cond_16
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-nez v2, :cond_27

    .line 1442
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 1443
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1444
    add-int/lit8 p1, p1, -0x1

    .line 1445
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 1446
    :cond_27
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p3

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1448
    add-int/lit8 p1, p1, -0x1

    .line 1449
    add-int/lit8 v0, v0, -0x1

    .line 1435
    :cond_36
    :goto_36
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 1452
    :cond_39
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 1464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 1465
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskRecord;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1466
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 1467
    return-object p1
.end method

.method final performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .registers 15

    .line 1482
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1483
    add-int/lit8 v1, v0, -0x1

    :goto_8
    const/4 v2, 0x0

    if-ltz v1, :cond_79

    .line 1484
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1485
    iget-boolean v3, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_19

    .line 1486
    goto :goto_76

    .line 1488
    :cond_19
    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 1490
    nop

    .line 1492
    nop

    :goto_25
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_55

    .line 1493
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 1494
    iget-boolean p1, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p1, :cond_37

    .line 1495
    goto :goto_54

    .line 1497
    :cond_37
    const/4 p1, 0x0

    invoke-virtual {v7, p1}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 1498
    if-eqz p1, :cond_41

    .line 1499
    invoke-virtual {v5, p1}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1501
    :cond_41
    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_54

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v10, "clear-task-stack"

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 1503
    add-int/lit8 v1, v1, -0x1

    .line 1504
    add-int/lit8 v0, v0, -0x1

    .line 1492
    :cond_54
    :goto_54
    goto :goto_25

    .line 1511
    :cond_55
    iget p1, v5, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-nez p1, :cond_75

    const/high16 p1, 0x20000000

    and-int/2addr p1, p2

    if-nez p1, :cond_75

    .line 1513
    invoke-static {p2}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result p1

    if-nez p1, :cond_75

    .line 1514
    iget-boolean p1, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p1, :cond_75

    .line 1515
    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v4, :cond_74

    .line 1516
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v8, "clear-task-top"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1519
    :cond_74
    return-object v2

    .line 1523
    :cond_75
    return-object v5

    .line 1483
    :cond_76
    :goto_76
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1527
    :cond_79
    return-object v2
.end method

.method performClearTaskLocked()V
    .registers 3

    .line 1458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 1459
    const/4 v0, 0x0

    const-string v1, "clear-task-all"

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wm/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    .line 1460
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 1461
    return-void
.end method

.method removeActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 1368
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskRecord;->removeActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p1

    return p1
.end method

.method removeActivity(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 5

    .line 1372
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-ne v0, p0, :cond_48

    .line 1377
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1379
    iget-object p2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    iget-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz p2, :cond_1c

    .line 1381
    iget p2, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    .line 1383
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_28

    .line 1384
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1387
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inPinnedWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 1391
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1394
    :cond_37
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 1395
    iget-boolean p1, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 1397
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateEffectiveIntent()V

    .line 1398
    return p2

    .line 1373
    :cond_48
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to task="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method removeTaskActivitiesLocked(ZLjava/lang/String;)V
    .registers 4

    .line 1532
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    .line 1533
    return-void
.end method

.method removeWindowContainer()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/TaskRecord;)V

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_e

    .line 508
    return-void

    .line 510
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    .line 512
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_21

    .line 515
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 517
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    .line 518
    return-void
.end method

.method removedFromRecents()V
    .registers 4

    .line 1076
    invoke-direct {p0}, Lcom/android/server/wm/TaskRecord;->closeRecentsChain()V

    .line 1077
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_f

    .line 1078
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    .line 1079
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1082
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->clearRootProcess()V

    .line 1085
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->notifyTaskRemovedFromRecents(II)V

    .line 1086
    return-void
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IIZZLjava/lang/String;)Z
    .registers 15

    .line 660
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z
    .registers 31

    .line 686
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v12, p7

    iget-object v6, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 687
    iget-object v6, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 688
    iget-object v6, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 690
    const v7, 0x7fffffff

    const/4 v10, 0x0

    if-ne v0, v7, :cond_26

    const/4 v8, 0x1

    goto :goto_27

    :cond_26
    move v8, v10

    :goto_27
    invoke-virtual {v13, v1, v2, v8}, Lcom/android/server/wm/ActivityStackSupervisor;->getReparentTargetStack(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    .line 692
    if-ne v9, v6, :cond_2e

    .line 693
    return v10

    .line 695
    :cond_2e
    iget v8, v9, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {v1, v8}, Lcom/android/server/wm/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v8

    if-nez v8, :cond_37

    .line 696
    return v10

    .line 699
    :cond_37
    if-ne v0, v7, :cond_3b

    const/4 v7, 0x1

    goto :goto_3c

    :cond_3b
    move v7, v10

    .line 700
    :goto_3c
    const/4 v8, 0x0

    if-eqz v7, :cond_4e

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_4e

    .line 701
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_4e

    .line 703
    invoke-virtual {v9, v10, v10, v8, v10}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 707
    :cond_4e
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v7

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    .line 710
    if-eqz v10, :cond_65

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v11

    invoke-static {v11, v7}, Lcom/android/server/wm/TaskRecord;->replaceWindowsOnTaskMove(II)Z

    move-result v11

    if-eqz v11, :cond_65

    const/16 v16, 0x1

    goto :goto_67

    :cond_65
    const/16 v16, 0x0

    .line 712
    :goto_67
    if-eqz v16, :cond_6e

    .line 721
    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v15, v11, v4}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    .line 724
    :cond_6e
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 725
    nop

    .line 727
    :try_start_72
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 728
    if-eqz v11, :cond_86

    invoke-virtual {v14, v6}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v17

    if-eqz v17, :cond_86

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-ne v8, v11, :cond_86

    const/4 v8, 0x1

    goto :goto_87

    :cond_86
    const/4 v8, 0x0

    .line 730
    :goto_87
    if-eqz v11, :cond_94

    move/from16 v18, v7

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-ne v7, v11, :cond_96

    const/16 v19, 0x1

    goto :goto_98

    :cond_94
    move/from16 v18, v7

    :cond_96
    const/16 v19, 0x0

    .line 731
    :goto_98
    if-eqz v11, :cond_a1

    iget-object v7, v6, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v7, v11, :cond_a1

    const/16 v20, 0x1

    goto :goto_a3

    :cond_a1
    const/16 v20, 0x0

    .line 736
    :goto_a3
    if-eqz v11, :cond_b3

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->isTopStackOnDisplay()Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 737
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-ne v7, v11, :cond_b3

    const/4 v7, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v7, 0x0

    .line 740
    :goto_b4
    move-object/from16 v21, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v0, v10}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 744
    iget-object v10, v1, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-nez v3, :cond_c7

    move-object/from16 v22, v14

    const/4 v14, 0x1

    goto :goto_ca

    :cond_c7
    move-object/from16 v22, v14

    const/4 v14, 0x0

    :goto_ca
    invoke-virtual {v10, v2, v0, v14}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskStack;IZ)V

    .line 747
    if-eqz v3, :cond_d9

    const/4 v2, 0x1

    if-ne v3, v2, :cond_d7

    if-nez v8, :cond_da

    if-eqz v7, :cond_d7

    goto :goto_da

    :cond_d7
    const/4 v8, 0x0

    goto :goto_db

    :cond_d9
    const/4 v2, 0x1

    :cond_da
    :goto_da
    move v8, v2

    .line 750
    :goto_db
    if-eqz v8, :cond_df

    .line 751
    const/4 v7, 0x2

    goto :goto_e0

    :cond_df
    move v7, v2

    .line 750
    :goto_e0
    invoke-virtual {v6, v1, v12, v7}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 752
    const/4 v10, 0x0

    invoke-virtual {v9, v1, v0, v10, v12}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;IZLjava/lang/String;)V

    .line 754
    if-eqz p6, :cond_ec

    .line 756
    invoke-virtual {v13, v1, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;)V

    .line 761
    :cond_ec
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_ee
    .catchall {:try_start_72 .. :try_end_ee} :catchall_1ca

    if-eqz v0, :cond_fb

    .line 763
    :try_start_f0
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v6, v1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    iget v7, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-interface {v0, v6, v7}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_f0 .. :try_end_f9} :catch_fa
    .catchall {:try_start_f0 .. :try_end_f9} :catchall_1ca

    .line 765
    goto :goto_fb

    .line 764
    :catch_fa
    move-exception v0

    .line 770
    :cond_fb
    :goto_fb
    if-eqz v11, :cond_114

    .line 771
    move-object v6, v9

    move/from16 v2, v18

    move-object v7, v11

    const/4 v11, 0x0

    move-object/from16 p2, v9

    move/from16 v9, v19

    move-object/from16 v17, v13

    move-object/from16 v14, v21

    move v13, v10

    move/from16 v10, v20

    const/4 v13, 0x1

    move-object/from16 v11, p7

    :try_start_110
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    goto :goto_11d

    .line 770
    :cond_114
    move-object/from16 p2, v9

    move-object/from16 v17, v13

    move-object/from16 v14, v21

    move v13, v2

    move/from16 v2, v18

    .line 774
    :goto_11d
    if-nez v4, :cond_128

    .line 775
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_128
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityStack;->prepareFreezingTaskBounds()V

    .line 783
    const/4 v0, 0x3

    if-ne v2, v0, :cond_130

    move v0, v13

    goto :goto_131

    :cond_130
    const/4 v0, 0x0

    .line 785
    :goto_131
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 786
    if-eq v2, v13, :cond_13a

    const/4 v6, 0x4

    if-ne v2, v6, :cond_154

    .line 788
    :cond_13a
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_154

    .line 789
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v16, :cond_14c

    move v2, v13

    goto :goto_14d

    :cond_14c
    const/4 v2, 0x0

    :goto_14d
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2, v5}, Lcom/android/server/wm/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v11

    const/4 v6, 0x0

    goto :goto_199

    .line 791
    :cond_154
    const/4 v6, 0x5

    if-ne v2, v6, :cond_177

    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 793
    if-nez v0, :cond_16b

    .line 794
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    .line 795
    move-object v0, v4

    goto :goto_16c

    .line 793
    :cond_16b
    const/4 v6, 0x0

    .line 797
    :goto_16c
    if-nez v16, :cond_170

    move v2, v13

    goto :goto_171

    :cond_170
    const/4 v2, 0x0

    :goto_171
    const/4 v4, 0x2

    invoke-virtual {v1, v0, v4, v2, v5}, Lcom/android/server/wm/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v11

    .line 798
    goto :goto_199

    :cond_177
    const/4 v4, 0x2

    const/4 v6, 0x0

    if-nez v0, :cond_180

    if-ne v2, v4, :cond_17e

    goto :goto_180

    :cond_17e
    move v11, v13

    goto :goto_199

    .line 799
    :cond_180
    :goto_180
    if-eqz v0, :cond_18b

    if-ne v3, v13, :cond_18b

    .line 802
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->moveRecentsStackToFront(Ljava/lang/String;)V

    .line 804
    :cond_18b
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v16, :cond_193

    move v2, v13

    goto :goto_194

    :cond_193
    const/4 v2, 0x0

    :goto_194
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2, v5}, Lcom/android/server/wm/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v11
    :try_end_199
    .catchall {:try_start_110 .. :try_end_199} :catchall_1ca

    .line 808
    :goto_199
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 809
    nop

    .line 811
    if-eqz v16, :cond_1a9

    .line 815
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez v11, :cond_1a5

    move v2, v13

    goto :goto_1a6

    :cond_1a5
    const/4 v2, 0x0

    :goto_1a6
    invoke-virtual {v15, v0, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 818
    :cond_1a9
    if-nez v5, :cond_1b7

    .line 821
    xor-int/lit8 v0, v16, 0x1

    move-object/from16 v2, v22

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 822
    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    goto :goto_1b8

    .line 818
    :cond_1b7
    const/4 v3, 0x0

    .line 826
    :goto_1b8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    move-object/from16 v4, p2

    move-object/from16 v2, v17

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V

    .line 829
    move-object/from16 v1, p1

    if-ne v1, v4, :cond_1c8

    goto :goto_1c9

    :cond_1c8
    move v13, v3

    :goto_1c9
    return v13

    .line 808
    :catchall_1ca
    move-exception v0

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z
    .registers 15

    .line 641
    if-eqz p2, :cond_6

    const p2, 0x7fffffff

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    move v2, p2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z
    .registers 16

    .line 652
    if-eqz p2, :cond_6

    const p2, 0x7fffffff

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    move v2, p2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestResize(Landroid/graphics/Rect;I)V
    .registers 5

    .line 544
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 545
    return-void
.end method

.method resize(Landroid/graphics/Rect;IZZ)Z
    .registers 10

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 551
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_32

    .line 552
    const-string p1, "ActivityTaskManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "resizeTask: task "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " not resizeable."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_e7

    .line 553
    nop

    .line 618
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 553
    return v1

    .line 558
    :cond_32
    and-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_39

    move p2, v1

    goto :goto_3a

    :cond_39
    move p2, v0

    .line 559
    :goto_3a
    :try_start_3a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v2
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_e7

    if-eqz v2, :cond_4b

    if-nez p2, :cond_4b

    .line 561
    nop

    .line 618
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 561
    return v1

    .line 564
    :cond_4b
    :try_start_4b
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_69

    .line 568
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 569
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inFreeformWindowingMode()Z

    move-result p1

    if-nez p1, :cond_60

    .line 571
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_e7

    .line 573
    :cond_60
    nop

    .line 618
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 573
    return v1

    .line 576
    :cond_69
    :try_start_69
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskRecord;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "am.resizeTask_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    move-result p1

    .line 593
    nop

    .line 594
    if-eqz p1, :cond_aa

    .line 595
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 596
    if-eqz p1, :cond_aa

    if-nez p4, :cond_aa

    .line 597
    invoke-virtual {p1, v0, p3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v1

    .line 605
    iget-object p4, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p4, p1, v0, p3}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 606
    if-nez v1, :cond_aa

    .line 607
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 611
    :cond_aa
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/Task;->resize(ZZ)V

    .line 613
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->saveLaunchingStateIfNeeded()V

    .line 615
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_b5
    .catchall {:try_start_69 .. :try_end_b5} :catchall_e7

    .line 616
    nop

    .line 618
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 616
    return v1

    .line 577
    :cond_be
    :try_start_be
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "resizeTask: Can not resize task="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " to bounds="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " resizeMode="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_e7
    .catchall {:try_start_be .. :try_end_e7} :catchall_e7

    .line 618
    :catchall_e7
    move-exception p1

    iget-object p2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw p1
.end method

.method resizeWindowContainer()V
    .registers 3

    .line 624
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/Task;->resize(ZZ)V

    .line 625
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 7

    .line 2200
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2201
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2202
    nop

    .line 2203
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2204
    if-nez v0, :cond_25

    .line 2205
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2207
    :cond_25
    nop

    .line 2208
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2210
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3f

    .line 2211
    const/4 v2, 0x0

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2212
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2211
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/wm/TaskRecord;->computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V

    .line 2216
    :cond_3f
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2218
    return-void

    .line 2221
    :cond_46
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2222
    const/4 v2, 0x5

    if-ne v0, v2, :cond_8e

    .line 2224
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43200000  # 160.0f

    div-float/2addr v0, v2

    .line 2226
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2227
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2228
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 2229
    if-eqz v3, :cond_78

    iget-object v4, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v4, :cond_78

    .line 2233
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2234
    iget-object v3, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 2235
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2238
    :cond_78
    const/high16 v3, 0x42400000  # 48.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x42000000  # 32.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/wm/TaskRecord;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2243
    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 2244
    if-lez v0, :cond_8e

    .line 2245
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 2248
    :cond_8e
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskRecord;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2249
    return-void
.end method

.method returnsToHomeStack()Z
    .registers 3

    .line 987
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, 0x10004000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method saveLaunchingStateIfNeeded()V
    .registers 3

    .line 1914
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->hasBeenVisible:Z

    if-nez v0, :cond_5

    .line 1916
    return-void

    .line 1919
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v0

    .line 1920
    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x5

    if-eq v0, v1, :cond_10

    .line 1922
    return-void

    .line 1926
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1927
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2609
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "task_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2610
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_19

    .line 2611
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "real_activity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2613
    :cond_19
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->realActivitySuspended:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "real_activity_suspended"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2614
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_31

    .line 2615
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "orig_activity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2621
    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    const-string v2, "@"

    const-string v3, "root_affinity"

    if-eqz v0, :cond_52

    .line 2622
    const-string v4, "affinity"

    invoke-interface {p1, v1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2623
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 2624
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_4d

    goto :goto_4e

    :cond_4d
    move-object v0, v2

    :goto_4e
    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5d

    .line 2626
    :cond_52
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_5d

    .line 2627
    if-eqz v0, :cond_59

    goto :goto_5a

    :cond_59
    move-object v0, v2

    :goto_5a
    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2629
    :cond_5d
    :goto_5d
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "root_has_reset"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2630
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto_remove_recents"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2631
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->askedCompatMode:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "asked_compat_mode"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2632
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2633
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mUserSetupComplete:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_setup_complete"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2634
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "effective_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2635
    iget-wide v2, p0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_time_moved"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2636
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "never_relinquish_identity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2637
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c2

    .line 2638
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_description"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2640
    :cond_c2
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_c9

    .line 2641
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2643
    :cond_c9
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task_affiliation_color"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2644
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2645
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "prev_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2646
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "next_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2647
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "calling_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2648
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    if-nez v0, :cond_106

    const-string v0, ""

    :cond_106
    const-string v2, "calling_package"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2649
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resize_mode"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2650
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    .line 2651
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 2650
    const-string v2, "supports_picture_in_picture"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2652
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_12f

    .line 2653
    nop

    .line 2654
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 2653
    const-string v2, "non_fullscreen_bounds"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2656
    :cond_12f
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "min_width"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2657
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "min_height"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2658
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "persist_task_version"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2660
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_160

    .line 2661
    const-string v0, "affinity_intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2662
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2663
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2666
    :cond_160
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_171

    .line 2667
    const-string v0, "intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2668
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2669
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2672
    :cond_171
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2673
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2674
    const/4 v3, 0x0

    :goto_178
    if-ge v3, v2, :cond_1aa

    .line 2675
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 2676
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v5, :cond_1aa

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v5

    if-eqz v5, :cond_1aa

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2677
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    or-int/lit16 v5, v5, 0x2000

    if-ne v5, v6, :cond_19c

    if-lez v3, :cond_19c

    .line 2681
    goto :goto_1aa

    .line 2683
    :cond_19c
    const-string v5, "activity"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2684
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2685
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2674
    add-int/lit8 v3, v3, 0x1

    goto :goto_178

    .line 2687
    :cond_1aa
    :goto_1aa
    return-void
.end method

.method setDisplayedBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 1972
    if-nez p1, :cond_8

    .line 1973
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_d

    .line 1975
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1977
    :goto_d
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_21

    .line 1978
    nop

    .line 1979
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_1e

    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    .line 1978
    :goto_1e
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setOverrideDisplayedBounds(Landroid/graphics/Rect;)V

    .line 1981
    :cond_21
    return-void
.end method

.method final setFrontOfTask()V
    .registers 8

    .line 1242
    nop

    .line 1243
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1244
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_a
    const/4 v4, 0x1

    if-ge v2, v0, :cond_25

    .line 1245
    iget-object v5, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1246
    if-nez v3, :cond_20

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1c

    goto :goto_20

    .line 1249
    :cond_1c
    iput-boolean v4, v5, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    .line 1251
    move v3, v4

    goto :goto_22

    .line 1247
    :cond_20
    :goto_20
    iput-boolean v1, v5, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    .line 1244
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1254
    :cond_25
    if-nez v3, :cond_33

    if-lez v0, :cond_33

    .line 1257
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    .line 1259
    :cond_33
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 872
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 873
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 874
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 875
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskRecord;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 876
    return-void
.end method

.method setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 1825
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    .line 1826
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_f

    .line 1828
    :cond_c
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1830
    :goto_f
    return-void
.end method

.method setLockTaskAuth()V
    .registers 2

    .line 1547
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskRecord;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 1548
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V
    .registers 2

    .line 996
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    .line 997
    if-nez p1, :cond_6

    const/4 p1, -0x1

    goto :goto_8

    :cond_6
    iget p1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    :goto_8
    iput p1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 998
    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V
    .registers 2

    .line 991
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    .line 992
    if-nez p1, :cond_6

    const/4 p1, -0x1

    goto :goto_8

    :cond_6
    iget p1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    :goto_8
    iput p1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 993
    return-void
.end method

.method setResizeMode(I)V
    .registers 4

    .line 525
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    if-ne v0, p1, :cond_5

    .line 526
    return-void

    .line 528
    :cond_5
    iput p1, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->setResizeable(I)V

    .line 530
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 531
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 532
    return-void
.end method

.method setRootProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    .line 2363
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->clearRootProcess()V

    .line 2364
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_17

    .line 2365
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_17

    .line 2366
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2367
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addRecentTask(Lcom/android/server/wm/TaskRecord;)V

    .line 2369
    :cond_17
    return-void
.end method

.method setStack(Lcom/android/server/wm/ActivityStack;)V
    .registers 6

    .line 1009
    if-eqz p1, :cond_11

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 1010
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Task must be added as a Stack child first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1012
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    .line 1013
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    .line 1018
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eq v0, v1, :cond_34

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1f
    if-ltz v1, :cond_34

    .line 1020
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1022
    if-eqz v0, :cond_2a

    .line 1023
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 1026
    :cond_2a
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v3, :cond_31

    .line 1027
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityStack;->onActivityAddedToStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 1019
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 1032
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->onParentChanged()V

    .line 1033
    return-void
.end method

.method setTask(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 475
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    .line 476
    return-void
.end method

.method setTaskDockedResizing(Z)V
    .registers 3

    .line 535
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_22

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTaskDockedResizing: taskId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 539
    :cond_22
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->setTaskDockedResizing(Z)V

    .line 540
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/TaskRecord;)V
    .registers 6

    .line 1089
    invoke-direct {p0}, Lcom/android/server/wm/TaskRecord;->closeRecentsChain()V

    .line 1090
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    .line 1091
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    .line 1093
    :goto_b
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 1094
    nop

    .line 1095
    iget v2, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_4c

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v2, v0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-ne v2, p1, :cond_48

    .line 1099
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1101
    :cond_48
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1102
    goto :goto_4f

    .line 1104
    :cond_4c
    nop

    .line 1105
    move-object p1, v0

    goto :goto_b

    .line 1106
    :cond_4f
    :goto_4f
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1107
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1108
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1109
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 3

    .line 1594
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_21

    .line 1597
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskRecord;->isResizeable(Z)Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 1598
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_21
    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    nop

    .line 1594
    :goto_24
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2519
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2520
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_3c

    .line 2521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2522
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    iget v1, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2524
    const-string v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2525
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2526
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2527
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2528
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2531
    :cond_3c
    const-string v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2532
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2534
    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2535
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_65

    .line 2536
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2537
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    .line 2538
    :cond_65
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_7c

    .line 2539
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2540
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    .line 2541
    :cond_7c
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_99

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_99

    .line 2542
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2543
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    .line 2545
    :cond_99
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2547
    :goto_9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->stringName:Ljava/lang/String;

    .line 2548
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 1144
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_24

    .line 1145
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_24

    .line 1146
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1147
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1148
    return-object v1

    .line 1145
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1152
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningActivityWithStartingWindowLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 5

    .line 1190
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_29

    .line 1191
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_c
    if-ltz v0, :cond_29

    .line 1192
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1193
    iget v3, v2, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    if-ne v3, v1, :cond_26

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_26

    .line 1194
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1195
    goto :goto_26

    .line 1197
    :cond_25
    return-object v2

    .line 1191
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1200
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method touchActiveTime()V
    .registers 3

    .line 863
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 864
    return-void
.end method

.method updateEffectiveIntent()V
    .registers 3

    .line 1756
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->findEffectiveRootIndex()I

    move-result v0

    .line 1757
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 1758
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1761
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateTaskDescription()V

    .line 1762
    return-void
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;)Z
    .registers 3

    .line 1821
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7

    .line 1841
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    .line 1842
    :goto_d
    if-eqz v2, :cond_13

    .line 1843
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->setDisplayedBounds(Landroid/graphics/Rect;)V

    goto :goto_17

    .line 1845
    :cond_13
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskRecord;->setDisplayedBounds(Landroid/graphics/Rect;)V

    .line 1848
    :goto_17
    if-eqz v2, :cond_1a

    move-object p1, p2

    .line 1849
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 1850
    return v1

    .line 1853
    :cond_21
    iget-object p2, p0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1854
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 1855
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/wm/ActivityStack;)V
    .registers 5

    .line 2314
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_7

    if-ne v0, p1, :cond_7

    .line 2315
    return-void

    .line 2318
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2319
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2323
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->matchParentBounds()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 2324
    return-void

    .line 2326
    :cond_1a
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_22

    .line 2327
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_55

    .line 2329
    :cond_22
    iget-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_55

    .line 2320
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not position non-resizeable task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2332
    :cond_4e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2334
    :goto_55
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .registers 3

    .line 2301
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2302
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2303
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 2306
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2308
    :cond_16
    return-object v0
.end method

.method updateTaskDescription()V
    .registers 18

    .line 1664
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1665
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    iget-object v4, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1666
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_1e

    move v4, v2

    goto :goto_1f

    :cond_1e
    move v4, v3

    .line 1667
    :goto_1f
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_23
    if-ge v5, v1, :cond_4d

    .line 1669
    iget-object v6, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 1670
    if-eqz v4, :cond_3a

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v7, v7, 0x1000

    if-nez v7, :cond_3a

    .line 1673
    add-int/lit8 v5, v5, 0x1

    .line 1674
    goto :goto_4d

    .line 1676
    :cond_3a
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_4a

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1677
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x80000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4a

    .line 1678
    goto :goto_4d

    .line 1668
    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 1681
    :cond_4d
    :goto_4d
    if-lez v5, :cond_df

    .line 1686
    nop

    .line 1687
    nop

    .line 1688
    nop

    .line 1689
    nop

    .line 1690
    nop

    .line 1691
    nop

    .line 1692
    nop

    .line 1693
    nop

    .line 1694
    nop

    .line 1695
    nop

    .line 1696
    const/4 v1, -0x1

    add-int/2addr v5, v1

    const/4 v4, 0x0

    move v9, v1

    move v11, v3

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move-object v7, v4

    move-object v10, v7

    :goto_66
    if-ltz v5, :cond_bf

    .line 1697
    iget-object v4, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1698
    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v6, :cond_75

    .line 1699
    goto :goto_bc

    .line 1701
    :cond_75
    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v6, :cond_bb

    .line 1702
    if-nez v7, :cond_82

    .line 1703
    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 1705
    :cond_82
    if-ne v9, v1, :cond_8a

    .line 1706
    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v9

    .line 1708
    :cond_8a
    if-nez v10, :cond_93

    .line 1709
    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    .line 1711
    :cond_93
    if-nez v11, :cond_9b

    .line 1712
    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v11

    .line 1714
    :cond_9b
    if-eqz v2, :cond_bb

    .line 1715
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v12

    .line 1716
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v13

    .line 1717
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v14

    .line 1718
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1719
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v15

    .line 1720
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1721
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v16

    .line 1724
    :cond_bb
    move v2, v3

    .line 1696
    :goto_bc
    add-int/lit8 v5, v5, -0x1

    goto :goto_66

    .line 1726
    :cond_bf
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    const/4 v8, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v16}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;IIIIZZ)V

    iput-object v1, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1729
    iget-object v1, v0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_d1

    .line 1730
    iget-object v2, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1733
    :cond_d1
    iget v1, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v2, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    if-ne v1, v2, :cond_df

    .line 1734
    iget-object v1, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    .line 1737
    :cond_df
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 8

    .line 2553
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2554
    return-void

    .line 2557
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2558
    const-wide v0, 0x10b00000001L

    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2559
    const-wide v0, 0x10500000002L

    iget p4, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2560
    iget-object p4, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    :goto_28
    if-ltz p4, :cond_3d

    .line 2561
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 2562
    const-wide v1, 0x20b00000003L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2560
    add-int/lit8 p4, p4, -0x1

    goto :goto_28

    .line 2564
    :cond_3d
    const-wide v0, 0x10500000004L

    iget-object p4, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    iget p4, p4, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2565
    iget-object p4, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz p4, :cond_55

    .line 2566
    const-wide v0, 0x10b00000005L

    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2568
    :cond_55
    iget-object p4, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz p4, :cond_65

    .line 2569
    const-wide v0, 0x10900000006L

    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2571
    :cond_65
    iget-object p4, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz p4, :cond_75

    .line 2572
    const-wide v0, 0x10900000007L

    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2574
    :cond_75
    const-wide v0, 0x10500000008L

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2575
    const-wide v0, 0x10500000009L

    iget p4, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2577
    const-wide v0, 0x1080000000aL

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->matchParentBounds()Z

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2579
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->matchParentBounds()Z

    move-result p4

    if-nez p4, :cond_a9

    .line 2580
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p4

    .line 2581
    const-wide v0, 0x10b0000000bL

    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2583
    :cond_a9
    const-wide v0, 0x1050000000cL

    iget p4, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2584
    const-wide v0, 0x1050000000dL

    iget p4, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2585
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2586
    return-void
.end method
