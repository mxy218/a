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

.field private static final ATTR_INVISIBLE_FLAG:Ljava/lang/String; = "invisible_flag"

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

.field public static final FLAG_INVISIBLE_IN_RECENT:I = 0x1

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

.field public mInvisibleFlag:I

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
    .registers 48
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_taskId"  # I
    .param p3, "_intent"  # Landroid/content/Intent;
    .param p4, "_affinityIntent"  # Landroid/content/Intent;
    .param p5, "_affinity"  # Ljava/lang/String;
    .param p6, "_rootAffinity"  # Ljava/lang/String;
    .param p7, "_realActivity"  # Landroid/content/ComponentName;
    .param p8, "_origActivity"  # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"  # Z
    .param p10, "_autoRemoveRecents"  # Z
    .param p11, "_askedCompatMode"  # Z
    .param p12, "_userId"  # I
    .param p13, "_effectiveUid"  # I
    .param p14, "_lastDescription"  # Ljava/lang/String;
    .param p16, "lastTimeMoved"  # J
    .param p18, "neverRelinquishIdentity"  # Z
    .param p19, "_lastTaskDescription"  # Landroid/app/ActivityManager$TaskDescription;
    .param p20, "taskAffiliation"  # I
    .param p21, "prevTaskId"  # I
    .param p22, "nextTaskId"  # I
    .param p23, "taskAffiliationColor"  # I
    .param p24, "callingUid"  # I
    .param p25, "callingPackage"  # Ljava/lang/String;
    .param p26, "resizeMode"  # I
    .param p27, "supportsPictureInPicture"  # Z
    .param p28, "_realActivitySuspended"  # Z
    .param p29, "userSetupComplete"  # Z
    .param p30, "minWidth"  # I
    .param p31, "minHeight"  # I
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

    .line 416
    .local p15, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 260
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 262
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    .line 266
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v4}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 280
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 289
    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 293
    iput-boolean v4, v0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 300
    iput v3, v0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 302
    iput v3, v0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 309
    iput v4, v0, Lcom/android/server/wm/TaskRecord;->mInvisibleFlag:I

    .line 318
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 319
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 320
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 321
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    .line 326
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 334
    iput v3, v0, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    .line 339
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    .line 342
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 348
    new-instance v3, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    invoke-direct {v3}, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    .line 417
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 418
    iput v1, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 419
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 420
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 421
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    .line 422
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 423
    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 424
    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 425
    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 426
    move/from16 v9, p28

    iput-boolean v9, v0, Lcom/android/server/wm/TaskRecord;->realActivitySuspended:Z

    .line 427
    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 428
    move/from16 v11, p9

    iput-boolean v11, v0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    .line 429
    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    .line 430
    move/from16 v2, p10

    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    .line 431
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/server/wm/TaskRecord;->askedCompatMode:Z

    .line 432
    move/from16 v13, p12

    iput v13, v0, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 433
    move/from16 v14, p29

    iput-boolean v14, v0, Lcom/android/server/wm/TaskRecord;->mUserSetupComplete:Z

    .line 434
    move/from16 v15, p13

    iput v15, v0, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 436
    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/server/wm/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 437
    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 438
    move-wide/from16 v2, p16

    iput-wide v2, v0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 439
    move/from16 v2, p18

    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 440
    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 441
    move/from16 v2, p20

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    .line 442
    move/from16 v2, p23

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    .line 443
    move/from16 v2, p21

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 444
    move/from16 v2, p22

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 445
    move/from16 v2, p24

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 446
    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 447
    move/from16 v2, p26

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 448
    move/from16 v2, p27

    iput-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    .line 449
    move/from16 v2, p30

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    .line 450
    move/from16 v2, p31

    iput v2, v0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    .line 451
    iget-object v2, v0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 452
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V
    .registers 11
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_taskId"  # I
    .param p3, "info"  # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"  # Landroid/content/Intent;
    .param p5, "_taskDescription"  # Landroid/app/ActivityManager$TaskDescription;

    .line 379
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 260
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 262
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    .line 266
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 280
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 289
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 293
    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 300
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 302
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 309
    iput v2, p0, Lcom/android/server/wm/TaskRecord;->mInvisibleFlag:I

    .line 318
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 319
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 320
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 321
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    .line 326
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 334
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    .line 339
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    .line 342
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 348
    new-instance v1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    invoke-direct {v1}, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    .line 380
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 381
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 382
    iput p2, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 384
    iput p2, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    .line 385
    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 386
    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 387
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 389
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 390
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 391
    invoke-direct {p0, p4, p3}, Lcom/android/server/wm/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 392
    invoke-direct {p0, p3}, Lcom/android/server/wm/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 394
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 396
    iget v1, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 397
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    .line 396
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->maxRecents:I

    .line 399
    iput-object p5, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 400
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 402
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 12
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_taskId"  # I
    .param p3, "info"  # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"  # Landroid/content/Intent;
    .param p5, "_voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;

    .line 355
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 260
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 262
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    .line 266
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 280
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 289
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 293
    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 300
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 302
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 309
    iput v2, p0, Lcom/android/server/wm/TaskRecord;->mInvisibleFlag:I

    .line 318
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 319
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 320
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 321
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    .line 326
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 334
    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    .line 339
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    .line 342
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 348
    new-instance v1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    invoke-direct {v1}, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    .line 356
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 357
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 358
    iput p2, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 360
    iput p2, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    .line 361
    iput-object p5, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 362
    iput-object p6, p0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 363
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 365
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 366
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 367
    invoke-direct {p0, p4, p3}, Lcom/android/server/wm/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 368
    invoke-direct {p0, p3}, Lcom/android/server/wm/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 371
    return-void
.end method

.method private calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
    .registers 12
    .param p1, "outNonDecorBounds"  # Landroid/graphics/Rect;
    .param p2, "outStableBounds"  # Landroid/graphics/Rect;
    .param p3, "bounds"  # Landroid/graphics/Rect;
    .param p4, "displayInfo"  # Landroid/view/DisplayInfo;

    .line 2069
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2070
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2071
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_56

    .line 2074
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    .line 2075
    .local v0, "policy":Lcom/android/server/wm/DisplayPolicy;
    if-nez v0, :cond_28

    .line 2076
    return-void

    .line 2078
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2080
    iget v2, p4, Landroid/view/DisplayInfo;->rotation:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, p4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 2082
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p1, v1, v2}, Lcom/android/server/wm/TaskRecord;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2084
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 2085
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p2, v1, v2}, Lcom/android/server/wm/TaskRecord;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2086
    return-void

    .line 2072
    .end local v0  # "policy":Lcom/android/server/wm/DisplayPolicy;
    :cond_56
    :goto_56
    return-void
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 1647
    const/4 v0, 0x1

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4a

    .line 1651
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_17

    move v1, v0

    goto :goto_18

    :cond_17
    move v1, v3

    .line 1652
    .local v1, "landscape":Z
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1653
    .local v2, "configBounds":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3b

    .line 1654
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    .line 1655
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_33

    move v4, v0

    goto :goto_34

    :cond_33
    move v4, v3

    :goto_34
    if-ne v1, v4, :cond_37

    goto :goto_39

    :cond_37
    move v0, v3

    goto :goto_3a

    :cond_39
    :goto_39
    nop

    .line 1654
    :goto_3a
    return v0

    .line 1657
    :cond_3b
    const/4 v5, 0x6

    if-ne v4, v5, :cond_40

    if-nez v1, :cond_48

    :cond_40
    iget v4, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_49

    if-eqz v1, :cond_48

    goto :goto_49

    :cond_48
    move v0, v3

    :cond_49
    :goto_49
    return v0

    .line 1649
    .end local v1  # "landscape":Z
    .end local v2  # "configBounds":Landroid/graphics/Rect;
    :cond_4a
    :goto_4a
    return v0
.end method

.method private closeRecentsChain()V
    .registers 3

    .line 1074
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_9

    .line 1075
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1077
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_12

    .line 1078
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1080
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1081
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1082
    return-void
.end method

.method static create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/TaskRecord;
    .registers 11
    .param p0, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "taskId"  # I
    .param p2, "info"  # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "taskDescription"  # Landroid/app/ActivityManager$TaskDescription;

    .line 2742
    invoke-static {}, Lcom/android/server/wm/TaskRecord;->getTaskRecordFactory()Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method static create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/TaskRecord;
    .registers 13
    .param p0, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "taskId"  # I
    .param p2, "info"  # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;

    .line 2736
    invoke-static {}, Lcom/android/server/wm/TaskRecord;->getTaskRecordFactory()Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 10
    .param p0, "bounds"  # Landroid/graphics/Rect;
    .param p1, "stackBounds"  # Landroid/graphics/Rect;
    .param p2, "overlapPxX"  # I
    .param p3, "overlapPxY"  # I

    .line 1969
    if-eqz p1, :cond_61

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_61

    .line 1975
    :cond_f
    const/4 v0, 0x0

    .line 1977
    .local v0, "horizontalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1978
    .local v1, "overlapLR":I
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_27

    .line 1979
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_36

    .line 1980
    :cond_27
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_36

    .line 1981
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    neg-int v0, v2

    .line 1983
    :cond_36
    :goto_36
    const/4 v2, 0x0

    .line 1984
    .local v2, "verticalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1985
    .local v3, "overlapTB":I
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_4e

    .line 1986
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    goto :goto_5d

    .line 1987
    :cond_4e
    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    if-le v4, v5, :cond_5d

    .line 1988
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v4, v3, v4

    neg-int v2, v4

    .line 1990
    :cond_5d
    :goto_5d
    invoke-virtual {p0, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1991
    return-void

    .line 1970
    .end local v0  # "horizontalDiff":I
    .end local v1  # "overlapLR":I
    .end local v2  # "verticalDiff":I
    .end local v3  # "overlapTB":I
    :cond_61
    :goto_61
    return-void
.end method

.method private getSmallestScreenWidthDpForDockedBounds(Landroid/graphics/Rect;)I
    .registers 4
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 2093
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2094
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_13

    .line 2095
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->getSmallestWidthDpForBounds(Landroid/graphics/Rect;)I

    move-result v1

    return v1

    .line 2097
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method static getTaskRecordFactory()Lcom/android/server/wm/TaskRecord$TaskRecordFactory;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2723
    sget-object v0, Lcom/android/server/wm/TaskRecord;->sTaskRecordFactory:Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    if-nez v0, :cond_c

    .line 2724
    new-instance v0, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    invoke-direct {v0}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;-><init>()V

    invoke-static {v0}, Lcom/android/server/wm/TaskRecord;->setTaskRecordFactory(Lcom/android/server/wm/TaskRecord$TaskRecordFactory;)V

    .line 2726
    :cond_c
    sget-object v0, Lcom/android/server/wm/TaskRecord;->sTaskRecordFactory:Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    return-object v0
.end method

.method static intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p0, "inOutBounds"  # Landroid/graphics/Rect;
    .param p1, "intersectBounds"  # Landroid/graphics/Rect;
    .param p2, "intersectInsets"  # Landroid/graphics/Rect;

    .line 2039
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_13

    .line 2040
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 2041
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 2043
    :cond_13
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_26

    .line 2044
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 2045
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2047
    :cond_26
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_39

    .line 2048
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 2049
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 2051
    :cond_39
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_4c

    .line 2052
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 2053
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 2055
    :cond_4c
    return-void
.end method

.method private isResizeable(Z)Z
    .registers 3
    .param p1, "checkSupportsPip"  # Z

    .line 1601
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskRecord;->isResizeable(ZZ)Z

    move-result v0

    return v0
.end method

.method private isResizeable(ZZ)Z
    .registers 4
    .param p1, "checkSupportsPip"  # Z
    .param p2, "checkWindowMode"  # Z

    .line 1606
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_1f

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isMzWindowMode()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_e
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz p1, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0
.end method

.method private static replaceWindowsOnTaskMove(II)Z
    .registers 3
    .param p0, "sourceWindowingMode"  # I
    .param p1, "targetWindowingMode"  # I

    .line 848
    const/4 v0, 0x5

    if-eq p0, v0, :cond_8

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/TaskRecord;
    .registers 3
    .param p0, "in"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2747
    invoke-static {}, Lcom/android/server/wm/TaskRecord;->getTaskRecordFactory()Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 11
    .param p1, "_intent"  # Landroid/content/Intent;
    .param p2, "info"  # Landroid/content/pm/ActivityInfo;

    .line 889
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    .line 890
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

    .line 892
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    if-eqz v0, :cond_17

    .line 893
    return-void

    .line 896
    :cond_17
    :goto_17
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    .line 897
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_23

    .line 901
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 903
    :cond_23
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    .line 904
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->stringName:Ljava/lang/String;

    .line 906
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const-string v4, "Setting Intent of "

    const-string v5, "ActivityTaskManager"

    if-nez v3, :cond_7b

    .line 907
    if-eqz p1, :cond_4e

    .line 911
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_42

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 912
    :cond_42
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v3

    .line 913
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 914
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 917
    :cond_4e
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_6c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_6c
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 919
    if-eqz p1, :cond_75

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_76

    :cond_75
    move-object v3, v0

    :goto_76
    iput-object v3, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 920
    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_c9

    .line 922
    :cond_7b
    new-instance v3, Landroid/content/ComponentName;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    .local v3, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_ba

    .line 925
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 926
    .local v6, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 927
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 928
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_af

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to target "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_af
    iput-object v6, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 931
    iput-object v3, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 932
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 933
    .end local v6  # "targetIntent":Landroid/content/Intent;
    goto :goto_c9

    .line 934
    :cond_ba
    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 935
    iput-object v3, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 936
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 940
    .end local v3  # "targetComponent":Landroid/content/ComponentName;
    :goto_c9
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_cf

    move v0, v2

    goto :goto_d3

    :cond_cf
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 941
    .local v0, "intentFlags":I
    :goto_d3
    const/high16 v3, 0x200000

    and-int/2addr v3, v0

    if-eqz v3, :cond_da

    .line 944
    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    .line 946
    :cond_da
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 947
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    const-string v5, "user_setup_complete"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_f8

    move v3, v1

    goto :goto_f9

    :cond_f8
    move v3, v2

    :goto_f9
    iput-boolean v3, p0, Lcom/android/server/wm/TaskRecord;->mUserSetupComplete:Z

    .line 949
    iget v3, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_104

    .line 951
    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    goto :goto_118

    .line 952
    :cond_104
    const v3, 0x82000

    and-int/2addr v3, v0

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_116

    .line 957
    iget v3, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v3, :cond_113

    .line 958
    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    goto :goto_118

    .line 960
    :cond_113
    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    goto :goto_118

    .line 963
    :cond_116
    iput-boolean v2, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    .line 965
    :goto_118
    iget v1, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 966
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    .line 967
    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1569
    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 1570
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 1571
    return-void

    .line 1574
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 1575
    .local v1, "pkg":Ljava/lang/String;
    :goto_10
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    .line 1576
    .local v2, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    const/4 v4, 0x3

    if-eqz v3, :cond_39

    if-eq v3, v0, :cond_35

    const/4 v5, 0x2

    if-eq v3, v5, :cond_31

    if-eq v3, v4, :cond_23

    goto :goto_47

    .line 1591
    :cond_23
    iget v3, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1592
    move v0, v5

    goto :goto_2e

    :cond_2d
    nop

    :goto_2e
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    goto :goto_47

    .line 1587
    :cond_31
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 1588
    goto :goto_47

    .line 1583
    :cond_35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 1584
    goto :goto_47

    .line 1578
    :cond_39
    iget v3, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1579
    move v0, v4

    goto :goto_44

    :cond_43
    nop

    :goto_44
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    .line 1580
    nop

    .line 1595
    :goto_47
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLockTaskAuth: task="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mLockTaskAuth="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1595
    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_6d
    return-void
.end method

.method private setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .registers 3
    .param p1, "info"  # Landroid/content/pm/ActivityInfo;

    .line 971
    if-eqz p1, :cond_13

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_13

    .line 972
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    .line 973
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    goto :goto_18

    .line 975
    :cond_13
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    .line 976
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    .line 978
    :goto_18
    return-void
.end method

.method static setTaskRecordFactory(Lcom/android/server/wm/TaskRecord$TaskRecordFactory;)V
    .registers 1
    .param p0, "factory"  # Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    .line 2730
    sput-object p0, Lcom/android/server/wm/TaskRecord;->sTaskRecordFactory:Lcom/android/server/wm/TaskRecord$TaskRecordFactory;

    .line 2731
    return-void
.end method


# virtual methods
.method addActivityAtIndex(ILcom/android/server/wm/ActivityRecord;)V
    .registers 9
    .param p1, "index"  # I
    .param p2, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1307
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 1308
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v0, :cond_28

    if-ne v0, p0, :cond_9

    goto :goto_28

    .line 1309
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not add r= to task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " current parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1313
    :cond_28
    :goto_28
    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1316
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3d

    iget-boolean v1, p2, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v1, :cond_3d

    .line 1318
    iget v1, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    .line 1321
    :cond_3d
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 1322
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v1

    if-nez v1, :cond_4e

    .line 1327
    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1329
    :cond_4e
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskRecord;->setActivityType(I)V

    .line 1330
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 1331
    iget v1, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 1332
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 1334
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1335
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result v2

    .line 1334
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/TaskRecord;->maxRecents:I

    goto :goto_7d

    .line 1338
    :cond_76
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1341
    :goto_7d
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1343
    .local v1, "size":I
    if-ne p1, v1, :cond_ba

    if-lez v1, :cond_ba

    .line 1344
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1345
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v3, :cond_98

    .line 1348
    add-int/lit8 p1, p1, -0x1

    goto :goto_ba

    .line 1351
    :cond_98
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isAccessApplication()Z

    move-result v3

    if-eqz v3, :cond_ba

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eq v3, v2, :cond_ba

    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessControlService:Lcom/meizu/server/AccessControlService;

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1353
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1352
    invoke-virtual {v3, v4, v5}, Lcom/meizu/server/AccessControlService;->isPopupUnlockingActivity(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 1356
    add-int/lit8 p1, p1, -0x1

    .line 1361
    .end local v2  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_ba
    :goto_ba
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1362
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1364
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateEffectiveIntent()V

    .line 1365
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 1366
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1369
    :cond_d2
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_dd

    .line 1372
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/Task;->positionChildAt(Lcom/android/server/wm/AppWindowToken;I)V

    .line 1377
    :cond_dd
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->updateUIDsPresentOnDisplay()V

    .line 1378
    return-void
.end method

.method addActivityToTop(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1289
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskRecord;->addActivityAtIndex(ILcom/android/server/wm/ActivityRecord;)V

    .line 1290
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .registers 6
    .param p1, "taskSwitch"  # Z

    .line 2383
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 2384
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2385
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v2, :cond_1b

    .line 2386
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2383
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2389
    .end local v0  # "activityNdx":I
    :cond_1e
    return-void
.end method

.method adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "bounds"  # Landroid/graphics/Rect;
    .param p2, "previousBounds"  # Landroid/graphics/Rect;

    .line 1792
    if-nez p1, :cond_3

    .line 1793
    return-void

    .line 1795
    :cond_3
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    .line 1796
    .local v0, "minWidth":I
    iget v1, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    .line 1800
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_38

    .line 1801
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v2, v2, Lcom/android/server/wm/RootActivityContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    .line 1803
    .local v2, "defaultMinSizeDp":I
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    iget v4, v4, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 1804
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 1805
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    nop

    .line 1806
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    const/high16 v5, 0x43200000  # 160.0f

    div-float/2addr v4, v5

    .line 1807
    .local v4, "density":F
    int-to-float v5, v2

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 1809
    .local v5, "defaultMinSize":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_35

    .line 1810
    move v0, v5

    .line 1812
    :cond_35
    if-ne v1, v6, :cond_38

    .line 1813
    move v1, v5

    .line 1816
    .end local v2  # "defaultMinSizeDp":I
    .end local v3  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4  # "density":F
    .end local v5  # "defaultMinSize":I
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

    .line 1817
    .local v2, "adjustWidth":Z
    :goto_43
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_4a

    goto :goto_4b

    :cond_4a
    move v3, v4

    .line 1818
    .local v3, "adjustHeight":Z
    :goto_4b
    if-nez v2, :cond_50

    if-nez v3, :cond_50

    .line 1819
    return-void

    .line 1822
    :cond_50
    if-eqz v2, :cond_69

    .line 1823
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_64

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-ne v4, v5, :cond_64

    .line 1824
    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_69

    .line 1828
    :cond_64
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1831
    :cond_69
    :goto_69
    if-eqz v3, :cond_82

    .line 1832
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7d

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_7d

    .line 1833
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_82

    .line 1837
    :cond_7d
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1840
    :cond_82
    :goto_82
    return-void
.end method

.method autoRemoveFromRecents()Z
    .registers 2

    .line 1443
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
    .param p1, "displayId"  # I

    .line 1636
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method cancelWindowTransition()V
    .registers 3

    .line 853
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_22

    .line 854
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

    .line 855
    return-void

    .line 857
    :cond_22
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cancelTaskWindowTransition()V

    .line 858
    return-void
.end method

.method cleanUpResourcesForDestroy()V
    .registers 5

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 489
    return-void

    .line 493
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->saveLaunchingStateIfNeeded()V

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 497
    .local v0, "isVoiceSession":Z
    :goto_13
    if-eqz v0, :cond_20

    .line 499
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-interface {v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 501
    goto :goto_20

    .line 500
    :catch_1f
    move-exception v1

    .line 503
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->autoRemoveFromRecents()Z

    move-result v1

    if-nez v1, :cond_28

    if-eqz v0, :cond_31

    .line 506
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    .line 509
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->removeWindowContainer()V

    .line 510
    return-void
.end method

.method clearAllPendingOptions()V
    .registers 4

    .line 2408
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_13

    .line 2409
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked(Z)V

    .line 2408
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2411
    .end local v0  # "i":I
    :cond_13
    return-void
.end method

.method clearRootProcess()V
    .registers 2

    .line 2401
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_a

    .line 2402
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->removeRecentTask(Lcom/android/server/wm/TaskRecord;)V

    .line 2403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2405
    :cond_a
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "inOutConfig"  # Landroid/content/res/Configuration;
    .param p2, "parentConfig"  # Landroid/content/res/Configuration;

    .line 2102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskRecord;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2103
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .registers 15
    .param p1, "inOutConfig"  # Landroid/content/res/Configuration;
    .param p2, "parentConfig"  # Landroid/content/res/Configuration;
    .param p3, "compatInsets"  # Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2116
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2117
    .local v0, "windowingMode":I
    if-nez v0, :cond_e

    .line 2118
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2121
    :cond_e
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    .line 2122
    .local v1, "density":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_19

    .line 2123
    iget v2, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v2

    .line 2125
    :cond_19
    const v2, 0x3bcccccd  # 0.00625f

    mul-float/2addr v1, v2

    .line 2127
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2128
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2129
    .local v3, "outAppBounds":Landroid/graphics/Rect;
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2130
    :cond_31
    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4, v2}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 2131
    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2136
    :cond_3c
    const/4 v4, 0x1

    if-nez p3, :cond_44

    const/4 v5, 0x6

    if-eq v0, v5, :cond_44

    move v5, v4

    goto :goto_45

    :cond_44
    const/4 v5, 0x0

    .line 2138
    .local v5, "insideParentBounds":Z
    :goto_45
    if-eqz v5, :cond_5b

    const/4 v6, 0x5

    if-eq v0, v6, :cond_5b

    .line 2139
    iget-object v6, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2140
    .local v6, "parentAppBounds":Landroid/graphics/Rect;
    if-eqz v6, :cond_5b

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5b

    .line 2141
    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2145
    .end local v6  # "parentAppBounds":Landroid/graphics/Rect;
    :cond_5b
    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v6, :cond_63

    iget v6, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v6, :cond_11d

    .line 2147
    :cond_63
    if-eqz v5, :cond_81

    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_81

    .line 2148
    new-instance v6, Landroid/view/DisplayInfo;

    invoke-direct {v6}, Landroid/view/DisplayInfo;-><init>()V

    .line 2149
    .local v6, "di":Landroid/view/DisplayInfo;
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 2155
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v8, v2, v6}, Lcom/android/server/wm/TaskRecord;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    .line 2156
    .end local v6  # "di":Landroid/view/DisplayInfo;
    goto :goto_c1

    .line 2159
    :cond_81
    iget-object v6, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    .line 2160
    .local v6, "rotation":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_b7

    if-eqz p3, :cond_b7

    .line 2161
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2162
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2163
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v7, v6}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getDisplayBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 2164
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v9, p3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v6

    invoke-static {v7, v8, v9}, Lcom/android/server/wm/TaskRecord;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2166
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v9, p3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v9, v9, v6

    invoke-static {v7, v8, v9}, Lcom/android/server/wm/TaskRecord;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2168
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_c1

    .line 2171
    :cond_b7
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2172
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2176
    .end local v6  # "rotation":I
    :goto_c1
    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-nez v6, :cond_da

    .line 2177
    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v6, v6

    .line 2178
    .local v6, "overrideScreenWidthDp":I
    if-eqz v5, :cond_d7

    .line 2179
    iget v7, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_d8

    .line 2180
    :cond_d7
    move v7, v6

    :goto_d8
    iput v7, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2182
    .end local v6  # "overrideScreenWidthDp":I
    :cond_da
    iget v6, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v6, :cond_f3

    .line 2183
    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v6, v6

    .line 2184
    .local v6, "overrideScreenHeightDp":I
    if-eqz v5, :cond_f0

    .line 2185
    iget v7, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_f1

    .line 2186
    :cond_f0
    move v7, v6

    :goto_f1
    iput v7, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2189
    .end local v6  # "overrideScreenHeightDp":I
    :cond_f3
    iget v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v6, :cond_11d

    .line 2191
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v6

    if-eqz v6, :cond_110

    .line 2193
    nop

    .line 2194
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_11d

    .line 2195
    :cond_110
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v6

    if-eqz v6, :cond_11d

    .line 2199
    nop

    .line 2200
    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskRecord;->getSmallestScreenWidthDpForDockedBounds(Landroid/graphics/Rect;)I

    move-result v6

    iput v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2206
    :cond_11d
    :goto_11d
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez v6, :cond_12b

    .line 2207
    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v7, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v6, v7, :cond_128

    .line 2208
    goto :goto_129

    :cond_128
    const/4 v4, 0x2

    :goto_129
    iput v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2210
    :cond_12b
    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-nez v4, :cond_153

    .line 2214
    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v4, v4

    .line 2215
    .local v4, "compatScreenWidthDp":I
    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v6, v6

    .line 2219
    .local v6, "compatScreenHeightDp":I
    iget v7, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0x3f

    .line 2221
    .local v7, "sl":I
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2222
    .local v8, "longSize":I
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2223
    .local v9, "shortSize":I
    invoke-static {v7, v8, v9}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v10

    iput v10, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2225
    .end local v4  # "compatScreenWidthDp":I
    .end local v6  # "compatScreenHeightDp":I
    .end local v7  # "sl":I
    .end local v8  # "longSize":I
    .end local v9  # "shortSize":I
    :cond_153
    return-void
.end method

.method computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V
    .registers 15
    .param p1, "outBounds"  # Landroid/graphics/Rect;
    .param p2, "refActivity"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "parentBounds"  # Landroid/graphics/Rect;
    .param p4, "parentOrientation"  # I

    .line 2294
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2295
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2296
    return-void

    .line 2298
    :cond_a
    if-nez p2, :cond_11

    .line 2302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->getTopActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    .line 2307
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2309
    .local v0, "overrideOrientation":I
    if-nez v0, :cond_21

    if-nez p2, :cond_1c

    goto :goto_21

    .line 2310
    :cond_1c
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v1

    goto :goto_22

    :cond_21
    :goto_21
    move v1, v0

    .line 2311
    .local v1, "forcedOrientation":I
    :goto_22
    if-eqz v1, :cond_5d

    if-ne v1, p4, :cond_27

    goto :goto_5d

    .line 2315
    :cond_27
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 2316
    .local v2, "parentWidth":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 2317
    .local v3, "parentHeight":I
    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 2318
    .local v4, "aspect":F
    const/4 v5, 0x2

    if-ne v1, v5, :cond_49

    .line 2319
    int-to-float v5, v2

    div-float/2addr v5, v4

    float-to-int v5, v5

    .line 2320
    .local v5, "height":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    .line 2321
    .local v6, "top":I
    iget v7, p3, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    add-int v9, v6, v5

    invoke-virtual {p1, v7, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2322
    .end local v5  # "height":I
    .end local v6  # "top":I
    goto :goto_5c

    .line 2323
    :cond_49
    int-to-float v5, v3

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 2324
    .local v5, "width":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    .line 2325
    .local v6, "left":I
    iget v7, p3, Landroid/graphics/Rect;->top:I

    add-int v8, v6, v5

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2327
    .end local v5  # "width":I
    .end local v6  # "left":I
    :goto_5c
    return-void

    .line 2312
    .end local v2  # "parentWidth":I
    .end local v3  # "parentHeight":I
    .end local v4  # "aspect":F
    :cond_5d
    :goto_5d
    return-void
.end method

.method containsAppUid(I)Z
    .registers 6
    .param p1, "uid"  # I

    .line 1178
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1179
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1180
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_19

    .line 1181
    return v1

    .line 1178
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1184
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method createTask(ZZ)V
    .registers 15
    .param p1, "onTop"  # Z
    .param p2, "showForAllUsers"  # Z

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_7a

    .line 464
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 465
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 467
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_61

    .line 470
    const/16 v2, 0x7919

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 471
    new-instance v11, Lcom/android/server/wm/Task;

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v5, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v7, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    iget-boolean v8, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    iget-object v9, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object v2, v11

    move-object v4, v1

    move-object v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/Task;-><init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;IZLandroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/TaskRecord;)V

    iput-object v11, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    .line 473
    if-eqz p1, :cond_4a

    const v2, 0x7fffffff

    goto :goto_4c

    :cond_4a
    const/high16 v2, -0x80000000

    .line 475
    .local v2, "position":I
    :goto_4c
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 476
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->setOverrideDisplayedBounds(Landroid/graphics/Rect;)V

    .line 480
    :cond_5b
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v3, v2, p2, p1}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V

    .line 481
    return-void

    .line 468
    .end local v2  # "position":I
    :cond_61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaskRecord: invalid stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 460
    .end local v0  # "bounds":Landroid/graphics/Rect;
    .end local v1  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already created for task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 2451
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2452
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2453
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2454
    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2455
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2456
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_65

    .line 2457
    :cond_3d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2458
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_5b

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_5b

    .line 2461
    :cond_57
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_65

    .line 2459
    :cond_5b
    :goto_5b
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2464
    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_94

    .line 2465
    :cond_6d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2466
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2467
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2468
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2470
    :cond_94
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_bd

    .line 2471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2472
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2473
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 2474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2477
    .end local v0  # "sb":Ljava/lang/StringBuilder;
    :cond_bd
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_e2

    .line 2478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2479
    .restart local v0  # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2480
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 2481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2484
    .end local v0  # "sb":Ljava/lang/StringBuilder;
    :cond_e2
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_f7

    .line 2485
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2486
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2488
    :cond_f7
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_10c

    .line 2489
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2490
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2492
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

    .line 2493
    :cond_11e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2494
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2495
    const-string v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2496
    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2498
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

    .line 2500
    :cond_15c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2501
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2502
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2503
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2505
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

    .line 2508
    :cond_1a0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2509
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2510
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2511
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    const-string v2, "null"

    if-nez v1, :cond_1c6

    .line 2512
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1d1

    .line 2514
    :cond_1c6
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2516
    :goto_1d1
    const-string v1, ") nextAffiliation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2517
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2518
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    if-nez v0, :cond_1e6

    .line 2519
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1f1

    .line 2521
    :cond_1e6
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2523
    :goto_1f1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2525
    :cond_1f6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2526
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->askedCompatMode:Z

    if-eqz v0, :cond_20f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_20f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    if-nez v0, :cond_230

    .line 2527
    :cond_20f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2528
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2529
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2531
    :cond_230
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_241

    .line 2532
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2534
    :cond_241
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_252

    .line 2535
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2537
    :cond_252
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "stackId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStackId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hasBeenVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->hasBeenVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mResizeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportsPictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isResizeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " lastActiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2544
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;)V
    .registers 4
    .param p1, "info"  # Landroid/app/TaskInfo;

    .line 2418
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->getNumRunningActivities(Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;)V

    .line 2419
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    iput v0, p1, Landroid/app/TaskInfo;->userId:I

    .line 2420
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStackId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->stackId:I

    .line 2421
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iput v0, p1, Landroid/app/TaskInfo;->taskId:I

    .line 2422
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-nez v0, :cond_19

    const/4 v0, -0x1

    goto :goto_1b

    :cond_19
    iget v0, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    :goto_1b
    iput v0, p1, Landroid/app/TaskInfo;->displayId:I

    .line 2423
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iput-boolean v0, p1, Landroid/app/TaskInfo;->isRunning:Z

    .line 2424
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2425
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 2426
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_46

    .line 2427
    :cond_45
    move-object v0, v1

    :goto_46
    iput-object v0, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 2428
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_55

    .line 2429
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_56

    .line 2430
    :cond_55
    nop

    :goto_56
    iput-object v1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2431
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    iput-object v0, p1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 2432
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 2433
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseActivitiesReport:Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    iget v0, v0, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numActivities:I

    iput v0, p1, Landroid/app/TaskInfo;->numActivities:I

    .line 2434
    iget-wide v0, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    iput-wide v0, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    .line 2435
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v0, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2436
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    iput-boolean v0, p1, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 2437
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    iput v0, p1, Landroid/app/TaskInfo;->resizeMode:I

    .line 2438
    iget-object v0, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2439
    return-void
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1673
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1674
    .local v0, "realActivity":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "activityNdx":I
    :goto_a
    if-ltz v1, :cond_25

    .line 1675
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1676
    .local v2, "candidate":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_19

    .line 1677
    goto :goto_22

    .line 1679
    :cond_19
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1680
    return-object v2

    .line 1674
    .end local v2  # "candidate":Lcom/android/server/wm/ActivityRecord;
    :cond_22
    :goto_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1683
    .end local v1  # "activityNdx":I
    :cond_25
    const/4 v1, 0x0

    return-object v1
.end method

.method findEffectiveRootIndex()I
    .registers 6

    .line 1767
    const/4 v0, 0x0

    .line 1768
    .local v0, "effectiveNdx":I
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1769
    .local v1, "topActivityNdx":I
    const/4 v2, 0x0

    .local v2, "activityNdx":I
    :goto_a
    if-gt v2, v1, :cond_26

    .line 1770
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1771
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_19

    .line 1772
    goto :goto_23

    .line 1774
    :cond_19
    move v0, v2

    .line 1775
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_23

    .line 1776
    goto :goto_26

    .line 1769
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_23
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1779
    .end local v2  # "activityNdx":I
    :cond_26
    :goto_26
    return v0
.end method

.method public getActivityType()I
    .registers 4

    .line 1295
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 1296
    .local v0, "applicationType":I
    if-nez v0, :cond_1d

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_1d

    .line 1299
    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v1

    return v1

    .line 1297
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

    .line 1188
    .local p1, "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_2a

    .line 1189
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_c
    if-ltz v0, :cond_2a

    .line 1190
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1191
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_27

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v2, :cond_27

    .line 1192
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1196
    .end local v0  # "activityNdx":I
    :cond_2a
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .registers 2

    .line 1122
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
    .param p1, "index"  # I

    .line 1058
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    .line 1053
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDisplayedBounds()Landroid/graphics/Rect;
    .registers 2

    .line 2015
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getInactiveDuration()J
    .registers 5

    .line 876
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .registers 4

    .line 2367
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2368
    return-object v1

    .line 2371
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v0

    .line 2372
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x1

    if-eq v0, v2, :cond_31

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1d

    .line 2374
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_31

    .line 2376
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 2377
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 2379
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    .line 2375
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_3d
    return-object v1
.end method

.method getNumRunningActivities(Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;)V
    .registers 6
    .param p1, "reportOut"  # Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;

    .line 1217
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->reset()V

    .line 1218
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_44

    .line 1219
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1220
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1a

    .line 1221
    goto :goto_41

    .line 1224
    :cond_1a
    iput-object v1, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    .line 1227
    iget v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numActivities:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numActivities:I

    .line 1229
    iget-object v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_30

    iget-object v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1230
    :cond_30
    iput-object v1, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 1233
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numRunning:I

    .line 1235
    :cond_35
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1237
    iget v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numRunning:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/wm/TaskRecord$TaskActivitiesReport;->numRunning:I

    .line 1218
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_41
    :goto_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1240
    .end local v0  # "i":I
    :cond_44
    return-void
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 1063
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 1127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 1128
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1129
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_19

    .line 1130
    nop

    .line 1127
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1132
    .restart local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_19
    return-object v1

    .line 1134
    .end local v0  # "i":I
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 6
    .param p1, "reducedResolution"  # Z
    .param p2, "restoreFromDisk"  # Z

    .line 867
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
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

    .line 1010
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getStackId()I
    .registers 2

    .line 1048
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

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    .line 2445
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 2446
    .local v0, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 2447
    return-object v0
.end method

.method getTopActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->getTopActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 5
    .param p1, "includeOverlays"  # Z

    .line 1142
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_21

    .line 1143
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1144
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1e

    if-nez p1, :cond_1d

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_1d

    .line 1145
    goto :goto_1e

    .line 1147
    :cond_1d
    return-object v1

    .line 1142
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1149
    .end local v0  # "i":I
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 637
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_8

    .line 638
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_b

    .line 640
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 642
    :goto_b
    return-void
.end method

.method handlesOrientationChangeFromDescendant()Z
    .registers 2

    .line 2282
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    .line 2283
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2282
    :goto_19
    return v0
.end method

.method hasDisplayedBounds()Z
    .registers 2

    .line 2022
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isClearingToReuseTask()Z
    .registers 2

    .line 1665
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    return v0
.end method

.method isResizeable()Z
    .registers 2

    .line 1612
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskRecord;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 985
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 988
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1c

    .line 989
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 991
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method isVisible()Z
    .registers 5

    .line 1165
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 1166
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1167
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v3, :cond_17

    .line 1168
    return v1

    .line 1165
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1171
    .end local v0  # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .registers 3

    .line 1554
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

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1559
    :cond_24
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 1558
    :cond_27
    const-string v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    .line 1557
    :cond_2a
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 1556
    :cond_2d
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 1555
    :cond_30
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "newTop"  # Lcom/android/server/wm/ActivityRecord;

    .line 1274
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing and adding activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to stack at top callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 1276
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1274
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1279
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/AppWindowToken;)V

    .line 1283
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateEffectiveIntent()V

    .line 1285
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->setFrontOfTask()V

    .line 1286
    return-void
.end method

.method okToShowLocked()Z
    .registers 3

    .line 1245
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1246
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

    .line 1245
    :goto_16
    return v0
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    .registers 5
    .param p1, "record"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "state"  # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p3, "reason"  # Ljava/lang/String;

    .line 1894
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1896
    .local v0, "parent":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_9

    .line 1897
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1899
    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 1905
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    .line 1906
    .local v0, "prevPersistTaskBounds":Z
    nop

    .line 1907
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1908
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

    .line 1909
    .local v1, "nextPersistTaskBounds":Z
    :goto_21
    if-nez v0, :cond_3a

    if-eqz v1, :cond_3a

    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_3a

    .line 1910
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1912
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1913
    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 1916
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inMultiWindowMode()Z

    move-result v2

    .line 1917
    .local v2, "wasInMultiWindowMode":Z
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1918
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inMultiWindowMode()Z

    move-result v3

    if-eq v2, v3, :cond_4e

    .line 1919
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/wm/TaskRecord;)V

    .line 1924
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 1925
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1926
    .local v3, "currentBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_65

    .line 1927
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskRecord;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 1932
    .end local v3  # "currentBounds":Landroid/graphics/Rect;
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->saveLaunchingStateIfNeeded()V

    .line 1933
    return-void
.end method

.method protected onParentChanged()V
    .registers 2

    .line 1068
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 1069
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->updateUIDsPresentOnDisplay()V

    .line 1070
    return-void
.end method

.method public onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .registers 4
    .param p1, "snapshot"  # Landroid/app/ActivityManager$TaskSnapshot;

    .line 530
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 531
    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .registers 8
    .param p1, "excludeFinishing"  # Z

    .line 1425
    const/4 v0, 0x0

    .line 1426
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    const/4 v3, 0x0

    if-ltz v1, :cond_25

    .line 1427
    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1428
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz p1, :cond_1b

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1b

    .line 1429
    goto :goto_22

    .line 1431
    :cond_1b
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez v5, :cond_20

    .line 1432
    return v3

    .line 1434
    :cond_20
    add-int/lit8 v0, v0, 0x1

    .line 1426
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1436
    .end local v1  # "i":I
    :cond_25
    if-lez v0, :cond_28

    goto :goto_29

    :cond_28
    move v2, v3

    :goto_29
    return v2
.end method

.method final performClearTaskAtIndexLocked(IZLjava/lang/String;)V
    .registers 13
    .param p1, "activityNdx"  # I
    .param p2, "pauseImmediately"  # Z
    .param p3, "reason"  # Ljava/lang/String;

    .line 1452
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1453
    .local v0, "numActivities":I
    :goto_6
    if-ge p1, v0, :cond_39

    .line 1454
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1455
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_15

    .line 1456
    goto :goto_36

    .line 1458
    :cond_15
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-nez v2, :cond_26

    .line 1460
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 1461
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1462
    add-int/lit8 p1, p1, -0x1

    .line 1463
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 1464
    :cond_26
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move-object v6, p3

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1466
    add-int/lit8 p1, p1, -0x1

    .line 1467
    add-int/lit8 v0, v0, -0x1

    .line 1453
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_36
    :goto_36
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 1470
    :cond_39
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .registers 5
    .param p1, "newR"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"  # I

    .line 1482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 1483
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskRecord;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1484
    .local v0, "result":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 1485
    return-object v0
.end method

.method final performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .registers 15
    .param p1, "newR"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"  # I

    .line 1500
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1501
    .local v0, "numActivities":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "activityNdx":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v1, :cond_7a

    .line 1502
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1503
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_18

    .line 1504
    goto :goto_77

    .line 1506
    :cond_18
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 1508
    move-object v4, v3

    .line 1510
    .local v4, "ret":Lcom/android/server/wm/ActivityRecord;
    nop

    :goto_24
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_55

    .line 1511
    iget-object v5, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1512
    iget-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_36

    .line 1513
    goto :goto_54

    .line 1515
    :cond_36
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 1516
    .local v5, "opts":Landroid/app/ActivityOptions;
    if-eqz v5, :cond_40

    .line 1517
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1519
    :cond_40
    iget-object v6, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_54

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v10, "clear-task-stack"

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 1521
    add-int/lit8 v1, v1, -0x1

    .line 1522
    add-int/lit8 v0, v0, -0x1

    .line 1510
    .end local v5  # "opts":Landroid/app/ActivityOptions;
    :cond_54
    :goto_54
    goto :goto_24

    .line 1529
    :cond_55
    iget v5, v4, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-nez v5, :cond_76

    const/high16 v5, 0x20000000

    and-int/2addr v5, p2

    if-nez v5, :cond_76

    .line 1531
    invoke-static {p2}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v5

    if-nez v5, :cond_76

    .line 1532
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_76

    .line 1533
    iget-object v5, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v5, :cond_75

    .line 1534
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v9, "clear-task-top"

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1537
    :cond_75
    return-object v2

    .line 1541
    :cond_76
    return-object v4

    .line 1501
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4  # "ret":Lcom/android/server/wm/ActivityRecord;
    :cond_77
    :goto_77
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1545
    .end local v1  # "activityNdx":I
    :cond_7a
    return-object v2
.end method

.method performClearTaskLocked()V
    .registers 3

    .line 1476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 1477
    const/4 v0, 0x0

    const-string v1, "clear-task-all"

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wm/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    .line 1478
    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    .line 1479
    return-void
.end method

.method performClearTaskUntilUnlocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9
    .param p1, "skipped"  # Lcom/android/server/wm/ActivityRecord;

    .line 3049
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    .line 3050
    .local v0, "start":I
    .local v1, "top":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "activityNdx":I
    :goto_9
    if-ltz v2, :cond_32

    .line 3051
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 3052
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_18

    .line 3053
    goto :goto_2f

    .line 3055
    :cond_18
    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessControlService:Lcom/meizu/server/AccessControlService;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3056
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3055
    invoke-virtual {v4, v5, v6}, Lcom/meizu/server/AccessControlService;->isPopupUnlockingActivity(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 3058
    move v0, v2

    .line 3050
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 3063
    .end local v2  # "activityNdx":I
    :cond_32
    if-gez v0, :cond_35

    .line 3064
    const/4 v0, 0x0

    .line 3066
    :cond_35
    const/4 v2, 0x0

    const-string v3, "accesscontrol"

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    .line 3067
    const/4 v2, 0x1

    return v2
.end method

.method removeActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskRecord;->removeActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    return v0
.end method

.method removeActivity(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reparenting"  # Z

    .line 1390
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-ne v0, p0, :cond_48

    .line 1395
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1397
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_1c

    .line 1399
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    .line 1401
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1402
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1405
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1409
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1412
    :cond_37
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1413
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mReuseTask:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1415
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateEffectiveIntent()V

    .line 1416
    return v1

    .line 1391
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not belong to task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeTaskActivitiesLocked(ZLjava/lang/String;)V
    .registers 4
    .param p1, "pauseImmediately"  # Z
    .param p2, "reason"  # Ljava/lang/String;

    .line 1550
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    .line 1551
    return-void
.end method

.method removeWindowContainer()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/TaskRecord;)V

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_2a

    .line 516
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTask: could not find taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_29
    return-void

    .line 519
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    .line 521
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 524
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 526
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    .line 527
    return-void
.end method

.method removedFromRecents()V
    .registers 4

    .line 1085
    invoke-direct {p0}, Lcom/android/server/wm/TaskRecord;->closeRecentsChain()V

    .line 1086
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_f

    .line 1087
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    .line 1088
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1091
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->clearRootProcess()V

    .line 1094
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->notifyTaskRemovedFromRecents(II)V

    .line 1095
    return-void
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IIZZLjava/lang/String;)Z
    .registers 15
    .param p1, "preferredStack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"  # I
    .param p3, "moveStackMode"  # I
    .param p4, "animate"  # Z
    .param p5, "deferResume"  # Z
    .param p6, "reason"  # Ljava/lang/String;

    .line 669
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z
    .registers 36
    .param p1, "preferredStack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"  # I
    .param p3, "moveStackMode"  # I
    .param p4, "animate"  # Z
    .param p5, "deferResume"  # Z
    .param p6, "schedulePictureInPictureModeChange"  # Z
    .param p7, "reason"  # Ljava/lang/String;

    .line 695
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v13, p7

    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 696
    .local v14, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 697
    .local v15, "root":Lcom/android/server/wm/RootActivityContainer;
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 698
    .local v12, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    .line 699
    .local v9, "sourceStack":Lcom/android/server/wm/ActivityStack;
    const v0, 0x7fffffff

    const/4 v7, 0x0

    if-ne v3, v0, :cond_26

    const/4 v10, 0x1

    goto :goto_27

    :cond_26
    move v10, v7

    :goto_27
    invoke-virtual {v14, v1, v2, v10}, Lcom/android/server/wm/ActivityStackSupervisor;->getReparentTargetStack(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    .line 701
    .local v11, "toStack":Lcom/android/server/wm/ActivityStack;
    if-ne v11, v9, :cond_2e

    .line 702
    return v7

    .line 704
    :cond_2e
    iget v10, v11, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {v1, v10}, Lcom/android/server/wm/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v10

    if-nez v10, :cond_37

    .line 705
    return v7

    .line 708
    :cond_37
    if-ne v3, v0, :cond_3b

    const/4 v0, 0x1

    goto :goto_3c

    :cond_3b
    move v0, v7

    :goto_3c
    move/from16 v16, v0

    .line 709
    .local v16, "toTopOfStack":Z
    const/4 v10, 0x0

    if-eqz v16, :cond_50

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 710
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 712
    invoke-virtual {v11, v7, v7, v10, v7}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 716
    :cond_50
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v7

    .line 717
    .local v7, "toStackWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 719
    .local v8, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_66

    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v0

    invoke-static {v0, v7}, Lcom/android/server/wm/TaskRecord;->replaceWindowsOnTaskMove(II)Z

    move-result v0

    if-eqz v0, :cond_66

    const/4 v0, 0x1

    goto :goto_67

    :cond_66
    const/4 v0, 0x0

    :goto_67
    move/from16 v18, v0

    .line 721
    .local v18, "mightReplaceWindow":Z
    if-eqz v18, :cond_70

    .line 730
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v12, v0, v5}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    .line 733
    :cond_70
    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 734
    const/16 v19, 0x1

    .line 736
    .local v19, "kept":Z
    :try_start_75
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_2a3

    move-object/from16 v20, v0

    .line 737
    .local v20, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v2, v20

    .end local v20  # "r":Lcom/android/server/wm/ActivityRecord;
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_9f

    :try_start_7f
    invoke-virtual {v15, v9}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, v2, :cond_9f

    const/4 v0, 0x1

    goto :goto_a0

    .line 817
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_8d
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v25, v9

    move-object v9, v13

    move-object v2, v15

    move-object v15, v11

    move v11, v3

    move v3, v7

    move-object v7, v12

    move-object/from16 v27, v14

    move-object v14, v8

    move-object/from16 v8, v27

    goto/16 :goto_2b3

    .line 738
    .restart local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_9f
    const/4 v0, 0x0

    :goto_a0
    move/from16 v20, v0

    .line 739
    .local v20, "wasFocused":Z
    if-eqz v2, :cond_ac

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_a8
    .catchall {:try_start_7f .. :try_end_a8} :catchall_8d

    if-ne v0, v2, :cond_ac

    const/4 v0, 0x1

    goto :goto_ad

    :cond_ac
    const/4 v0, 0x0

    :goto_ad
    move-object/from16 v21, v15

    move-object v15, v10

    .end local v15  # "root":Lcom/android/server/wm/RootActivityContainer;
    .local v21, "root":Lcom/android/server/wm/RootActivityContainer;
    move v10, v0

    .line 740
    .local v10, "wasResumed":Z
    if-eqz v2, :cond_cc

    :try_start_b3
    iget-object v0, v9, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;
    :try_end_b5
    .catchall {:try_start_b3 .. :try_end_b5} :catchall_b9

    if-ne v0, v2, :cond_cc

    const/4 v0, 0x1

    goto :goto_cd

    .line 817
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v10  # "wasResumed":Z
    .end local v20  # "wasFocused":Z
    :catchall_b9
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v25, v9

    move-object v15, v11

    move-object v9, v13

    move-object/from16 v2, v21

    move v11, v3

    move v3, v7

    move-object v7, v12

    move-object/from16 v27, v14

    move-object v14, v8

    move-object/from16 v8, v27

    goto/16 :goto_2b3

    .line 740
    .restart local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v10  # "wasResumed":Z
    .restart local v20  # "wasFocused":Z
    :cond_cc
    const/4 v0, 0x0

    :goto_cd
    move-object v15, v11

    .end local v11  # "toStack":Lcom/android/server/wm/ActivityStack;
    .local v15, "toStack":Lcom/android/server/wm/ActivityStack;
    move v11, v0

    .line 745
    .local v11, "wasPaused":Z
    if-eqz v2, :cond_f1

    :try_start_d1
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->isTopStackOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 746
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_db
    .catchall {:try_start_d1 .. :try_end_db} :catchall_df

    if-ne v0, v2, :cond_f1

    const/4 v0, 0x1

    goto :goto_f2

    .line 817
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v10  # "wasResumed":Z
    .end local v11  # "wasPaused":Z
    .end local v20  # "wasFocused":Z
    :catchall_df
    move-exception v0

    move-object/from16 v10, p1

    move v11, v3

    move v3, v7

    move-object/from16 v25, v9

    move-object v7, v12

    move-object v9, v13

    move-object/from16 v2, v21

    move-object/from16 v27, v14

    move-object v14, v8

    move-object/from16 v8, v27

    goto/16 :goto_2b3

    .line 746
    .restart local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v10  # "wasResumed":Z
    .restart local v11  # "wasPaused":Z
    .restart local v20  # "wasFocused":Z
    :cond_f1
    const/4 v0, 0x0

    :goto_f2
    move/from16 v22, v0

    .line 749
    .local v22, "wasFront":Z
    move/from16 v23, v7

    const/4 v7, 0x0

    .end local v7  # "toStackWindowingMode":I
    .local v23, "toStackWindowingMode":I
    :try_start_f7
    invoke-virtual {v15, v1, v3, v7}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result v0
    :try_end_fb
    .catchall {:try_start_f7 .. :try_end_fb} :catchall_290

    move v3, v0

    .line 753
    .end local p2  # "position":I
    .local v3, "position":I
    :try_start_fc
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7
    :try_end_102
    .catchall {:try_start_fc .. :try_end_102} :catchall_27b

    if-nez v4, :cond_108

    move-object/from16 v24, v8

    const/4 v8, 0x1

    goto :goto_10b

    :cond_108
    move-object/from16 v24, v8

    const/4 v8, 0x0

    .end local v8  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v24, "topActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_10b
    :try_start_10b
    invoke-virtual {v0, v7, v3, v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskStack;IZ)V

    .line 756
    if-eqz v4, :cond_11a

    const/4 v8, 0x1

    if-ne v4, v8, :cond_118

    if-nez v20, :cond_11b

    if-eqz v22, :cond_118

    goto :goto_11b

    :cond_118
    const/4 v0, 0x0

    goto :goto_11c

    :cond_11a
    const/4 v8, 0x1

    :cond_11b
    :goto_11b
    move v0, v8

    :goto_11c
    move/from16 v17, v0

    .line 759
    .local v17, "moveStackToFront":Z
    if-eqz v17, :cond_122

    .line 760
    const/4 v0, 0x2

    goto :goto_123

    :cond_122
    move v0, v8

    .line 759
    :goto_123
    invoke-virtual {v9, v1, v13, v0}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 761
    const/4 v7, 0x0

    invoke-virtual {v15, v1, v3, v7, v13}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;IZLjava/lang/String;)V
    :try_end_12a
    .catchall {:try_start_10b .. :try_end_12a} :catchall_268

    .line 763
    if-eqz p6, :cond_141

    .line 765
    :try_start_12c
    invoke-virtual {v14, v1, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;)V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_130

    goto :goto_141

    .line 817
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v10  # "wasResumed":Z
    .end local v11  # "wasPaused":Z
    .end local v17  # "moveStackToFront":Z
    .end local v20  # "wasFocused":Z
    .end local v22  # "wasFront":Z
    :catchall_130
    move-exception v0

    move-object/from16 v10, p1

    move v11, v3

    move-object/from16 v25, v9

    move-object v7, v12

    move-object v9, v13

    move-object v8, v14

    move-object/from16 v2, v21

    move/from16 v3, v23

    move-object/from16 v14, v24

    goto/16 :goto_2b3

    .line 770
    .restart local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v10  # "wasResumed":Z
    .restart local v11  # "wasPaused":Z
    .restart local v17  # "moveStackToFront":Z
    .restart local v20  # "wasFocused":Z
    .restart local v22  # "wasFront":Z
    :cond_141
    :goto_141
    :try_start_141
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_143
    .catchall {:try_start_141 .. :try_end_143} :catchall_268

    if-eqz v0, :cond_150

    .line 772
    :try_start_145
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v7, v1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    iget v8, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-interface {v0, v7, v8}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_14e
    .catch Landroid/os/RemoteException; {:try_start_145 .. :try_end_14e} :catch_14f
    .catchall {:try_start_145 .. :try_end_14e} :catchall_130

    .line 774
    goto :goto_150

    .line 773
    :catch_14f
    move-exception v0

    .line 779
    :cond_150
    :goto_150
    if-eqz v2, :cond_17c

    .line 780
    move/from16 p2, v3

    move/from16 v8, v23

    const/4 v3, 0x0

    .end local v3  # "position":I
    .end local v23  # "toStackWindowingMode":I
    .local v8, "toStackWindowingMode":I
    .restart local p2  # "position":I
    move-object v7, v15

    move v3, v8

    const/4 v13, 0x1

    move-object/from16 v27, v24

    move-object/from16 v24, v14

    move-object/from16 v14, v27

    .end local v8  # "toStackWindowingMode":I
    .local v3, "toStackWindowingMode":I
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v24, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    move-object v8, v2

    move-object/from16 v25, v9

    .end local v9  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v25, "sourceStack":Lcom/android/server/wm/ActivityStack;
    move/from16 v9, v17

    move-object/from16 v26, v12

    .end local v12  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v26, "windowManager":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v12, p7

    :try_start_169
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    goto :goto_18b

    .line 817
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v10  # "wasResumed":Z
    .end local v11  # "wasPaused":Z
    .end local v17  # "moveStackToFront":Z
    .end local v20  # "wasFocused":Z
    .end local v22  # "wasFront":Z
    :catchall_16d
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v9, p7

    :goto_174
    move-object/from16 v2, v21

    move-object/from16 v8, v24

    move-object/from16 v7, v26

    goto/16 :goto_2b3

    .line 779
    .end local v25  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v26  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local p2  # "position":I
    .restart local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    .local v3, "position":I
    .restart local v9  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v10  # "wasResumed":Z
    .restart local v11  # "wasPaused":Z
    .restart local v12  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v14, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local v17  # "moveStackToFront":Z
    .restart local v20  # "wasFocused":Z
    .restart local v22  # "wasFront":Z
    .restart local v23  # "toStackWindowingMode":I
    .local v24, "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_17c
    move/from16 p2, v3

    move-object/from16 v25, v9

    move-object/from16 v26, v12

    move/from16 v3, v23

    const/4 v13, 0x1

    move-object/from16 v27, v24

    move-object/from16 v24, v14

    move-object/from16 v14, v27

    .line 783
    .end local v9  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v12  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v23  # "toStackWindowingMode":I
    .local v3, "toStackWindowingMode":I
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v24, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local v25  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v26  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local p2  # "position":I
    :goto_18b
    if-nez v5, :cond_196

    .line 784
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_196
    .catchall {:try_start_169 .. :try_end_196} :catchall_16d

    .line 789
    :cond_196
    :try_start_196
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->prepareFreezingTaskBounds()V

    .line 792
    const/4 v0, 0x3

    if-ne v3, v0, :cond_19e

    move v0, v13

    goto :goto_19f

    :cond_19e
    const/4 v0, 0x0

    .line 794
    .local v0, "toStackSplitScreenPrimary":Z
    :goto_19f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 795
    .local v7, "configBounds":Landroid/graphics/Rect;
    if-eq v3, v13, :cond_1a8

    const/4 v8, 0x4

    if-ne v3, v8, :cond_1c5

    .line 797
    :cond_1a8
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_1b0
    .catchall {:try_start_196 .. :try_end_1b0} :catchall_259

    if-nez v8, :cond_1c5

    .line 798
    :try_start_1b2
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v8

    if-nez v18, :cond_1ba

    move v9, v13

    goto :goto_1bb

    :cond_1ba
    const/4 v9, 0x0

    :goto_1bb
    const/4 v12, 0x0

    invoke-virtual {v1, v8, v12, v9, v6}, Lcom/android/server/wm/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v8

    move/from16 v19, v8

    move-object/from16 v9, p7

    goto :goto_21c

    .line 800
    :cond_1c5
    const/4 v8, 0x5

    if-ne v3, v8, :cond_1e8

    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 802
    .local v8, "bounds":Landroid/graphics/Rect;
    if-nez v8, :cond_1db

    .line 803
    iget-object v9, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v9, v1, v12}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    .line 804
    move-object v8, v7

    .line 806
    :cond_1db
    if-nez v18, :cond_1df

    move v9, v13

    goto :goto_1e0

    :cond_1df
    const/4 v9, 0x0

    :goto_1e0
    const/4 v12, 0x2

    invoke-virtual {v1, v8, v12, v9, v6}, Lcom/android/server/wm/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v9
    :try_end_1e5
    .catchall {:try_start_1b2 .. :try_end_1e5} :catchall_16d

    move/from16 v19, v9

    .end local v8  # "bounds":Landroid/graphics/Rect;
    goto :goto_1ee

    .line 807
    :cond_1e8
    if-nez v0, :cond_1f1

    const/4 v8, 0x2

    if-ne v3, v8, :cond_1ee

    goto :goto_1f1

    :cond_1ee
    :goto_1ee
    move-object/from16 v9, p7

    goto :goto_21c

    .line 808
    :cond_1f1
    :goto_1f1
    if-eqz v0, :cond_20a

    if-ne v4, v13, :cond_20a

    .line 811
    :try_start_1f5
    iget-object v8, v1, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;
    :try_end_1f9
    .catchall {:try_start_1f5 .. :try_end_1f9} :catchall_201

    move-object/from16 v9, p7

    :try_start_1fb
    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->moveRecentsStackToFront(Ljava/lang/String;)V
    :try_end_1fe
    .catchall {:try_start_1fb .. :try_end_1fe} :catchall_1ff

    goto :goto_20c

    .line 817
    .end local v0  # "toStackSplitScreenPrimary":Z
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v7  # "configBounds":Landroid/graphics/Rect;
    .end local v10  # "wasResumed":Z
    .end local v11  # "wasPaused":Z
    .end local v17  # "moveStackToFront":Z
    .end local v20  # "wasFocused":Z
    .end local v22  # "wasFront":Z
    :catchall_1ff
    move-exception v0

    goto :goto_204

    :catchall_201
    move-exception v0

    move-object/from16 v9, p7

    :goto_204
    move-object/from16 v10, p1

    move/from16 v11, p2

    goto/16 :goto_174

    .line 808
    .restart local v0  # "toStackSplitScreenPrimary":Z
    .restart local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v7  # "configBounds":Landroid/graphics/Rect;
    .restart local v10  # "wasResumed":Z
    .restart local v11  # "wasPaused":Z
    .restart local v17  # "moveStackToFront":Z
    .restart local v20  # "wasFocused":Z
    .restart local v22  # "wasFront":Z
    :cond_20a
    move-object/from16 v9, p7

    .line 813
    :goto_20c
    :try_start_20c
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v8

    if-nez v18, :cond_214

    move v12, v13

    goto :goto_215

    :cond_214
    const/4 v12, 0x0

    :goto_215
    const/4 v13, 0x0

    invoke-virtual {v1, v8, v13, v12, v6}, Lcom/android/server/wm/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v8
    :try_end_21a
    .catchall {:try_start_20c .. :try_end_21a} :catchall_255

    move/from16 v19, v8

    .line 817
    .end local v0  # "toStackSplitScreenPrimary":Z
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v7  # "configBounds":Landroid/graphics/Rect;
    .end local v10  # "wasResumed":Z
    .end local v11  # "wasPaused":Z
    .end local v17  # "moveStackToFront":Z
    .end local v20  # "wasFocused":Z
    .end local v22  # "wasFront":Z
    :goto_21c
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 818
    nop

    .line 820
    if-eqz v18, :cond_22f

    .line 824
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez v19, :cond_228

    const/4 v2, 0x1

    goto :goto_229

    :cond_228
    const/4 v2, 0x0

    :goto_229
    move-object/from16 v7, v26

    .end local v26  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v7, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual {v7, v0, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    goto :goto_231

    .line 820
    .end local v7  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v26  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :cond_22f
    move-object/from16 v7, v26

    .line 827
    .end local v26  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v7  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :goto_231
    if-nez v6, :cond_243

    .line 830
    if-nez v18, :cond_237

    const/4 v0, 0x1

    goto :goto_238

    :cond_237
    const/4 v0, 0x0

    :goto_238
    move-object/from16 v2, v21

    const/4 v8, 0x0

    const/4 v13, 0x0

    .end local v21  # "root":Lcom/android/server/wm/RootActivityContainer;
    .local v2, "root":Lcom/android/server/wm/RootActivityContainer;
    invoke-virtual {v2, v8, v13, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 831
    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    goto :goto_246

    .line 827
    .end local v2  # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v21  # "root":Lcom/android/server/wm/RootActivityContainer;
    :cond_243
    move-object/from16 v2, v21

    const/4 v13, 0x0

    .line 835
    .end local v21  # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v2  # "root":Lcom/android/server/wm/RootActivityContainer;
    :goto_246
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    move-object/from16 v8, v24

    .end local v24  # "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .local v8, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    invoke-virtual {v8, v1, v0, v13, v15}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V

    .line 838
    move-object/from16 v10, p1

    if-ne v10, v15, :cond_254

    const/4 v13, 0x1

    :cond_254
    return v13

    .line 817
    .end local v2  # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v7  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v8  # "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local v21  # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v24  # "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local v26  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    :catchall_255
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_25e

    :catchall_259
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v9, p7

    :goto_25e
    move-object/from16 v2, v21

    move-object/from16 v8, v24

    move-object/from16 v7, v26

    move/from16 v11, p2

    .end local v21  # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v24  # "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local v26  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v2  # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v7  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v8  # "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    goto/16 :goto_2b3

    .end local v2  # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v7  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v8  # "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local v25  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local p2  # "position":I
    .local v3, "position":I
    .restart local v9  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v12  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v14, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local v21  # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v23  # "toStackWindowingMode":I
    .local v24, "topActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_268
    move-exception v0

    move-object/from16 v10, p1

    move/from16 p2, v3

    move-object/from16 v25, v9

    move-object v7, v12

    move-object v9, v13

    move-object v8, v14

    move-object/from16 v2, v21

    move/from16 v3, v23

    move-object/from16 v14, v24

    move/from16 v11, p2

    .end local v9  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v12  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v21  # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v23  # "toStackWindowingMode":I
    .end local v24  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2  # "root":Lcom/android/server/wm/RootActivityContainer;
    .local v3, "toStackWindowingMode":I
    .restart local v7  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .restart local v8  # "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v25  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local p2  # "position":I
    goto :goto_2b3

    .end local v2  # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v7  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v25  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local p2  # "position":I
    .local v3, "position":I
    .local v8, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v12  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v14, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local v21  # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v23  # "toStackWindowingMode":I
    :catchall_27b
    move-exception v0

    move-object/from16 v10, p1

    move/from16 p2, v3

    move-object/from16 v25, v9

    move-object v7, v12

    move-object v9, v13

    move-object/from16 v2, v21

    move/from16 v3, v23

    move-object/from16 v27, v14

    move-object v14, v8

    move-object/from16 v8, v27

    move/from16 v11, p2

    .end local v9  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v12  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v21  # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v23  # "toStackWindowingMode":I
    .restart local v2  # "root":Lcom/android/server/wm/RootActivityContainer;
    .local v3, "toStackWindowingMode":I
    .restart local v7  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v8, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v25  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local p2  # "position":I
    goto :goto_2b3

    .end local v2  # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v3  # "toStackWindowingMode":I
    .end local v7  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v25  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v8, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .restart local v12  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v14, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local v21  # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v23  # "toStackWindowingMode":I
    :catchall_290
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v25, v9

    move-object v7, v12

    move-object v9, v13

    move-object/from16 v2, v21

    move/from16 v3, v23

    move-object/from16 v27, v14

    move-object v14, v8

    move-object/from16 v8, v27

    move/from16 v11, p2

    .end local v9  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v12  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local v21  # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v23  # "toStackWindowingMode":I
    .restart local v2  # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v3  # "toStackWindowingMode":I
    .restart local v7  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v8, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v25  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    goto :goto_2b3

    .end local v2  # "root":Lcom/android/server/wm/RootActivityContainer;
    .end local v3  # "toStackWindowingMode":I
    .end local v25  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v7, "toStackWindowingMode":I
    .local v8, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .local v11, "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v12  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v14, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .local v15, "root":Lcom/android/server/wm/RootActivityContainer;
    :catchall_2a3
    move-exception v0

    move-object v10, v2

    move v3, v7

    move-object/from16 v25, v9

    move-object v7, v12

    move-object v9, v13

    move-object v2, v15

    move-object v15, v11

    move-object/from16 v27, v14

    move-object v14, v8

    move-object/from16 v8, v27

    move/from16 v11, p2

    .end local v9  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    .end local v12  # "windowManager":Lcom/android/server/wm/WindowManagerService;
    .end local p2  # "position":I
    .restart local v2  # "root":Lcom/android/server/wm/RootActivityContainer;
    .restart local v3  # "toStackWindowingMode":I
    .local v7, "windowManager":Lcom/android/server/wm/WindowManagerService;
    .local v8, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    .local v11, "position":I
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    .local v15, "toStack":Lcom/android/server/wm/ActivityStack;
    .restart local v25  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    :goto_2b3
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z
    .registers 16
    .param p1, "preferredStack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "toTop"  # Z
    .param p3, "moveStackMode"  # I
    .param p4, "animate"  # Z
    .param p5, "deferResume"  # Z
    .param p6, "reason"  # Ljava/lang/String;

    .line 650
    if-eqz p2, :cond_6

    const v0, 0x7fffffff

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    move v3, v0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z
    .registers 17
    .param p1, "preferredStack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "toTop"  # Z
    .param p3, "moveStackMode"  # I
    .param p4, "animate"  # Z
    .param p5, "deferResume"  # Z
    .param p6, "schedulePictureInPictureModeChange"  # Z
    .param p7, "reason"  # Ljava/lang/String;

    .line 661
    if-eqz p2, :cond_6

    const v0, 0x7fffffff

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    move v3, v0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestResize(Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "bounds"  # Landroid/graphics/Rect;
    .param p2, "resizeMode"  # I

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 554
    return-void
.end method

.method resize(Landroid/graphics/Rect;IZZ)Z
    .registers 13
    .param p1, "bounds"  # Landroid/graphics/Rect;
    .param p2, "resizeMode"  # I
    .param p3, "preserveWindow"  # Z
    .param p4, "deferResume"  # Z

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 560
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_32

    .line 561
    const-string v0, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeTask: task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not resizeable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_e8

    .line 562
    nop

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 562
    return v1

    .line 567
    :cond_32
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_39

    move v0, v1

    goto :goto_3a

    :cond_39
    move v0, v2

    .line 568
    .local v0, "forced":Z
    :goto_3a
    :try_start_3a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v3
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_e8

    if-eqz v3, :cond_4b

    if-nez v0, :cond_4b

    .line 570
    nop

    .line 627
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 570
    return v1

    .line 573
    :cond_4b
    :try_start_4b
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v3, :cond_69

    .line 577
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 578
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_60

    .line 580
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_e8

    .line 582
    :cond_60
    nop

    .line 627
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 582
    return v1

    .line 585
    :cond_69
    :try_start_69
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskRecord;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "am.resizeTask_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    move-result v1

    .line 602
    .local v1, "updatedConfig":Z
    const/4 v5, 0x1

    .line 603
    .local v5, "kept":Z
    if-eqz v1, :cond_ab

    .line 604
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 605
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_ab

    if-nez p4, :cond_ab

    .line 606
    invoke-virtual {v6, v2, p3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v7

    move v5, v7

    .line 614
    iget-object v7, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v7, v6, v2, p3}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 615
    if-nez v5, :cond_ab

    .line 616
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 620
    .end local v6  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_ab
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v5, v0}, Lcom/android/server/wm/Task;->resize(ZZ)V

    .line 622
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->saveLaunchingStateIfNeeded()V

    .line 624
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_b6
    .catchall {:try_start_69 .. :try_end_b6} :catchall_e8

    .line 625
    nop

    .line 627
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 625
    return v5

    .line 586
    .end local v1  # "updatedConfig":Z
    .end local v5  # "kept":Z
    :cond_bf
    :try_start_bf
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeTask: Can not resize task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/TaskRecord;
    .end local p1  # "bounds":Landroid/graphics/Rect;
    .end local p2  # "resizeMode":I
    .end local p3  # "preserveWindow":Z
    .end local p4  # "deferResume":Z
    throw v1
    :try_end_e8
    .catchall {:try_start_bf .. :try_end_e8} :catchall_e8

    .line 627
    .end local v0  # "forced":Z
    .restart local p0  # "this":Lcom/android/server/wm/TaskRecord;
    .restart local p1  # "bounds":Landroid/graphics/Rect;
    .restart local p2  # "resizeMode":I
    .restart local p3  # "preserveWindow":Z
    .restart local p4  # "deferResume":Z
    :catchall_e8
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method resizeWindowContainer()V
    .registers 3

    .line 633
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/Task;->resize(ZZ)V

    .line 634
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 9
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 2229
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2230
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2231
    nop

    .line 2232
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2233
    .local v0, "windowingMode":I
    if-nez v0, :cond_25

    .line 2234
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2236
    :cond_25
    nop

    .line 2237
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2239
    .local v1, "outOverrideBounds":Landroid/graphics/Rect;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3f

    .line 2240
    const/4 v2, 0x0

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2241
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2240
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/wm/TaskRecord;->computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V

    .line 2245
    :cond_3f
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2247
    return-void

    .line 2250
    :cond_46
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2251
    const/4 v2, 0x5

    if-ne v0, v2, :cond_8e

    .line 2253
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000  # 160.0f

    div-float/2addr v2, v3

    .line 2255
    .local v2, "density":F
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2256
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2257
    .local v3, "parentBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    .line 2258
    .local v4, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v4, :cond_78

    iget-object v5, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v5, :cond_78

    .line 2262
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 2263
    .local v5, "stableBounds":Landroid/graphics/Rect;
    iget-object v6, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 2264
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2267
    .end local v5  # "stableBounds":Landroid/graphics/Rect;
    :cond_78
    const/high16 v5, 0x42400000  # 48.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    const/high16 v6, 0x42000000  # 32.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-static {v1, v3, v5, v6}, Lcom/android/server/wm/TaskRecord;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2272
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 2273
    .local v5, "offsetTop":I
    if-lez v5, :cond_8e

    .line 2274
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2277
    .end local v2  # "density":F
    .end local v3  # "parentBounds":Landroid/graphics/Rect;
    .end local v4  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v5  # "offsetTop":I
    :cond_8e
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/TaskRecord;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2278
    return-void
.end method

.method returnsToHomeStack()Z
    .registers 4

    .line 995
    const v0, 0x10004000

    .line 996
    .local v0, "returnHomeFlags":I
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, 0x10004000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method saveLaunchingStateIfNeeded()V
    .registers 3

    .line 1941
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->hasBeenVisible:Z

    if-nez v0, :cond_5

    .line 1943
    return-void

    .line 1946
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v0

    .line 1947
    .local v0, "windowingMode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x5

    if-eq v0, v1, :cond_10

    .line 1949
    return-void

    .line 1953
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1954
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2636
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    :cond_1a
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "task_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2639
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_33

    .line 2640
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "real_activity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2642
    :cond_33
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->realActivitySuspended:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "real_activity_suspended"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2643
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_4b

    .line 2644
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "orig_activity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2650
    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    const-string v2, "@"

    const-string v3, "root_affinity"

    if-eqz v0, :cond_6c

    .line 2651
    const-string v4, "affinity"

    invoke-interface {p1, v1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2652
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 2653
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_67

    goto :goto_68

    :cond_67
    move-object v0, v2

    :goto_68
    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_77

    .line 2655
    :cond_6c
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_77

    .line 2656
    if-eqz v0, :cond_73

    goto :goto_74

    :cond_73
    move-object v0, v2

    :goto_74
    invoke-interface {p1, v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2658
    :cond_77
    :goto_77
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "root_has_reset"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2659
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->autoRemoveRecents:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto_remove_recents"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2660
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->askedCompatMode:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "asked_compat_mode"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2661
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2662
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mUserSetupComplete:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_setup_complete"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2663
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "effective_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2664
    iget-wide v2, p0, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_time_moved"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2665
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "never_relinquish_identity"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2666
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_dc

    .line 2667
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_description"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2669
    :cond_dc
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_e3

    .line 2670
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2672
    :cond_e3
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task_affiliation_color"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2673
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2674
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "prev_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2675
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "next_affiliation"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2676
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "calling_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2677
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    if-nez v0, :cond_120

    const-string v0, ""

    :cond_120
    const-string v2, "calling_package"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2678
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resize_mode"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2679
    iget-boolean v0, p0, Lcom/android/server/wm/TaskRecord;->mSupportsPictureInPicture:Z

    .line 2680
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 2679
    const-string v2, "supports_picture_in_picture"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2681
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_149

    .line 2682
    nop

    .line 2683
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 2682
    const-string v2, "non_fullscreen_bounds"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2685
    :cond_149
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "min_width"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2686
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "min_height"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2687
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "persist_task_version"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2689
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mInvisibleFlag:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "invisible_flag"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2692
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_185

    .line 2693
    const-string v0, "affinity_intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2694
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2695
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2698
    :cond_185
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_196

    .line 2699
    const-string v0, "intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2700
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2701
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2704
    :cond_196
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2705
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2706
    .local v2, "numActivities":I
    const/4 v3, 0x0

    .local v3, "activityNdx":I
    :goto_19d
    if-ge v3, v2, :cond_1cf

    .line 2707
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 2708
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v5, :cond_1cf

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v5

    if-eqz v5, :cond_1cf

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2709
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    or-int/lit16 v5, v5, 0x2000

    if-ne v5, v6, :cond_1c1

    if-lez v3, :cond_1c1

    .line 2713
    goto :goto_1cf

    .line 2715
    :cond_1c1
    const-string v5, "activity"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2716
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2717
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2706
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19d

    .line 2719
    .end local v3  # "activityNdx":I
    :cond_1cf
    :goto_1cf
    return-void
.end method

.method setDisplayedBounds(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 1999
    if-nez p1, :cond_8

    .line 2000
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_d

    .line 2002
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2004
    :goto_d
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_21

    .line 2005
    nop

    .line 2006
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_1e

    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mDisplayedBounds:Landroid/graphics/Rect;

    .line 2005
    :goto_1e
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setOverrideDisplayedBounds(Landroid/graphics/Rect;)V

    .line 2008
    :cond_21
    return-void
.end method

.method final setFrontOfTask()V
    .registers 8

    .line 1251
    const/4 v0, 0x0

    .line 1252
    .local v0, "foundFront":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1253
    .local v1, "numActivities":I
    const/4 v2, 0x0

    .local v2, "activityNdx":I
    :goto_8
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v1, :cond_24

    .line 1254
    iget-object v5, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1255
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_1f

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1b

    goto :goto_1f

    .line 1258
    :cond_1b
    iput-boolean v4, v5, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    .line 1260
    const/4 v0, 0x1

    goto :goto_21

    .line 1256
    :cond_1f
    :goto_1f
    iput-boolean v3, v5, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    .line 1253
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1263
    .end local v2  # "activityNdx":I
    :cond_24
    if-nez v0, :cond_32

    if-lez v1, :cond_32

    .line 1266
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    .line 1268
    :cond_32
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 881
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    .line 882
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 883
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 884
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskRecord;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 885
    return-void
.end method

.method setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 1852
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    .line 1853
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_f

    .line 1855
    :cond_c
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1857
    :goto_f
    return-void
.end method

.method setLockTaskAuth()V
    .registers 2

    .line 1565
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskRecord;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 1566
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V
    .registers 3
    .param p1, "nextAffiliate"  # Lcom/android/server/wm/TaskRecord;

    .line 1005
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    .line 1006
    if-nez p1, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    :goto_8
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    .line 1007
    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V
    .registers 3
    .param p1, "prevAffiliate"  # Lcom/android/server/wm/TaskRecord;

    .line 1000
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    .line 1001
    if-nez p1, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    :goto_8
    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    .line 1002
    return-void
.end method

.method setResizeMode(I)V
    .registers 5
    .param p1, "resizeMode"  # I

    .line 534
    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    if-ne v0, p1, :cond_5

    .line 535
    return-void

    .line 537
    :cond_5
    iput p1, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 538
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->setResizeable(I)V

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 540
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 541
    return-void
.end method

.method setRootProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "proc"  # Lcom/android/server/wm/WindowProcessController;

    .line 2392
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->clearRootProcess()V

    .line 2393
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_17

    .line 2394
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_17

    .line 2395
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2396
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->addRecentTask(Lcom/android/server/wm/TaskRecord;)V

    .line 2398
    :cond_17
    return-void
.end method

.method setStack(Lcom/android/server/wm/ActivityStack;)V
    .registers 6
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 1018
    if-eqz p1, :cond_11

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 1019
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task must be added as a Stack child first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    .line 1022
    .local v0, "oldStack":Lcom/android/server/wm/ActivityStack;
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    .line 1027
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eq v0, v1, :cond_34

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1f
    if-ltz v1, :cond_34

    .line 1029
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1031
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_2a

    .line 1032
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 1035
    :cond_2a
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v3, :cond_31

    .line 1036
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityStack;->onActivityAddedToStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 1028
    .end local v2  # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 1041
    .end local v1  # "i":I
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->onParentChanged()V

    .line 1042
    return-void
.end method

.method setTask(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 484
    iput-object p1, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    .line 485
    return-void
.end method

.method setTaskDockedResizing(Z)V
    .registers 4
    .param p1, "resizing"  # Z

    .line 544
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_22

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTaskDockedResizing: taskId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void

    .line 548
    :cond_22
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->setTaskDockedResizing(Z)V

    .line 549
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/TaskRecord;)V
    .registers 6
    .param p1, "taskToAffiliateWith"  # Lcom/android/server/wm/TaskRecord;

    .line 1098
    invoke-direct {p0}, Lcom/android/server/wm/TaskRecord;->closeRecentsChain()V

    .line 1099
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    .line 1100
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    iput v0, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    .line 1102
    :goto_b
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 1103
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mNextAffiliate:Lcom/android/server/wm/TaskRecord;

    .line 1104
    .local v0, "nextRecents":Lcom/android/server/wm/TaskRecord;
    iget v2, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_4d

    .line 1105
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

    .line 1107
    iget-object v2, v0, Lcom/android/server/wm/TaskRecord;->mPrevAffiliate:Lcom/android/server/wm/TaskRecord;

    if-ne v2, p1, :cond_49

    .line 1108
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1110
    :cond_49
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1111
    goto :goto_4f

    .line 1113
    :cond_4d
    move-object p1, v0

    .line 1114
    .end local v0  # "nextRecents":Lcom/android/server/wm/TaskRecord;
    goto :goto_b

    .line 1115
    :cond_4f
    :goto_4f
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1116
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1117
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 1118
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 3

    .line 1619
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

    .line 1623
    invoke-direct {p0, v1, v1}, Lcom/android/server/wm/TaskRecord;->isResizeable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    .line 1625
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_21
    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    nop

    .line 1619
    :goto_24
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2548
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2549
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_3c

    .line 2550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    iget v1, p0, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2553
    const-string v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2554
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getStackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2555
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2557
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2558
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2560
    :cond_3c
    const-string v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2561
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2563
    iget v1, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2564
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_65

    .line 2565
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2566
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    .line 2567
    :cond_65
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_7c

    .line 2568
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2569
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    .line 2570
    :cond_7c
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_99

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_99

    .line 2571
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2572
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    .line 2574
    :cond_99
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    :goto_9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskRecord;->stringName:Ljava/lang/String;

    .line 2577
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 1153
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_24

    .line 1154
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_c
    if-ltz v0, :cond_24

    .line 1155
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1156
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1157
    return-object v1

    .line 1154
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1161
    .end local v0  # "activityNdx":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningActivityWithStartingWindowLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 5

    .line 1199
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_29

    .line 1200
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "activityNdx":I
    :goto_c
    if-ltz v0, :cond_29

    .line 1201
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1202
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    iget v3, v2, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    if-ne v3, v1, :cond_26

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_26

    .line 1203
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1204
    goto :goto_26

    .line 1206
    :cond_25
    return-object v2

    .line 1200
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1209
    .end local v0  # "activityNdx":I
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method touchActiveTime()V
    .registers 3

    .line 872
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 873
    return-void
.end method

.method updateEffectiveIntent()V
    .registers 3

    .line 1783
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->findEffectiveRootIndex()I

    move-result v0

    .line 1784
    .local v0, "effectiveRootIndex":I
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1785
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1788
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->updateTaskDescription()V

    .line 1789
    return-void
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 1848
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "bounds"  # Landroid/graphics/Rect;
    .param p2, "insetBounds"  # Landroid/graphics/Rect;

    .line 1868
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

    .line 1869
    .local v2, "hasSetDisplayedBounds":Z
    :goto_d
    if-eqz v2, :cond_13

    .line 1870
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskRecord;->setDisplayedBounds(Landroid/graphics/Rect;)V

    goto :goto_17

    .line 1872
    :cond_13
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskRecord;->setDisplayedBounds(Landroid/graphics/Rect;)V

    .line 1875
    :goto_17
    if-eqz v2, :cond_1b

    move-object v3, p2

    goto :goto_1c

    :cond_1b
    move-object v3, p1

    .line 1876
    .local v3, "steadyBounds":Landroid/graphics/Rect;
    :goto_1c
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskRecord;->equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1877
    return v1

    .line 1880
    :cond_23
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1881
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 1882
    iget-object v1, p0, Lcom/android/server/wm/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/wm/ActivityStack;)V
    .registers 5
    .param p1, "inStack"  # Lcom/android/server/wm/ActivityStack;

    .line 2343
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_7

    if-ne v0, p1, :cond_7

    .line 2344
    return-void

    .line 2347
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2348
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2352
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2353
    return-void

    .line 2355
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_22

    .line 2356
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_55

    .line 2358
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/TaskRecord;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_55

    .line 2349
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

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2361
    :cond_4e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2363
    :goto_55
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .registers 3

    .line 2330
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2331
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2332
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 2335
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2337
    :cond_16
    return-object v0
.end method

.method updateTaskDescription()V
    .registers 27

    .line 1691
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1692
    .local v1, "numActivities":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    iget-object v4, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1693
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_1e

    move v2, v3

    goto :goto_1f

    :cond_1e
    nop

    .line 1694
    .local v2, "relinquish":Z
    :goto_1f
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "activityNdx":I
    :goto_23
    if-ge v3, v1, :cond_4d

    .line 1696
    iget-object v4, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1697
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_3a

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x1000

    if-nez v5, :cond_3a

    .line 1700
    add-int/lit8 v3, v3, 0x1

    .line 1701
    goto :goto_4d

    .line 1703
    :cond_3a
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_4a

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1704
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_4a

    .line 1705
    goto :goto_4d

    .line 1695
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 1708
    :cond_4d
    :goto_4d
    if-lez v3, :cond_100

    .line 1713
    const/4 v4, 0x0

    .line 1714
    .local v4, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1715
    .local v5, "iconFilename":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1716
    .local v6, "iconResource":I
    const/4 v7, 0x0

    .line 1717
    .local v7, "colorPrimary":I
    const/4 v8, 0x0

    .line 1718
    .local v8, "colorBackground":I
    const/4 v9, 0x0

    .line 1719
    .local v9, "statusBarColor":I
    const/4 v10, 0x0

    .line 1720
    .local v10, "navigationBarColor":I
    const/4 v11, 0x0

    .line 1721
    .local v11, "statusBarContrastWhenTransparent":Z
    const/4 v12, 0x0

    .line 1722
    .local v12, "navigationBarContrastWhenTransparent":Z
    const/4 v13, 0x1

    .line 1723
    .local v13, "topActivity":Z
    add-int/lit8 v3, v3, -0x1

    move-object v15, v4

    move-object/from16 v16, v5

    move v14, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    .end local v4  # "label":Ljava/lang/String;
    .end local v5  # "iconFilename":Ljava/lang/String;
    .end local v6  # "iconResource":I
    .end local v7  # "colorPrimary":I
    .end local v8  # "colorBackground":I
    .end local v9  # "statusBarColor":I
    .end local v10  # "navigationBarColor":I
    .end local v11  # "statusBarContrastWhenTransparent":Z
    .end local v12  # "navigationBarContrastWhenTransparent":Z
    .end local v13  # "topActivity":Z
    .local v14, "iconResource":I
    .local v15, "label":Ljava/lang/String;
    .local v16, "iconFilename":Ljava/lang/String;
    .local v17, "colorPrimary":I
    .local v18, "colorBackground":I
    .local v19, "statusBarColor":I
    .local v20, "navigationBarColor":I
    .local v21, "statusBarContrastWhenTransparent":Z
    .local v22, "navigationBarContrastWhenTransparent":Z
    .local v23, "topActivity":Z
    :goto_6d
    if-ltz v3, :cond_ca

    .line 1724
    iget-object v4, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1725
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v5, :cond_7c

    .line 1726
    goto :goto_c7

    .line 1728
    :cond_7c
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v5, :cond_c4

    .line 1729
    if-nez v15, :cond_89

    .line 1730
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v5

    move-object v15, v5

    .line 1732
    :cond_89
    const/4 v5, -0x1

    if-ne v14, v5, :cond_92

    .line 1733
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v14

    .line 1735
    :cond_92
    if-nez v16, :cond_9c

    .line 1736
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    .line 1738
    :cond_9c
    if-nez v17, :cond_a4

    .line 1739
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v17

    .line 1741
    :cond_a4
    if-eqz v23, :cond_c4

    .line 1742
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v18

    .line 1743
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v19

    .line 1744
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v20

    .line 1745
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1746
    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v21

    .line 1747
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1748
    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v22

    .line 1751
    :cond_c4
    const/4 v5, 0x0

    move/from16 v23, v5

    .line 1723
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_c7
    add-int/lit8 v3, v3, -0x1

    goto :goto_6d

    .line 1753
    :cond_ca
    new-instance v13, Landroid/app/ActivityManager$TaskDescription;

    const/4 v6, 0x0

    move-object v4, v13

    move-object v5, v15

    move v7, v14

    move-object/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v12, v20

    move-object/from16 v24, v13

    move/from16 v13, v21

    move/from16 v25, v14

    .end local v14  # "iconResource":I
    .local v25, "iconResource":I
    move/from16 v14, v22

    invoke-direct/range {v4 .. v14}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;IIIIZZ)V

    move-object/from16 v4, v24

    iput-object v4, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1756
    iget-object v4, v0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_f2

    .line 1757
    iget-object v5, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1760
    :cond_f2
    iget v4, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget v5, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskId:I

    if-ne v4, v5, :cond_100

    .line 1761
    iget-object v4, v0, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v4

    iput v4, v0, Lcom/android/server/wm/TaskRecord;->mAffiliatedTaskColor:I

    .line 1764
    .end local v15  # "label":Ljava/lang/String;
    .end local v16  # "iconFilename":Ljava/lang/String;
    .end local v17  # "colorPrimary":I
    .end local v18  # "colorBackground":I
    .end local v19  # "statusBarColor":I
    .end local v20  # "navigationBarColor":I
    .end local v21  # "statusBarContrastWhenTransparent":Z
    .end local v22  # "navigationBarContrastWhenTransparent":Z
    .end local v23  # "topActivity":Z
    .end local v25  # "iconResource":I
    :cond_100
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 11
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "logLevel"  # I

    .line 2582
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2583
    return-void

    .line 2586
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2587
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2588
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2589
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_28
    if-ltz v2, :cond_3d

    .line 2590
    iget-object v3, p0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 2591
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/ActivityRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2589
    .end local v3  # "activity":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 2593
    .end local v2  # "i":I
    :cond_3d
    const-wide v2, 0x10500000004L

    iget-object v4, p0, Lcom/android/server/wm/TaskRecord;->mStack:Lcom/android/server/wm/ActivityStack;

    iget v4, v4, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2594
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_55

    .line 2595
    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2597
    :cond_55
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_65

    .line 2598
    const-wide v3, 0x10900000006L

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2600
    :cond_65
    iget-object v2, p0, Lcom/android/server/wm/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_75

    .line 2601
    const-wide v3, 0x10900000007L

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2603
    :cond_75
    const-wide v2, 0x10500000008L

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2604
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/wm/TaskRecord;->mResizeMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2606
    const-wide v2, 0x1080000000aL

    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2608
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_a9

    .line 2609
    invoke-virtual {p0}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2610
    .local v2, "bounds":Landroid/graphics/Rect;
    const-wide v3, 0x10b0000000bL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2612
    .end local v2  # "bounds":Landroid/graphics/Rect;
    :cond_a9
    const-wide v2, 0x1050000000cL

    iget v4, p0, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2613
    const-wide v2, 0x1050000000dL

    iget v4, p0, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2614
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2615
    return-void
.end method
