.class public final Lcom/android/server/wm/ActivityRecord;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;,
        Lcom/android/server/wm/ActivityRecord$Token;
    }
.end annotation


# static fields
.field static final ACTIVITY_ICON_SUFFIX:Ljava/lang/String; = "_activity_icon_"

.field private static final ATTR_COMPONENTSPECIFIED:Ljava/lang/String; = "component_specified"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_LAUNCHEDFROMPACKAGE:Ljava/lang/String; = "launched_from_package"

.field private static final ATTR_LAUNCHEDFROMUID:Ljava/lang/String; = "launched_from_uid"

.field private static final ATTR_RESOLVEDTYPE:Ljava/lang/String; = "resolved_type"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final LEGACY_RECENTS_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui.recents"

.field private static final SHOW_ACTIVITY_START_TIME:Z = true

.field static final STARTING_WINDOW_NOT_SHOWN:I = 0x0

.field static final STARTING_WINDOW_REMOVED:I = 0x2

.field static final STARTING_WINDOW_SHOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_PERSISTABLEBUNDLE:Ljava/lang/String; = "persistable_bundle"

.field private static final TAG_SAVED_STATE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field app:Lcom/android/server/wm/WindowProcessController;

.field appInfo:Landroid/content/pm/ApplicationInfo;

.field appTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field final appToken:Landroid/view/IApplicationToken$Stub;

.field final assistToken:Landroid/os/Binder;

.field compat:Landroid/content/res/CompatibilityInfo;

.field private final componentSpecified:Z

.field configChangeFlags:I

.field cpuTimeAtResume:J

.field private createTime:J

.field deferRelaunchUntilPaused:Z

.field delayedResume:Z

.field finishing:Z

.field forceNewConfig:Z

.field frontOfTask:Z

.field frozenBeforeDestroy:Z

.field fullscreen:Z

.field hasBeenLaunched:Z

.field final hasWallpaper:Z

.field haveState:Z

.field icicle:Landroid/os/Bundle;

.field private icon:I

.field idle:Z

.field immersive:Z

.field private inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field private keysPaused:Z

.field private labelRes:I

.field lastLaunchTime:J

.field lastVisibleTime:J

.field launchCount:I

.field launchFailed:Z

.field launchMode:I

.field launchTickTime:J

.field final launchedFromPackage:Ljava/lang/String;

.field final launchedFromPid:I

.field final launchedFromUid:I

.field public launching:Z

.field lockTaskLaunchMode:I

.field private logo:I

.field final mActivityComponent:Landroid/content/ComponentName;

.field mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

.field final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mClientVisibilityDeferred:Z

.field private mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

.field private mConfigurationSeq:I

.field private mDeferHidingClient:Z

.field mDrawn:Z

.field mHandoverLaunchDisplayId:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mHorizontalSizeConfigurations:[I

.field private mInheritShownWhenLocked:Z

.field private mLastMzWindowMode:Z

.field private mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field private mLastReportedDisplayId:I

.field private mLastReportedMultiWindowMode:Z

.field private mLastReportedPictureInPictureMode:Z

.field mLaunchTaskBehind:Z

.field public mPerf:Landroid/util/BoostFramework;

.field public mPerf_iop:Landroid/util/BoostFramework;

.field mRelaunchReason:I

.field final mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field mRotationAnimationHint:I

.field mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

.field private mShowWhenLocked:Z

.field private mSmallestSizeConfigurations:[I

.field final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field mStartingWindowState:I

.field private mState:Lcom/android/server/wm/ActivityStack$ActivityState;

.field mTaskOverlay:Z

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field private mTurnScreenOn:Z

.field final mUserId:I

.field private mVerticalSizeConfigurations:[I

.field newIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field noDisplay:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field public final packageName:Ljava/lang/String;

.field pauseTime:J

.field pendingOptions:Landroid/app/ActivityOptions;

.field pendingResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field pendingVoiceInteractionStart:Z

.field public perfActivityBoostHandler:I

.field persistentState:Landroid/os/PersistableBundle;

.field pictureInPictureArgs:Landroid/app/PictureInPictureParams;

.field preserveWindowOnDeferredRelaunch:Z

.field final processName:Ljava/lang/String;

.field private realTheme:I

.field final requestCode:I

.field requestedVrComponent:Landroid/content/ComponentName;

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/wm/ActivityRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field returningOptions:Landroid/app/ActivityOptions;

.field final rootVoiceInteraction:Z

.field final shortComponentName:Ljava/lang/String;

.field sleeping:Z

.field startFlag:I

.field final stateNotNeeded:Z

.field stopped:Z

.field stringName:Ljava/lang/String;

.field supportsEnterPipOnTaskSwitch:Z

.field private task:Lcom/android/server/wm/TaskRecord;

.field final taskAffinity:Ljava/lang/String;

.field taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field private theme:I

.field topResumedStateLossTime:J

.field uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

.field visible:Z

.field visibleIgnoringKeyguard:Z

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field warmStartTime:J

.field private windowFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .registers 37
    .param p1, "_service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_caller"  # Lcom/android/server/wm/WindowProcessController;
    .param p3, "_launchedFromPid"  # I
    .param p4, "_launchedFromUid"  # I
    .param p5, "_launchedFromPackage"  # Ljava/lang/String;
    .param p6, "_intent"  # Landroid/content/Intent;
    .param p7, "_resolvedType"  # Ljava/lang/String;
    .param p8, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p9, "_configuration"  # Landroid/content/res/Configuration;
    .param p10, "_resultTo"  # Lcom/android/server/wm/ActivityRecord;
    .param p11, "_resultWho"  # Ljava/lang/String;
    .param p12, "_reqCode"  # I
    .param p13, "_componentSpecified"  # Z
    .param p14, "_rootVoiceInteraction"  # Z
    .param p15, "supervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p16, "options"  # Landroid/app/ActivityOptions;
    .param p17, "sourceRecord"  # Lcom/android/server/wm/ActivityRecord;

    .line 979
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p16

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 297
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 309
    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v6, Lcom/android/server/wm/ActivityRecord;->createTime:J

    .line 369
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    iput-object v1, v6, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 384
    const/4 v12, 0x0

    iput v12, v6, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    .line 385
    iput-boolean v12, v6, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 390
    iput v12, v6, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 412
    const/4 v13, 0x0

    iput-object v13, v6, Lcom/android/server/wm/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    .line 413
    iput-object v13, v6, Lcom/android/server/wm/ActivityRecord;->mPerf_iop:Landroid/util/BoostFramework;

    .line 420
    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 434
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 435
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 438
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    .line 980
    iput-object v7, v6, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 981
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 982
    new-instance v0, Lcom/android/server/wm/ActivityRecord$Token;

    invoke-direct {v0, v6, v9}, Lcom/android/server/wm/ActivityRecord$Token;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;)V

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 983
    iput-object v10, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 984
    move/from16 v14, p3

    iput v14, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    .line 985
    move/from16 v15, p4

    iput v15, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 986
    move-object/from16 v5, p5

    iput-object v5, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 987
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 988
    iput-object v9, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 989
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 990
    move-object/from16 v4, p7

    iput-object v4, v6, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 991
    move/from16 v3, p13

    iput-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    .line 992
    move/from16 v2, p14

    iput-boolean v2, v6, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    .line 993
    new-instance v0, Landroid/util/MergedConfiguration;

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 994
    move-object/from16 v0, p10

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 995
    move-object/from16 v13, p11

    iput-object v13, v6, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 996
    move/from16 v12, p12

    iput v12, v6, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 997
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v1, "ActivityRecord ctor"

    invoke-virtual {v6, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 998
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    .line 999
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1000
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 1001
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 1002
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1003
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 1004
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 1005
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 1006
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->visible:Z

    .line 1007
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 1008
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mDrawn:Z

    .line 1009
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 1010
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    .line 1011
    move-object/from16 v1, p15

    iput-object v1, v6, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1015
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    .line 1020
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v0, :cond_ed

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 1021
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    iget v0, v10, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v0, :cond_e0

    iget v0, v10, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e1

    :cond_e0
    goto :goto_ed

    .line 1026
    :cond_e1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v10, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_f3

    .line 1024
    :cond_ed
    :goto_ed
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1028
    :goto_f3
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 1029
    iget v0, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_ff

    const/4 v0, 0x1

    goto :goto_100

    :cond_ff
    const/4 v0, 0x0

    :goto_100
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    .line 1030
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1031
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1032
    iget v0, v10, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    .line 1033
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_120

    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    if-nez v0, :cond_120

    .line 1034
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1035
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v6, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1036
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v1, v6, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    .line 1038
    .end local v0  # "app":Landroid/content/pm/ApplicationInfo;
    :cond_120
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->icon:I

    .line 1039
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v0

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->logo:I

    .line 1040
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v0

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->theme:I

    .line 1041
    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->theme:I

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->realTheme:I

    .line 1042
    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->realTheme:I

    if-nez v0, :cond_14b

    .line 1043
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_146

    .line 1044
    const v0, 0x1030005

    goto :goto_149

    :cond_146
    const v0, 0x103006b

    :goto_149
    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->realTheme:I

    .line 1046
    :cond_14b
    iget v0, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    const/high16 v17, 0x1000000

    if-eqz v0, :cond_159

    .line 1047
    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->windowFlags:I

    or-int v0, v0, v17

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->windowFlags:I

    .line 1049
    :cond_159
    iget v0, v10, Landroid/content/pm/ActivityInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_178

    if-eqz v8, :cond_178

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_173

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v8, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_178

    .line 1052
    :cond_173
    iget-object v0, v8, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_17c

    .line 1054
    :cond_178
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1057
    :goto_17c
    iget v0, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/high16 v2, 0x800000

    if-eqz v0, :cond_189

    .line 1058
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1061
    :cond_189
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1062
    iget v0, v10, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    .line 1064
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, v6, Lcom/android/server/wm/ActivityRecord;->realTheme:I

    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    iget v4, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v4

    .line 1067
    .local v4, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v4, :cond_1c5

    .line 1068
    iget-object v0, v4, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isTranslucentOrFloating(Landroid/content/res/TypedArray;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    .line 1069
    iget-object v0, v4, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->hasWallpaper:Z

    .line 1070
    iget-object v0, v4, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    goto :goto_1cb

    .line 1072
    :cond_1c5
    const/4 v1, 0x1

    const/4 v3, 0x0

    iput-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->hasWallpaper:Z

    .line 1073
    iput-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    .line 1076
    :goto_1cb
    move v3, v1

    move-object/from16 v0, p0

    move/from16 v1, p13

    const/high16 v16, 0x800000

    move/from16 v2, p4

    move v7, v3

    move-object/from16 v3, p6

    move-object/from16 v18, v4

    .end local v4  # "ent":Lcom/android/server/AttributeCache$Entry;
    .local v18, "ent":Lcom/android/server/AttributeCache$Entry;
    move-object/from16 v4, p16

    move-object/from16 v5, p17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    .line 1078
    iget v0, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1e8

    move v0, v7

    goto :goto_1e9

    :cond_1e8
    const/4 v0, 0x0

    :goto_1e9
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 1080
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    if-nez v0, :cond_1f1

    .line 1081
    const/4 v0, 0x0

    goto :goto_1f7

    :cond_1f1
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_1f7
    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 1083
    iget v0, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int v0, v0, v16

    if-eqz v0, :cond_201

    move v0, v7

    goto :goto_202

    :cond_201
    const/4 v0, 0x0

    :goto_202
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    .line 1084
    iget v0, v10, Landroid/content/pm/ActivityInfo;->privateFlags:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_20b

    move v0, v7

    goto :goto_20c

    :cond_20b
    const/4 v0, 0x0

    :goto_20c
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    .line 1085
    iget v0, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int v0, v0, v17

    if-eqz v0, :cond_216

    move v0, v7

    goto :goto_217

    :cond_216
    const/4 v0, 0x0

    :goto_217
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    .line 1087
    iget v0, v10, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 1088
    iget v0, v10, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    .line 1089
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_233

    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_230

    if-ne v0, v7, :cond_233

    .line 1091
    :cond_230
    const/4 v0, 0x0

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    .line 1094
    :cond_233
    if-eqz v11, :cond_26b

    .line 1095
    iput-object v11, v6, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1096
    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getLaunchTaskBehind()Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 1098
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getRotationAnimationHint()I

    move-result v0

    .line 1100
    .local v0, "rotationAnimation":I
    if-ltz v0, :cond_247

    .line 1101
    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 1103
    :cond_247
    iget-object v1, v6, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getUsageTimeReport()Landroid/app/PendingIntent;

    move-result-object v1

    .line 1104
    .local v1, "usageReport":Landroid/app/PendingIntent;
    if-eqz v1, :cond_256

    .line 1105
    new-instance v2, Lcom/android/server/am/AppTimeTracker;

    invoke-direct {v2, v1}, Lcom/android/server/am/AppTimeTracker;-><init>(Landroid/app/PendingIntent;)V

    iput-object v2, v6, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1107
    :cond_256
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result v2

    .line 1108
    .local v2, "useLockTask":Z
    if-eqz v2, :cond_265

    iget v3, v6, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    if-nez v3, :cond_265

    .line 1109
    const/4 v3, 0x3

    iput v3, v6, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    .line 1112
    :cond_265
    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v3

    iput v3, v6, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 1115
    .end local v0  # "rotationAnimation":I
    .end local v1  # "usageReport":Landroid/app/PendingIntent;
    .end local v2  # "useLockTask":Z
    :cond_26b
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    if-nez v0, :cond_276

    .line 1116
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    .line 1117
    :cond_276
    return-void
.end method

.method static activityResumedLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p0, "token"  # Landroid/os/IBinder;

    .line 2243
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2244
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resumed activity; dropping state of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    :cond_1e
    if-nez v0, :cond_21

    .line 2248
    return-void

    .line 2250
    :cond_21
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 2251
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    .line 2253
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 2254
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v1, :cond_30

    .line 2255
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityDisplay;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 2257
    :cond_30
    return-void
.end method

.method private addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V
    .registers 3
    .param p1, "intent"  # Lcom/android/internal/content/ReferrerIntent;

    .line 1628
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1631
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1632
    return-void
.end method

.method private allowTaskSnapshot()Z
    .registers 6

    .line 3691
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 3692
    return v1

    .line 3696
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessControlService:Lcom/meizu/server/AccessControlService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3697
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3696
    invoke-virtual {v0, v2, v3}, Lcom/meizu/server/AccessControlService;->isPopupUnlockingActivity(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 3699
    return v2

    .line 3706
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_25
    if-ltz v0, :cond_3b

    .line 3707
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 3708
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_38

    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 3709
    return v2

    .line 3706
    .end local v3  # "intent":Landroid/content/Intent;
    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 3712
    .end local v0  # "i":I
    :cond_3b
    return v1
.end method

.method private canLaunchAssistActivity(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 1313
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    .line 1315
    .local v0, "assistComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_f

    .line 1316
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1318
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private canLaunchHomeActivity(ILcom/android/server/wm/ActivityRecord;)Z
    .registers 6
    .param p1, "uid"  # I
    .param p2, "sourceRecord"  # Lcom/android/server/wm/ActivityRecord;

    .line 1296
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_26

    if-nez p1, :cond_a

    goto :goto_26

    .line 1301
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    .line 1302
    .local v0, "recentTasks":Lcom/android/server/wm/RecentTasks;
    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1303
    return v1

    .line 1306
    :cond_1b
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1

    .line 1298
    .end local v0  # "recentTasks":Lcom/android/server/wm/RecentTasks;
    :cond_26
    :goto_26
    return v1
.end method

.method private canShowWhenLockedInner()Z
    .registers 5

    .line 3876
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_16

    .line 3877
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->containsShowWhenLockedWindow()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3878
    :cond_15
    return v1

    .line 3879
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    .line 3880
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityBelow()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3881
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v3

    if-nez v3, :cond_36

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    if-nez v3, :cond_35

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_36

    .line 3883
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->containsShowWhenLockedWindow()Z

    move-result v3

    if-eqz v3, :cond_36

    :cond_35
    goto :goto_37

    :cond_36
    move v1, v2

    .line 3881
    :goto_37
    return v1

    .line 3885
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_38
    return v2
.end method

.method private checkEnterPictureInPictureAppOpsState()Z
    .registers 5

    .line 1532
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsService()Lcom/android/server/appop/AppOpsService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v3, 0x43

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private computeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 20
    .param p1, "outBounds"  # Landroid/graphics/Rect;
    .param p2, "containingAppBounds"  # Landroid/graphics/Rect;

    .line 3161
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3162
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    .line 3163
    .local v3, "maxAspectRatio":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 3164
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    .line 3166
    .local v5, "minAspectRatio":F
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-eqz v6, :cond_de

    if-eqz v4, :cond_de

    invoke-virtual {v6}, Lcom/android/server/wm/TaskRecord;->inMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_de

    const/4 v6, 0x0

    cmpl-float v7, v3, v6

    if-nez v7, :cond_2a

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_de

    .line 3168
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wm/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_36

    goto/16 :goto_de

    .line 3176
    :cond_36
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 3177
    .local v7, "containingAppWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 3178
    .local v8, "containingAppHeight":I
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    .line 3179
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 3181
    .local v9, "containingRatio":F
    move v10, v7

    .line 3182
    .local v10, "activityWidth":I
    move v11, v8

    .line 3184
    .local v11, "activityHeight":I
    cmpl-float v12, v9, v3

    const/4 v13, 0x2

    const/high16 v14, 0x3f000000  # 0.5f

    if-lez v12, :cond_62

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_62

    .line 3185
    if-ge v7, v8, :cond_5d

    .line 3188
    int-to-float v6, v10

    mul-float/2addr v6, v3

    add-float/2addr v6, v14

    float-to-int v11, v6

    goto :goto_84

    .line 3192
    :cond_5d
    int-to-float v6, v11

    mul-float/2addr v6, v3

    add-float/2addr v6, v14

    float-to-int v10, v6

    goto :goto_84

    .line 3194
    :cond_62
    cmpg-float v6, v9, v5

    if-gez v6, :cond_84

    .line 3196
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v6

    const/4 v12, 0x1

    if-eq v6, v12, :cond_77

    if-eq v6, v13, :cond_75

    .line 3210
    if-ge v7, v8, :cond_73

    .line 3213
    const/4 v6, 0x1

    .local v6, "adjustWidth":Z
    goto :goto_79

    .line 3217
    .end local v6  # "adjustWidth":Z
    :cond_73
    const/4 v6, 0x0

    .restart local v6  # "adjustWidth":Z
    goto :goto_79

    .line 3200
    .end local v6  # "adjustWidth":Z
    :cond_75
    const/4 v6, 0x0

    .line 3201
    .restart local v6  # "adjustWidth":Z
    goto :goto_79

    .line 3205
    .end local v6  # "adjustWidth":Z
    :cond_77
    const/4 v6, 0x1

    .line 3206
    .restart local v6  # "adjustWidth":Z
    nop

    .line 3221
    :goto_79
    if-eqz v6, :cond_80

    .line 3222
    int-to-float v12, v11

    div-float/2addr v12, v5

    add-float/2addr v12, v14

    float-to-int v10, v12

    goto :goto_84

    .line 3224
    :cond_80
    int-to-float v12, v10

    div-float/2addr v12, v5

    add-float/2addr v12, v14

    float-to-int v11, v12

    .line 3228
    .end local v6  # "adjustWidth":Z
    :cond_84
    :goto_84
    if-gt v7, v10, :cond_90

    if-gt v8, v11, :cond_90

    .line 3235
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3236
    return-void

    .line 3243
    :cond_90
    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v10

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v11

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v14, v6, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3246
    const-class v6, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/FlymeWindowManagerInternal;

    .line 3247
    .local v6, "mWmsExt":Lcom/android/server/wm/FlymeWindowManagerInternal;
    const/4 v12, 0x3

    invoke-virtual {v6, v12}, Lcom/android/server/wm/FlymeWindowManagerInternal;->isFeatureOpen(I)Z

    move-result v12

    .line 3248
    .local v12, "isFeatureOpen":Z
    if-eqz v12, :cond_dd

    .line 3249
    iget-object v15, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isForceFull()Z

    move-result v15

    if-eqz v15, :cond_bb

    .line 3250
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_dd

    .line 3252
    :cond_bb
    if-le v7, v8, :cond_dd

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v15

    if-eqz v15, :cond_dd

    .line 3253
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v15, v15, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v15, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 3254
    .local v15, "displayWidth":I
    sub-int v16, v15, v10

    div-int/lit8 v13, v16, 0x2

    .line 3255
    .local v13, "offsetX":I
    iget v14, v2, Landroid/graphics/Rect;->left:I

    if-le v13, v14, :cond_dd

    .line 3256
    iget v14, v2, Landroid/graphics/Rect;->left:I

    sub-int v14, v13, v14

    const/4 v0, 0x0

    invoke-virtual {v1, v14, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 3262
    .end local v13  # "offsetX":I
    .end local v15  # "displayWidth":I
    :cond_dd
    :goto_dd
    return-void

    .line 3173
    .end local v6  # "mWmsExt":Lcom/android/server/wm/FlymeWindowManagerInternal;
    .end local v7  # "containingAppWidth":I
    .end local v8  # "containingAppHeight":I
    .end local v9  # "containingRatio":F
    .end local v10  # "activityWidth":I
    .end local v11  # "activityHeight":I
    .end local v12  # "isFeatureOpen":Z
    :cond_de
    :goto_de
    return-void
.end method

.method private static createImageFilename(JI)Ljava/lang/String;
    .registers 5
    .param p0, "createTime"  # J
    .param p2, "taskId"  # I

    .line 2682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_activity_icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private crossesHorizontalSizeThreshold(II)Z
    .registers 4
    .param p1, "firstDp"  # I
    .param p2, "secondDp"  # I

    .line 648
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mHorizontalSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private static crossesSizeThreshold([III)Z
    .registers 7
    .param p0, "thresholds"  # [I
    .param p1, "firstDp"  # I
    .param p2, "secondDp"  # I

    .line 675
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 676
    return v0

    .line 678
    :cond_4
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_17

    .line 679
    aget v3, p0, v1

    .line 680
    .local v3, "threshold":I
    if-ge p1, v3, :cond_f

    if-ge p2, v3, :cond_13

    :cond_f
    if-lt p1, v3, :cond_14

    if-ge p2, v3, :cond_14

    .line 682
    :cond_13
    return v2

    .line 678
    .end local v3  # "threshold":I
    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 685
    .end local v1  # "i":I
    :cond_17
    return v0
.end method

.method private crossesSmallestSizeThreshold(II)Z
    .registers 4
    .param p1, "firstDp"  # I
    .param p2, "secondDp"  # I

    .line 656
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSmallestSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private crossesVerticalSizeThreshold(II)Z
    .registers 4
    .param p1, "firstDp"  # I
    .param p2, "secondDp"  # I

    .line 652
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mVerticalSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method static forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p0, "token"  # Landroid/os/IBinder;

    .line 936
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord$Token;->access$000(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 937
    :catch_8
    move-exception v0

    .line 938
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad activity token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    const/4 v1, 0x0

    return-object v1
.end method

.method private getActivityBelow()Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 3895
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3896
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 3899
    if-nez v0, :cond_f

    const/4 v1, 0x0

    goto :goto_17

    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :goto_17
    return-object v1

    .line 3897
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Activity not found in its task"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getConfigurationChanges(Landroid/content/res/Configuration;)I
    .registers 7
    .param p1, "lastReportedConfig"  # Landroid/content/res/Configuration;

    .line 3511
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3512
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 3515
    .local v1, "changes":I
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_28

    .line 3516
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->crossesHorizontalSizeThreshold(II)Z

    move-result v2

    if-nez v2, :cond_23

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3518
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->crossesVerticalSizeThreshold(II)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_23

    :cond_21
    const/4 v2, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v2, 0x1

    .line 3520
    .local v2, "crosses":Z
    :goto_24
    if-nez v2, :cond_28

    .line 3521
    and-int/lit16 v1, v1, -0x401

    .line 3524
    .end local v2  # "crosses":Z
    :cond_28
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_38

    .line 3525
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3526
    .local v2, "oldSmallest":I
    iget v3, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3527
    .local v3, "newSmallest":I
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->crossesSmallestSizeThreshold(II)Z

    move-result v4

    if-nez v4, :cond_38

    .line 3528
    and-int/lit16 v1, v1, -0x801

    .line 3532
    .end local v2  # "oldSmallest":I
    .end local v3  # "newSmallest":I
    :cond_38
    const/high16 v2, 0x20000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_41

    .line 3533
    const v2, -0x20000001

    and-int/2addr v1, v2

    .line 3536
    :cond_41
    return v1
.end method

.method static getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;
    .registers 3
    .param p0, "token"  # Landroid/os/IBinder;

    .line 2644
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2645
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_b

    .line 2646
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2648
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method static getTaskForActivityLocked(Landroid/os/IBinder;Z)I
    .registers 7
    .param p0, "token"  # Landroid/os/IBinder;
    .param p1, "onlyRoot"  # Z

    .line 2626
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2627
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 2628
    return v1

    .line 2630
    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    .line 2631
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v3, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2632
    .local v3, "activityNdx":I
    if-ltz v3, :cond_1e

    if-eqz p1, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->findEffectiveRootIndex()I

    move-result v4

    if-le v3, v4, :cond_1b

    goto :goto_1e

    .line 2635
    :cond_1b
    iget v1, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    return v1

    .line 2633
    :cond_1e
    :goto_1e
    return v1
.end method

.method private getWaitingHistoryRecordLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 2568
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_15

    .line 2569
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2571
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2572
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_12

    .line 2573
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2575
    :cond_12
    if-eqz v1, :cond_15

    .line 2576
    return-object v1

    .line 2579
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_15
    return-object p0
.end method

.method private static hasResizeChange(I)Z
    .registers 2
    .param p0, "change"  # I

    .line 3545
    and-int/lit16 v0, p0, 0xd80

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isHomeIntent(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"  # Landroid/content/Intent;

    .line 1279
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 1280
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1281
    const-string v0, "android.intent.category.SECONDARY_HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1282
    :cond_1d
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_34

    .line 1283
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_34

    .line 1284
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    .line 1279
    :goto_35
    return v1
.end method

.method static isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p0, "token"  # Landroid/os/IBinder;

    .line 2639
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2640
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method private static isInVrUiMode(Landroid/content/res/Configuration;)Z
    .registers 3
    .param p0, "config"  # Landroid/content/res/Configuration;

    .line 3835
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static isMainIntent(Landroid/content/Intent;)Z
    .registers 3
    .param p0, "intent"  # Landroid/content/Intent;

    .line 1288
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    .line 1289
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1290
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_2c

    .line 1291
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 1292
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 1288
    :goto_2d
    return v1
.end method

.method private isProcessRunning()Z
    .registers 5

    .line 3680
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3681
    .local v0, "proc":Lcom/android/server/wm/WindowProcessController;
    if-nez v0, :cond_17

    .line 3682
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    .line 3684
    :cond_17
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method private static isResizeOnlyChange(I)Z
    .registers 2
    .param p0, "change"  # I

    .line 3540
    and-int/lit16 v0, p0, -0xd81

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static isResolverActivity(Ljava/lang/String;)Z
    .registers 2
    .param p0, "className"  # Ljava/lang/String;

    .line 945
    const-class v0, Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 946
    const/4 v0, 0x1

    return v0

    .line 949
    :cond_e
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z
    .registers 6
    .param p1, "changes"  # I
    .param p2, "lastReportedConfig"  # Landroid/content/res/Configuration;

    .line 3502
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3503
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    const/16 v1, 0x200

    if-ne p1, v1, :cond_14

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 3504
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eq v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 3503
    :goto_15
    return v1
.end method

.method private resolveSizeCompatModeConfiguration(Landroid/content/res/Configuration;)V
    .registers 16
    .param p1, "newParentConfiguration"  # Landroid/content/res/Configuration;

    .line 3003
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3004
    .local v0, "resolvedConfig":Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3006
    .local v1, "resolvedBounds":Landroid/graphics/Rect;
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 3007
    .local v2, "parentRotation":I
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    .line 3008
    .local v3, "parentOrientation":I
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 3009
    .local v4, "orientation":I
    if-eq v4, v3, :cond_22

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isConfigurationCompatible(Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 3012
    move v4, v3

    goto :goto_3a

    .line 3014
    :cond_22
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_33

    .line 3016
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    if-ne v5, v2, :cond_33

    .line 3018
    return-void

    .line 3020
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v5

    .line 3021
    .local v5, "requestedOrientation":I
    if-eqz v5, :cond_3a

    .line 3022
    move v4, v5

    .line 3026
    .end local v5  # "requestedOrientation":I
    :cond_3a
    :goto_3a
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 3028
    const/4 v5, 0x0

    .line 3029
    .local v5, "useParentOverrideBounds":Z
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 3030
    .local v6, "displayBounds":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 3031
    .local v7, "containingAppBounds":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v8}, Lcom/android/server/wm/TaskRecord;->handlesOrientationChangeFromDescendant()Z

    move-result v8

    if-eqz v8, :cond_53

    .line 3034
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    invoke-virtual {v8, v6, v4}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getDisplayBoundsByOrientation(Landroid/graphics/Rect;I)V

    goto :goto_70

    .line 3041
    :cond_53
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v8}, Lcom/android/server/wm/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    .line 3042
    .local v8, "baseOrientation":I
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    invoke-virtual {v9, v6, v8}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getDisplayBoundsByOrientation(Landroid/graphics/Rect;I)V

    .line 3043
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v9, v7, p0, v6, v8}, Lcom/android/server/wm/TaskRecord;->computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V

    .line 3044
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    move v5, v9

    .line 3048
    .end local v8  # "baseOrientation":I
    :goto_70
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 3049
    .local v8, "containingOffsetX":I
    iget v9, v7, Landroid/graphics/Rect;->top:I

    .line 3050
    .local v9, "containingOffsetY":I
    if-nez v5, :cond_79

    .line 3051
    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3053
    :cond_79
    const/4 v10, -0x1

    if-eq v2, v10, :cond_85

    .line 3055
    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v10, v10, v2

    invoke-static {v7, v6, v10}, Lcom/android/server/wm/TaskRecord;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3059
    :cond_85
    invoke-direct {p0, v1, v7}, Lcom/android/server/wm/ActivityRecord;->computeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3060
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_97

    .line 3062
    if-eqz v5, :cond_92

    move-object v10, v7

    goto :goto_93

    :cond_92
    move-object v10, v6

    :goto_93
    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_a1

    .line 3066
    :cond_97
    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v8

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 3067
    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v9

    iput v10, v1, Landroid/graphics/Rect;->top:I

    .line 3069
    :goto_a1
    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget-object v11, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    invoke-virtual {v10, v0, p1, v11}, Lcom/android/server/wm/TaskRecord;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 3074
    iget-object v10, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 3075
    .local v10, "resolvedAppBounds":Landroid/graphics/Rect;
    iget-object v11, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 3076
    .local v11, "parentAppBounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-ge v12, v13, :cond_c5

    .line 3077
    iget v12, v1, Landroid/graphics/Rect;->right:I

    iget v13, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    iput v12, v1, Landroid/graphics/Rect;->right:I

    .line 3081
    :cond_c5
    iget v12, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v13, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v12, v13, :cond_cf

    .line 3082
    iget v12, p1, Landroid/content/res/Configuration;->orientation:I

    iput v12, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3084
    :cond_cf
    return-void
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/ActivityRecord;
    .registers 36
    .param p0, "in"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3753
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3754
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 3755
    .local v2, "persistentState":Landroid/os/PersistableBundle;
    const/4 v3, 0x0

    .line 3756
    .local v3, "launchedFromUid":I
    const/4 v4, 0x0

    .line 3757
    .local v4, "launchedFromPackage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3758
    .local v5, "resolvedType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3759
    .local v6, "componentSpecified":Z
    const/4 v7, 0x0

    .line 3760
    .local v7, "userId":I
    const-wide/16 v8, -0x1

    .line 3761
    .local v8, "createTime":J
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 3762
    .local v10, "outerDepth":I
    new-instance v11, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v11}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 3764
    .local v11, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    .local v12, "attrNdx":I
    :goto_1a
    const-string v14, "ActivityTaskManager"

    const-string v15, "TaskPersister"

    if-ltz v12, :cond_c1

    .line 3765
    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 3766
    .local v13, "attrName":Ljava/lang/String;
    move-object/from16 v17, v1

    .end local v1  # "intent":Landroid/content/Intent;
    .local v17, "intent":Landroid/content/Intent;
    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 3767
    .local v1, "attrValue":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v2

    .end local v2  # "persistentState":Landroid/os/PersistableBundle;
    .local v18, "persistentState":Landroid/os/PersistableBundle;
    const-string v2, "ActivityRecord: attribute name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    const-string v0, "id"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3770
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto/16 :goto_b6

    .line 3771
    :cond_56
    const-string v0, "launched_from_uid"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 3772
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    .end local v3  # "launchedFromUid":I
    .local v0, "launchedFromUid":I
    goto :goto_b6

    .line 3773
    .end local v0  # "launchedFromUid":I
    .restart local v3  # "launchedFromUid":I
    :cond_64
    const-string v0, "launched_from_package"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 3774
    move-object v0, v1

    move-object v4, v0

    .end local v4  # "launchedFromPackage":Ljava/lang/String;
    .local v0, "launchedFromPackage":Ljava/lang/String;
    goto :goto_b6

    .line 3775
    .end local v0  # "launchedFromPackage":Ljava/lang/String;
    .restart local v4  # "launchedFromPackage":Ljava/lang/String;
    :cond_6f
    const-string v0, "resolved_type"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 3776
    move-object v0, v1

    move-object v5, v0

    .end local v5  # "resolvedType":Ljava/lang/String;
    .local v0, "resolvedType":Ljava/lang/String;
    goto :goto_b6

    .line 3777
    .end local v0  # "resolvedType":Ljava/lang/String;
    .restart local v5  # "resolvedType":Ljava/lang/String;
    :cond_7a
    const-string v0, "component_specified"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 3778
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move v6, v0

    .end local v6  # "componentSpecified":Z
    .local v0, "componentSpecified":Z
    goto :goto_b6

    .line 3779
    .end local v0  # "componentSpecified":Z
    .restart local v6  # "componentSpecified":Z
    :cond_88
    const-string v0, "user_id"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 3780
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .end local v7  # "userId":I
    .local v0, "userId":I
    goto :goto_b6

    .line 3781
    .end local v0  # "userId":I
    .restart local v7  # "userId":I
    :cond_96
    const-string v0, "task_description_"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 3782
    invoke-virtual {v11, v13, v1}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b6

    .line 3784
    :cond_a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ActivityRecord attribute="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    .end local v1  # "attrValue":Ljava/lang/String;
    .end local v13  # "attrName":Ljava/lang/String;
    :goto_b6
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    const/4 v13, 0x1

    goto/16 :goto_1a

    .end local v17  # "intent":Landroid/content/Intent;
    .end local v18  # "persistentState":Landroid/os/PersistableBundle;
    .local v1, "intent":Landroid/content/Intent;
    .restart local v2  # "persistentState":Landroid/os/PersistableBundle;
    :cond_c1
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v1  # "intent":Landroid/content/Intent;
    .end local v2  # "persistentState":Landroid/os/PersistableBundle;
    .restart local v17  # "intent":Landroid/content/Intent;
    .restart local v18  # "persistentState":Landroid/os/PersistableBundle;
    move-object/from16 v0, v17

    .line 3789
    .end local v12  # "attrNdx":I
    .end local v17  # "intent":Landroid/content/Intent;
    .end local v18  # "persistentState":Landroid/os/PersistableBundle;
    .local v0, "intent":Landroid/content/Intent;
    .restart local v2  # "persistentState":Landroid/os/PersistableBundle;
    :goto_c7
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v12, v1

    const/4 v13, 0x1

    .local v12, "event":I
    if-eq v1, v13, :cond_15b

    const/4 v1, 0x3

    if-ne v12, v1, :cond_dd

    .line 3790
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-lt v1, v10, :cond_d9

    goto :goto_dd

    :cond_d9
    move/from16 v32, v10

    goto/16 :goto_15d

    .line 3791
    :cond_dd
    :goto_dd
    const/4 v1, 0x2

    if-ne v12, v1, :cond_157

    .line 3792
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3794
    .local v1, "name":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v32, v10

    .end local v10  # "outerDepth":I
    .local v32, "outerDepth":I
    const-string v10, "ActivityRecord: START_TAG name="

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3795
    const-string v10, "intent"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11b

    .line 3796
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v0

    .line 3798
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ActivityRecord: intent="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_153

    .line 3799
    :cond_11b
    const-string v10, "persistable_bundle"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13c

    .line 3800
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 3801
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ActivityRecord: persistentState="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_153

    .line 3804
    :cond_13c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restoreActivity: unexpected name="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3807
    .end local v1  # "name":Ljava/lang/String;
    :goto_153
    move/from16 v10, v32

    goto/16 :goto_c7

    .line 3791
    .end local v32  # "outerDepth":I
    .restart local v10  # "outerDepth":I
    :cond_157
    move/from16 v32, v10

    .end local v10  # "outerDepth":I
    .restart local v32  # "outerDepth":I
    goto/16 :goto_c7

    .line 3789
    .end local v32  # "outerDepth":I
    .restart local v10  # "outerDepth":I
    :cond_15b
    move/from16 v32, v10

    .line 3810
    .end local v10  # "outerDepth":I
    .restart local v32  # "outerDepth":I
    :goto_15d
    if-eqz v0, :cond_1c8

    .line 3814
    move-object/from16 v1, p1

    iget-object v10, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3815
    .local v10, "service":Lcom/android/server/wm/ActivityTaskManagerService;
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 3816
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    .line 3815
    move-object/from16 v14, p1

    move-object v15, v0

    move-object/from16 v16, v5

    move/from16 v19, v7

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v13

    .line 3817
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v13, :cond_1a9

    .line 3821
    new-instance v33, Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v14, v33

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 3823
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object v15, v10

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    move-object/from16 v22, v13

    move/from16 v27, v6

    move-object/from16 v29, p1

    invoke-direct/range {v14 .. v31}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    .line 3827
    .local v14, "r":Lcom/android/server/wm/ActivityRecord;
    iput-object v2, v14, Lcom/android/server/wm/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 3828
    iput-object v11, v14, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 3829
    iput-wide v8, v14, Lcom/android/server/wm/ActivityRecord;->createTime:J

    .line 3831
    return-object v14

    .line 3818
    .end local v14  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1a9
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreActivity resolver error. Intent="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " resolvedType="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 3811
    .end local v10  # "service":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local v13  # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_1c8
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restoreActivity error intent="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 7
    .param p1, "displayId"  # I
    .param p2, "config"  # Landroid/content/res/Configuration;

    .line 696
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const-string v1, ", displayId="

    const-string v2, "ActivityTaskManager"

    if-nez v0, :cond_2d

    .line 697
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_2c

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t report activity moved to display - client not running, activityRecord="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_2c
    return-void

    .line 703
    :cond_2d
    :try_start_2d
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_35

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_57

    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reporting activity moved to display, activityRecord="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_57
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 708
    invoke-static {p1, p2}, Landroid/app/servertransaction/MoveToDisplayItem;->obtain(ILandroid/content/res/Configuration;)Landroid/app/servertransaction/MoveToDisplayItem;

    move-result-object v3

    .line 707
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_6c} :catch_6d

    .line 711
    goto :goto_6e

    .line 709
    :catch_6d
    move-exception v0

    .line 712
    :goto_6e
    return-void
.end method

.method private scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "config"  # Landroid/content/res/Configuration;

    .line 715
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_21

    .line 716
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t report activity configuration update - client not running, activityRecord="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_20
    return-void

    .line 722
    :cond_21
    :try_start_21
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending new config to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", config: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 726
    invoke-static {p1}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    move-result-object v3

    .line 725
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_56} :catch_57

    .line 729
    goto :goto_58

    .line 727
    :catch_57
    move-exception v0

    .line 730
    :goto_58
    return-void
.end method

.method private scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "overrideConfig"  # Landroid/content/res/Configuration;

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-eqz v3, :cond_1a

    .line 776
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isMzWindowMode()Z

    move-result v3

    if-nez v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    invoke-static {v3, p1}, Landroid/app/servertransaction/MultiWindowModeChangeItem;->obtain(ZLandroid/content/res/Configuration;)Landroid/app/servertransaction/MultiWindowModeChangeItem;

    move-result-object v3

    .line 775
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 780
    goto :goto_24

    .line 778
    :catch_23
    move-exception v0

    .line 781
    :goto_24
    return-void
.end method

.method private schedulePictureInPictureModeChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "overrideConfig"  # Landroid/content/res/Configuration;

    .line 812
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 813
    invoke-static {v3, p1}, Landroid/app/servertransaction/PipModeChangeItem;->obtain(ZLandroid/content/res/Configuration;)Landroid/app/servertransaction/PipModeChangeItem;

    move-result-object v3

    .line 812
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 817
    goto :goto_19

    .line 815
    :catch_18
    move-exception v0

    .line 818
    :goto_19
    return-void
.end method

.method private setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .registers 11
    .param p1, "componentSpecified"  # Z
    .param p2, "launchedFromUid"  # I
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "options"  # Landroid/app/ActivityOptions;
    .param p5, "sourceRecord"  # Lcom/android/server/wm/ActivityRecord;

    .line 1323
    const/4 v0, 0x0

    .line 1324
    .local v0, "activityType":I
    const/4 v1, 0x4

    if-eqz p1, :cond_a

    invoke-direct {p0, p2, p5}, Lcom/android/server/wm/ActivityRecord;->canLaunchHomeActivity(ILcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1325
    :cond_a
    invoke-direct {p0, p3}, Lcom/android/server/wm/ActivityRecord;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1327
    const/4 v0, 0x2

    .line 1329
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v2, v1, :cond_24

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5e

    .line 1332
    :cond_24
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_5e

    .line 1334
    :cond_2a
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui.recents"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1335
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RecentTasks;->isRecentsComponent(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_5d

    .line 1337
    :cond_4b
    if-eqz p4, :cond_5e

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v2

    if-ne v2, v1, :cond_5e

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1338
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityRecord;->canLaunchAssistActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1339
    const/4 v0, 0x4

    goto :goto_5e

    .line 1336
    :cond_5d
    :goto_5d
    const/4 v0, 0x3

    .line 1341
    :cond_5e
    :goto_5e
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1342
    return-void
.end method

.method private setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "global"  # Landroid/content/res/Configuration;
    .param p2, "override"  # Landroid/content/res/Configuration;

    .line 2810
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2811
    return-void
.end method

.method private setOrientation(IZ)V
    .registers 6
    .param p1, "requestedOrientation"  # I
    .param p2, "freezeScreenIfNeeded"  # Z

    .line 2757
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    .line 2758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    return-void

    .line 2764
    :cond_1d
    if-eqz p2, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/view/IApplicationToken$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 2765
    .local v0, "binder":Landroid/os/IBinder;
    :goto_29
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1, v0, p0}, Lcom/android/server/wm/AppWindowToken;->setOrientation(ILandroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 2769
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 2770
    invoke-virtual {v2}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 2769
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2771
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    .line 2773
    :cond_42
    return-void
.end method

.method private shouldPauseActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "activeActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 2162
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z
    .registers 11
    .param p1, "changes"  # I
    .param p2, "changesConfig"  # Landroid/content/res/Configuration;

    .line 3464
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-nez v0, :cond_19

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_19

    .line 3465
    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v0

    if-nez v0, :cond_19

    .line 3466
    and-int/lit8 p1, p1, -0x41

    .line 3467
    and-int/lit8 p1, p1, -0x21

    .line 3468
    const-string v0, "ActivityTaskManager"

    const-string v1, "no relaunch Activity in navigation change"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v0

    .line 3473
    .local v0, "configChanged":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z

    move-result v1

    .line 3479
    .local v1, "onlyVrUiModeChanged":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_33

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_33

    if-eqz v1, :cond_33

    .line 3482
    or-int/lit16 v0, v0, 0x200

    .line 3485
    :cond_33
    not-int v2, v0

    and-int/2addr v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3b

    move v2, v3

    goto :goto_3c

    :cond_3b
    move v2, v4

    .line 3486
    .local v2, "shouldRelaunch":Z
    :goto_3c
    if-eqz v2, :cond_61

    .line 3487
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 3488
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_61

    .line 3489
    iget-object v6, v5, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    iget-object v6, v6, Lcom/android/server/wm/TaskStack;->mDeferHideDimTokens:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    .line 3490
    invoke-virtual {v6, p0}, Lcom/android/server/wm/FlymeWindowManagerInternal;->shouldRelaunchOnWindowChange(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_5d

    goto :goto_5f

    :cond_5d
    move v3, v4

    goto :goto_60

    :cond_5f
    :goto_5f
    nop

    :goto_60
    move v2, v3

    .line 3493
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_61
    return v2
.end method

.method private static startingWindowStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"  # I

    .line 447
    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 453
    :cond_1a
    const-string v0, "STARTING_WINDOW_REMOVED"

    return-object v0

    .line 451
    :cond_1d
    const-string v0, "STARTING_WINDOW_SHOWN"

    return-object v0

    .line 449
    :cond_20
    const-string v0, "STARTING_WINDOW_NOT_SHOWN"

    return-object v0
.end method

.method private supportsResizeableMultiWindow()Z
    .registers 2

    .line 1451
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 1452
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 1451
    :goto_1f
    return v0
.end method

.method private updateOverrideConfiguration()V
    .registers 6

    .line 2924
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 2925
    .local v0, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldUseSizeCompatMode()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2926
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-eqz v1, :cond_d

    .line 2928
    return-void

    .line 2930
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2931
    .local v1, "parentConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->isConfigurationCompatible(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 2935
    return-void

    .line 2943
    :cond_22
    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 2944
    iget v2, v1, Landroid/content/res/Configuration;->colorMode:I

    iput v2, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 2945
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2946
    iget v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x3f

    iput v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2951
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2954
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 2955
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v2, :cond_4a

    iget-object v3, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_4a

    .line 2956
    new-instance v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    iget-object v4, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v3, v4}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2958
    .end local v1  # "parentConfig":Landroid/content/res/Configuration;
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_4a
    goto :goto_73

    .line 2962
    :cond_4b
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->computeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2964
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 2967
    return-void

    .line 2970
    :cond_69
    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 2971
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2974
    :goto_73
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2975
    return-void
.end method

.method private updateTaskDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"  # Ljava/lang/CharSequence;

    .line 1862
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iput-object p1, v0, Lcom/android/server/wm/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 1863
    return-void
.end method


# virtual methods
.method final activityStoppedLocked(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .registers 12
    .param p1, "newIcicle"  # Landroid/os/Bundle;
    .param p2, "newPersistentState"  # Landroid/os/PersistableBundle;
    .param p3, "description"  # Ljava/lang/CharSequence;

    .line 2320
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2321
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_e

    move v1, v4

    goto :goto_f

    :cond_e
    move v1, v3

    .line 2322
    .local v1, "isStopping":Z
    :goto_f
    const/16 v2, 0x68

    const-string v5, "ActivityTaskManager"

    if-nez v1, :cond_35

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_35

    .line 2323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2325
    return-void

    .line 2327
    :cond_35
    if-eqz p2, :cond_40

    .line 2328
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 2329
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v6, v7, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 2331
    :cond_40
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v6, :cond_62

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saving icicle of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :cond_62
    if-eqz p1, :cond_6d

    .line 2336
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 2337
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    .line 2338
    iput v3, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 2339
    invoke-direct {p0, p3}, Lcom/android/server/wm/ActivityRecord;->updateTaskDescription(Ljava/lang/CharSequence;)V

    .line 2341
    :cond_6d
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v3, :cond_c1

    .line 2342
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_8e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving to STOPPED: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " (stop complete)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    :cond_8e
    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2344
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 2345
    if-eqz v1, :cond_9e

    .line 2346
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v3, "activityStoppedLocked"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2349
    :cond_9e
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_a5

    .line 2350
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->notifyAppStopped()V

    .line 2353
    :cond_a5
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_ad

    .line 2354
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    goto :goto_c1

    .line 2356
    :cond_ad
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v2, :cond_bc

    .line 2357
    const-string v2, "stop-config"

    invoke-virtual {v0, p0, v4, v2}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    .line 2358
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    goto :goto_c1

    .line 2360
    :cond_bc
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/RootActivityContainer;->updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V

    .line 2364
    :cond_c1
    :goto_c1
    return-void
.end method

.method addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 13
    .param p1, "from"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resultWho"  # Ljava/lang/String;
    .param p3, "requestCode"  # I
    .param p4, "resultCode"  # I
    .param p5, "resultData"  # Landroid/content/Intent;

    .line 1601
    new-instance v6, Lcom/android/server/wm/ActivityResult;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityResult;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1603
    .local v0, "r":Lcom/android/server/wm/ActivityResult;
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v1, :cond_16

    .line 1604
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1606
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1607
    return-void
.end method

.method addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z
    .registers 35
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "theme"  # I
    .param p3, "compatInfo"  # Landroid/content/res/CompatibilityInfo;
    .param p4, "nonLocalizedLabel"  # Ljava/lang/CharSequence;
    .param p5, "labelRes"  # I
    .param p6, "icon"  # I
    .param p7, "logo"  # I
    .param p8, "windowFlags"  # I
    .param p9, "transferFrom"  # Landroid/os/IBinder;
    .param p10, "newTask"  # Z
    .param p11, "taskSwitch"  # Z
    .param p12, "processRunning"  # Z
    .param p13, "allowTaskSnapshot"  # Z
    .param p14, "activityCreated"  # Z
    .param p15, "fromRecents"  # Z

    .line 1190
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_5b

    .line 1191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppStartingWindow: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " transferFrom="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p9

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " newTask="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p10

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " taskSwitch="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p11

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " processRunning="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " allowTaskSnapshot="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p13

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 1190
    :cond_5b
    move-object/from16 v2, p1

    move-object/from16 v15, p9

    move/from16 v14, p10

    move/from16 v13, p11

    move/from16 v12, p12

    move/from16 v11, p13

    .line 1196
    :goto_67
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    const-string v4, "WindowManager"

    if-nez v1, :cond_85

    .line 1197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    return v3

    .line 1200
    :cond_85
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_a2

    .line 1202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to start a window to an app token not having attached to any task: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return v3

    .line 1206
    :cond_a2
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    invoke-virtual/range {v3 .. v18}, Lcom/android/server/wm/AppWindowToken;->addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z

    move-result v1

    return v1
.end method

.method applyOptionsLocked()V
    .registers 3

    .line 1688
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_38

    .line 1689
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_38

    .line 1690
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying options for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked(Landroid/app/ActivityOptions;Landroid/content/Intent;)V

    .line 1692
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-nez v0, :cond_35

    .line 1693
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked(Z)V

    goto :goto_38

    .line 1696
    :cond_35
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->clearAllPendingOptions()V

    .line 1699
    :cond_38
    :goto_38
    return-void
.end method

.method applyOptionsLocked(Landroid/app/ActivityOptions;Landroid/content/Intent;)V
    .registers 21
    .param p1, "pendingOptions"  # Landroid/app/ActivityOptions;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 1705
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    .line 1706
    .local v1, "animationType":I
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1707
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_198

    .line 1792
    :pswitch_13  #0x5, 0x6, 0x7, 0xa
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyOptionsLocked: Unknown animationType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_197

    .line 1786
    :pswitch_2b  #0xd
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1787
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v5

    .line 1786
    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 1788
    goto/16 :goto_197

    .line 1782
    :pswitch_36  #0xc
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1783
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionStartCrossProfileApps()V

    .line 1784
    goto/16 :goto_197

    .line 1716
    :pswitch_3d  #0xb
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1717
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    .line 1718
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    .line 1716
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    .line 1719
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_197

    .line 1720
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    .line 1721
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    .line 1722
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 1723
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1720
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_197

    .line 1754
    :pswitch_7c  #0x8, 0x9
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v6

    .line 1755
    .local v6, "specs":[Landroid/view/AppTransitionAnimationSpec;
    nop

    .line 1756
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v7

    .line 1757
    .local v7, "specsFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    const/16 v8, 0x8

    if-eqz v7, :cond_98

    .line 1758
    iget-object v9, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1759
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v10

    if-ne v1, v8, :cond_92

    goto :goto_93

    :cond_92
    move v4, v5

    .line 1758
    :goto_93
    invoke-virtual {v9, v7, v10, v4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    goto/16 :goto_197

    .line 1761
    :cond_98
    const/16 v9, 0x9

    if-ne v1, v9, :cond_ad

    if-eqz v6, :cond_ad

    .line 1763
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1764
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v8

    .line 1765
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationFinishedListener()Landroid/os/IRemoteCallback;

    move-result-object v9

    .line 1763
    invoke-virtual {v4, v6, v8, v9, v5}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    goto/16 :goto_197

    .line 1767
    :cond_ad
    iget-object v10, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1768
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/GraphicBuffer;

    move-result-object v11

    .line 1769
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v13

    .line 1770
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v15

    .line 1771
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v16

    if-ne v1, v8, :cond_cc

    move/from16 v17, v4

    goto :goto_ce

    :cond_cc
    move/from16 v17, v5

    .line 1767
    :goto_ce
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V

    .line 1773
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_197

    .line 1774
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    .line 1775
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    .line 1776
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    .line 1777
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v4, v5, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1774
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_197

    .line 1739
    .end local v6  # "specs":[Landroid/view/AppTransitionAnimationSpec;
    .end local v7  # "specsFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :pswitch_fb  #0x3, 0x4
    const/4 v6, 0x3

    if-ne v1, v6, :cond_100

    move v12, v4

    goto :goto_101

    :cond_100
    move v12, v5

    .line 1740
    .local v12, "scaleUp":Z
    :goto_101
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    .line 1741
    .local v4, "buffer":Landroid/graphics/GraphicBuffer;
    iget-object v7, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1742
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v10

    .line 1743
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v11

    .line 1741
    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V

    .line 1745
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_197

    if-eqz v4, :cond_197

    .line 1746
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v6

    .line 1747
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    .line 1748
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    .line 1749
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1746
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_197

    .line 1727
    .end local v4  # "buffer":Landroid/graphics/GraphicBuffer;
    .end local v12  # "scaleUp":Z
    :pswitch_142  #0x2
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1728
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    .line 1729
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    .line 1727
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionScaleUp(IIII)V

    .line 1730
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_197

    .line 1731
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    .line 1732
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    .line 1733
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 1734
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1731
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_197

    .line 1709
    :pswitch_180  #0x1
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1710
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1711
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v6

    .line 1712
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v7

    .line 1713
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v8

    .line 1709
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 1714
    goto :goto_197

    .line 1790
    :pswitch_196  #0x0
    nop

    .line 1795
    :cond_197
    :goto_197
    return-void

    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_196  #00000000
        :pswitch_180  #00000001
        :pswitch_142  #00000002
        :pswitch_fb  #00000003
        :pswitch_fb  #00000004
        :pswitch_13  #00000005
        :pswitch_13  #00000006
        :pswitch_13  #00000007
        :pswitch_7c  #00000008
        :pswitch_7c  #00000009
        :pswitch_13  #0000000a
        :pswitch_3d  #0000000b
        :pswitch_36  #0000000c
        :pswitch_2b  #0000000d
    .end packed-switch
.end method

.method attachedToProcess()Z
    .registers 2

    .line 1132
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method canBeLaunchedOnDisplay(I)Z
    .registers 6
    .param p1, "displayId"  # I

    .line 1464
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method canResumeByCompat()Z
    .registers 2

    .line 3926
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->updateTopResumingActivityInProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method canShowWhenLocked()Z
    .registers 6

    .line 3864
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLockedInner()Z

    move-result v0

    .line 3865
    .local v0, "showWhenLocked":Z
    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_2b

    .line 3866
    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    .line 3867
    .local v1, "wmsExtInternal":Lcom/android/server/wm/FlymeWindowManagerInternal;
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTopFullscreenWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3868
    .local v2, "windowState":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_1f

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    goto :goto_20

    :cond_1f
    move-object v3, v2

    :goto_20
    move-object v2, v3

    .line 3869
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wm/FlymeWindowManagerInternal;->shouldFinishWithAccessControl(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Z)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v0, v3

    .line 3871
    .end local v1  # "wmsExtInternal":Lcom/android/server/wm/FlymeWindowManagerInternal;
    .end local v2  # "windowState":Lcom/android/server/wm/WindowState;
    :cond_2b
    return v0
.end method

.method canTurnScreenOn()Z
    .registers 4

    .line 3914
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3915
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    .line 3916
    invoke-virtual {v0, p0, v2, v2}, Lcom/android/server/wm/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 3915
    :goto_13
    return v2
.end method

.method changeWindowTranslucency(Z)Z
    .registers 6
    .param p1, "toOpaque"  # Z

    .line 1367
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-ne v0, p1, :cond_6

    .line 1368
    const/4 v0, 0x0

    return v0

    .line 1372
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget v1, v0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    const/4 v2, 0x1

    if-eqz p1, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    const/4 v3, -0x1

    :goto_10
    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    .line 1374
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    .line 1375
    return v2
.end method

.method checkEnterPictureInPictureState(Ljava/lang/String;Z)Z
    .registers 12
    .param p1, "caller"  # Ljava/lang/String;
    .param p2, "beforeStopping"  # Z

    .line 1475
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1476
    return v1

    .line 1480
    :cond_8
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1481
    return v1

    .line 1485
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->shouldDisableNonVrUiLocked()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1486
    return v1

    .line 1489
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isKeyguardLocked()Z

    move-result v0

    .line 1490
    .local v0, "isKeyguardLocked":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1491
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskModeState()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_29

    move v2, v3

    goto :goto_2a

    :cond_29
    move v2, v1

    .line 1492
    .local v2, "isCurrentAppLocked":Z
    :goto_2a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    .line 1493
    .local v4, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v4, :cond_38

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->hasPinnedStack()Z

    move-result v5

    if-eqz v5, :cond_38

    move v5, v3

    goto :goto_39

    :cond_38
    move v5, v1

    .line 1496
    .local v5, "hasPinnedStack":Z
    :goto_39
    if-nez v0, :cond_3f

    if-nez v2, :cond_3f

    move v6, v3

    goto :goto_40

    :cond_3f
    move v6, v1

    .line 1499
    .local v6, "isNotLockedOrOnKeyguard":Z
    :goto_40
    if-eqz p2, :cond_45

    if-eqz v5, :cond_45

    .line 1500
    return v1

    .line 1503
    :cond_45
    sget-object v7, Lcom/android/server/wm/ActivityRecord$1;->$SwitchMap$com$android$server$wm$ActivityStack$ActivityState:[I

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v3, :cond_70

    const/4 v8, 0x2

    if-eq v7, v8, :cond_66

    const/4 v8, 0x3

    if-eq v7, v8, :cond_66

    const/4 v8, 0x4

    if-eq v7, v8, :cond_5b

    goto :goto_65

    .line 1520
    :cond_5b
    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v7, :cond_65

    .line 1521
    if-eqz v6, :cond_64

    if-nez v5, :cond_64

    move v1, v3

    :cond_64
    return v1

    .line 1524
    :cond_65
    :goto_65
    return v1

    .line 1514
    :cond_66
    if-eqz v6, :cond_6f

    if-nez v5, :cond_6f

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v7, :cond_6f

    move v1, v3

    :cond_6f
    return v1

    .line 1507
    :cond_70
    if-nez v2, :cond_79

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-nez v7, :cond_78

    if-nez p2, :cond_79

    :cond_78
    move v1, v3

    :cond_79
    return v1
.end method

.method clearOptionsLocked()V
    .registers 2

    .line 1802
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked(Z)V

    .line 1803
    return-void
.end method

.method clearOptionsLocked(Z)V
    .registers 3
    .param p1, "withAbort"  # Z

    .line 1806
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_9

    .line 1807
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 1809
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1810
    return-void
.end method

.method clearVoiceSessionLocked()V
    .registers 2

    .line 2706
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 2708
    return-void
.end method

.method completeResumeLocked()V
    .registers 6

    .line 2265
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    .line 2266
    .local v0, "wasVisible":Z
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 2267
    if-nez v0, :cond_c

    .line 2269
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 2271
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 2272
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2273
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 2274
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 2276
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 2277
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget-object v4, v4, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 2279
    :try_start_2d
    new-instance v3, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3c} :catch_3d

    .line 2282
    goto :goto_54

    .line 2280
    :catch_3d
    move-exception v1

    .line 2281
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    .end local v1  # "e":Ljava/lang/Exception;
    :cond_54
    :goto_54
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_5d

    .line 2285
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 2289
    :cond_5d
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2291
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2293
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 2294
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2295
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2300
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 2301
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getCpuTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_88

    .line 2303
    :cond_84
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    .line 2306
    :goto_88
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 2308
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 2309
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v3, "turnScreenOnFlag"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    goto :goto_9b

    .line 2314
    :cond_98
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    .line 2316
    :goto_9b
    return-void
.end method

.method continueLaunchTickingLocked()Z
    .registers 6

    .line 2377
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2378
    return v1

    .line 2381
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2382
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_11

    .line 2383
    return v1

    .line 2386
    :cond_11
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2387
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2388
    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2389
    const/4 v2, 0x1

    return v2
.end method

.method createAppWindow(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIZZ)Lcom/android/server/wm/AppWindowToken;
    .registers 31
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"  # Landroid/view/IApplicationToken;
    .param p3, "voiceInteraction"  # Z
    .param p4, "dc"  # Lcom/android/server/wm/DisplayContent;
    .param p5, "inputDispatchingTimeoutNanos"  # J
    .param p7, "fullscreen"  # Z
    .param p8, "showForAllUsers"  # Z
    .param p9, "targetSdk"  # I
    .param p10, "orientation"  # I
    .param p11, "rotationAnimationHint"  # I
    .param p12, "launchTaskBehind"  # Z
    .param p13, "alwaysFocusable"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1218
    new-instance v16, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v15, p0

    iget-object v3, v15, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v0 .. v15}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Landroid/content/ComponentName;ZLcom/android/server/wm/DisplayContent;JZZIIIZZLcom/android/server/wm/ActivityRecord;)V

    return-object v16
.end method

.method createAppWindowToken()V
    .registers 19

    .line 1136
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_10e

    .line 1141
    const/4 v0, 0x1

    iput-boolean v0, v14, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 1144
    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1146
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->updateOverrideConfiguration()V

    .line 1149
    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2}, Landroid/view/IApplicationToken$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    iput-object v1, v14, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 1150
    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    const-string v15, "ActivityTaskManager"

    if-eqz v1, :cond_41

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to add existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d2

    .line 1154
    :cond_41
    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v13

    .line 1155
    .local v13, "container":Lcom/android/server/wm/Task;
    if-eqz v13, :cond_f5

    .line 1158
    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v3, v14, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v4, 0x0

    if-eqz v3, :cond_58

    move v3, v0

    goto :goto_59

    :cond_58
    move v3, v4

    .line 1159
    :goto_59
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 1160
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    iget-boolean v8, v14, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    iget-object v9, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_71

    move v9, v0

    goto :goto_72

    :cond_71
    move v9, v4

    :goto_72
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iget v12, v14, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    iget-boolean v4, v14, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 1164
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysFocusable()Z

    move-result v16

    .line 1158
    move-object/from16 v0, p0

    move/from16 v17, v4

    move-object v4, v5

    move-wide v5, v6

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move/from16 v12, v17

    move-object/from16 v17, v15

    move-object v15, v13

    .end local v13  # "container":Lcom/android/server/wm/Task;
    .local v15, "container":Lcom/android/server/wm/Task;
    move/from16 v13, v16

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityRecord;->createAppWindow(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIZZ)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 1165
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    const v1, 0x7fffffff

    if-nez v0, :cond_a5

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_cd

    .line 1166
    :cond_a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAppToken: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_cd
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    .line 1173
    .end local v15  # "container":Lcom/android/server/wm/Task;
    :goto_d2
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/TaskRecord;->addActivityToTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 1175
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->mComponmentState:I

    if-eqz v0, :cond_e8

    .line 1176
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    iget v1, v0, Lcom/android/server/wm/AppWindowToken;->mKeyguardlsitActivity:I

    iget-object v2, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->mComponmentState:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/AppWindowToken;->mKeyguardlsitActivity:I

    .line 1182
    :cond_e8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v0

    iput-boolean v0, v14, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    iput-boolean v0, v14, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 1184
    return-void

    .line 1156
    .restart local v13  # "container":Lcom/android/server/wm/Task;
    :cond_f5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAppWindowToken: invalid task ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    .end local v13  # "container":Lcom/android/server/wm/Task;
    :cond_10e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App Window Token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already created for r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V
    .registers 20
    .param p1, "callingUid"  # I
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "referrer"  # Ljava/lang/String;

    .line 1645
    move-object/from16 v1, p0

    const-string v2, "Exception thrown sending new intent to "

    const-string v3, "ActivityTaskManager"

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1646
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v8

    iget v9, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1645
    move/from16 v5, p1

    move-object/from16 v7, p2

    invoke-interface/range {v4 .. v9}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V

    .line 1647
    new-instance v0, Lcom/android/internal/content/ReferrerIntent;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct {v0, v4, v5}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    move-object v6, v0

    .line 1648
    .local v6, "rintent":Lcom/android/internal/content/ReferrerIntent;
    const/4 v7, 0x1

    .line 1649
    .local v7, "unsent":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v9

    goto :goto_35

    :cond_34
    move v0, v8

    :goto_35
    move v10, v0

    .line 1655
    .local v10, "isTopActivityWhileSleeping":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v0, v11, :cond_44

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v0, v11, :cond_44

    if-eqz v10, :cond_98

    .line 1656
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1658
    :try_start_4a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1659
    .local v0, "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v14, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v15, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v14, v15, :cond_67

    move v8, v9

    .line 1664
    :cond_67
    invoke-static {v0, v8}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v8

    .line 1663
    invoke-virtual {v11, v12, v13, v8}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_6e} :catch_84
    .catch Ljava/lang/NullPointerException; {:try_start_4a .. :try_end_6e} :catch_70

    .line 1665
    const/4 v7, 0x0

    .line 1670
    .end local v0  # "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    :goto_6f
    goto :goto_98

    .line 1668
    :catch_70
    move-exception v0

    .line 1669
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_98

    .line 1666
    .end local v0  # "e":Ljava/lang/NullPointerException;
    :catch_84
    move-exception v0

    .line 1667
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0  # "e":Landroid/os/RemoteException;
    goto :goto_6f

    .line 1672
    :cond_98
    :goto_98
    if-eqz v7, :cond_9d

    .line 1673
    invoke-direct {v1, v6}, Lcom/android/server/wm/ActivityRecord;->addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V

    .line 1675
    :cond_9d
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 461
    .local v0, "now":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "packageName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 462
    const-string v2, " processName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchedFromUid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 464
    const-string v2, " launchedFromPackage="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    const-string v2, " userId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 466
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "app="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 467
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "frontOfTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 469
    const-string v2, " task="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 470
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "taskAffinity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mActivityComponent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_e2

    .line 474
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "baseDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    .line 476
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "resDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    :cond_ba
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "dataDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v2, :cond_e2

    .line 480
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "splitDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    :cond_e2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "stateNotNeeded="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 485
    const-string v2, " componentSpecified="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 486
    const-string v2, " mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    if-eqz v2, :cond_11a

    .line 489
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "rootVoiceInteraction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 491
    :cond_11a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "compat="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 492
    const-string v2, " labelRes=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 493
    const-string v2, " icon=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 494
    const-string v2, " theme=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->theme:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastReportedConfigurations:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/MergedConfiguration;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "CurrentConfiguration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 499
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1b1

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RequestedOverrideConfiguration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    :cond_1b1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1da

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ResolvedOverrideConfiguration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    :cond_1da
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_1fb

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    :cond_1fb
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_203

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v2, :cond_224

    .line 511
    :cond_203
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "resultTo="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 512
    const-string v2, " resultWho="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 513
    const-string v2, " resultCode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 515
    :cond_224
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const-string v3, "null"

    if-eqz v2, :cond_319

    .line 516
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "iconFilename":Ljava/lang/String;
    if-nez v2, :cond_240

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_240

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 518
    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v4

    if-eqz v4, :cond_319

    .line 519
    :cond_240
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "taskDescription:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 520
    const-string v4, " label=\""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 521
    const-string v4, "\""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 522
    const-string v4, " icon="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_284

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_285

    .line 524
    :cond_284
    move-object v4, v3

    .line 522
    :goto_285
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    const-string v4, " iconResource="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 526
    const-string v4, " iconFilename="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 527
    const-string v4, " primaryColor="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " backgroundColor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 530
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " statusBarColor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " navigationBarColor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 534
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    .end local v2  # "iconFilename":Ljava/lang/String;
    :cond_319
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_32a

    .line 538
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "results="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 540
    :cond_32a
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    const-string v4, "  - "

    if-eqz v2, :cond_37e

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_37e

    .line 541
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending Results:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_344
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 543
    .local v5, "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-eqz v5, :cond_359

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_35a

    :cond_359
    const/4 v6, 0x0

    .line 544
    .local v6, "pir":Lcom/android/server/am/PendingIntentRecord;
    :goto_35a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 545
    if-nez v6, :cond_366

    .line 546
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37d

    .line 548
    :cond_366
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 549
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 551
    .end local v5  # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v6  # "pir":Lcom/android/server/am/PendingIntentRecord;
    :goto_37d
    goto :goto_344

    .line 553
    :cond_37e
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v2, :cond_3b9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3b9

    .line 554
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending New Intents:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_392
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3b9

    .line 556
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 557
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 558
    if-nez v6, :cond_3ae

    .line 559
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3b6

    .line 561
    :cond_3ae
    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7, v5, v7}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    .end local v6  # "intent":Landroid/content/Intent;
    :goto_3b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_392

    .line 565
    .end local v2  # "i":I
    :cond_3b9
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_3ca

    .line 566
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "pendingOptions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 568
    :cond_3ca
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v2, :cond_3d1

    .line 569
    invoke-virtual {v2, p1, p2, v5}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 571
    :cond_3d1
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v2, :cond_3d8

    .line 572
    invoke-virtual {v2, p1, p2}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 574
    :cond_3d8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchFailed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 575
    const-string v2, " launchCount="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 576
    const-string v2, " lastLaunchTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 577
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-string v7, "0"

    if-nez v6, :cond_402

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_405

    .line 578
    :cond_402
    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 579
    :goto_405
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 580
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "haveState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 581
    const-string v2, " icicle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 582
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "state="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 583
    const-string v2, " stopped="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 584
    const-string v2, " delayedResume="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 585
    const-string v2, " finishing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 586
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "keysPaused="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 587
    const-string v2, " inHistory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 588
    const-string v2, " visible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 589
    const-string v2, " sleeping="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 590
    const-string v2, " idle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 591
    const-string v2, " mStartingWindowState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 592
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->startingWindowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fullscreen="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 594
    const-string v2, " noDisplay="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 595
    const-string v2, " immersive="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 596
    const-string v2, " launchMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 597
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "frozenBeforeDestroy="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 598
    const-string v2, " forceNewConfig="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 599
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_4f3

    .line 602
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    const-string v2, "requestedVrComponent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 606
    :cond_4f3
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4fd

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_51f

    .line 607
    :cond_4fd
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " nowVisible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 608
    const-string v2, " lastVisibleTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 609
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_519

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_51c

    .line 610
    :cond_519
    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 611
    :goto_51c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 613
    :cond_51f
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v2, :cond_53c

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mDeferHidingClient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    :cond_53c
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-nez v2, :cond_544

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    if-eqz v2, :cond_55f

    .line 617
    :cond_544
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "deferRelaunchUntilPaused="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 618
    const-string v2, " configChangeFlags="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 619
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    :cond_55f
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v2, :cond_570

    .line 622
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "connections="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 624
    :cond_570
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_63b

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastReportedMultiWindowMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLastReportedPictureInPictureMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_5f4

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "supportsPictureInPicture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "supportsEnterPipOnTaskSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    :cond_5f4
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_618

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "maxAspectRatio="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    :cond_618
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_63b

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "minAspectRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    :cond_63b
    return-void
.end method

.method ensureActivityConfiguration(IZ)Z
    .registers 4
    .param p1, "globalChanges"  # I
    .param p2, "preserveWindow"  # Z

    .line 3273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    move-result v0

    return v0
.end method

.method ensureActivityConfiguration(IZZ)Z
    .registers 15
    .param p1, "globalChanges"  # I
    .param p2, "preserveWindow"  # Z
    .param p3, "ignoreVisibility"  # Z

    .line 3293
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3294
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    const/4 v2, 0x1

    const-string v3, "ActivityTaskManager"

    if-eqz v1, :cond_28

    .line 3295
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_13

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_27

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping config check (will change): "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    :cond_27
    return v2

    .line 3301
    :cond_28
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_4d

    .line 3302
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_35

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_49

    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Configuration doesn\'t matter in finishing "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    :cond_49
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 3305
    return v2

    .line 3308
    :cond_4d
    if-nez p3, :cond_7e

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v1, v5, :cond_61

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v1, v5, :cond_61

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 3309
    :cond_61
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_69

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_7d

    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping config check invisible: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    :cond_7d
    return v2

    .line 3314
    :cond_7e
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_86

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_9a

    :cond_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ensuring correct configuration: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    :cond_9a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    .line 3318
    .local v1, "newDisplayId":I
    iget v5, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    if-eq v5, v1, :cond_a4

    move v5, v2

    goto :goto_a5

    :cond_a4
    move v5, v4

    .line 3319
    .local v5, "displayChanged":Z
    :goto_a5
    if-eqz v5, :cond_a9

    .line 3320
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    .line 3323
    :cond_a9
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->updateOverrideConfiguration()V

    .line 3329
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v7}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3330
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_e6

    iget-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-nez v6, :cond_e6

    if-nez v5, :cond_e6

    .line 3331
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_d1

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_e5

    :cond_d1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configuration & display unchanged in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    :cond_e5
    return v2

    .line 3341
    :cond_e6
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v6}, Lcom/android/server/wm/ActivityRecord;->getConfigurationChanges(Landroid/content/res/Configuration;)I

    move-result v6

    .line 3344
    .local v6, "changes":I
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 3346
    .local v7, "newMergedOverrideConfig":Landroid/content/res/Configuration;
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 3348
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_11c

    .line 3352
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_107

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_11b

    :cond_107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping config check for initializing activity: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    :cond_11b
    return v2

    .line 3357
    :cond_11c
    if-nez v6, :cond_148

    iget-boolean v8, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-nez v8, :cond_148

    .line 3358
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_12a

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_13e

    :cond_12a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Configuration no differences in "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    :cond_13e
    if-eqz v5, :cond_144

    .line 3363
    invoke-direct {p0, v1, v7}, Lcom/android/server/wm/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V

    goto :goto_147

    .line 3365
    :cond_144
    invoke-direct {p0, v7}, Lcom/android/server/wm/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3367
    :goto_147
    return v2

    .line 3370
    :cond_148
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v8, :cond_150

    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v8, :cond_170

    :cond_150
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Configuration changes for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", allChanges="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3372
    invoke-static {v6}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3370
    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    :cond_170
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v8

    if-nez v8, :cond_198

    .line 3377
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v8, :cond_17e

    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v8, :cond_192

    :cond_17e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Configuration doesn\'t matter not running "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    :cond_192
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 3380
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 3381
    return v2

    .line 3385
    :cond_198
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v8, :cond_1a0

    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v8, :cond_1e0

    :cond_1a0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking to restart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": changed=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3387
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", handles=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 3388
    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mLastReportedConfiguration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3385
    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    :cond_1e0
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v6, v8}, Lcom/android/server/wm/ActivityRecord;->shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z

    move-result v8

    if-nez v8, :cond_1fa

    iget-boolean v8, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-eqz v8, :cond_1ed

    goto :goto_1fa

    .line 3444
    :cond_1ed
    if-eqz v5, :cond_1f3

    .line 3445
    invoke-direct {p0, v1, v7}, Lcom/android/server/wm/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V

    goto :goto_1f6

    .line 3447
    :cond_1f3
    invoke-direct {p0, v7}, Lcom/android/server/wm/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3449
    :goto_1f6
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 3451
    return v2

    .line 3393
    :cond_1fa
    :goto_1fa
    iget v8, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    or-int/2addr v8, v6

    iput v8, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 3394
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v8, p1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 3395
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 3396
    invoke-static {v6}, Lcom/android/server/wm/ActivityRecord;->isResizeOnlyChange(I)Z

    move-result v8

    and-int/2addr p2, v8

    .line 3397
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v8

    not-int v8, v8

    and-int/2addr v8, v6

    invoke-static {v8}, Lcom/android/server/wm/ActivityRecord;->hasResizeChange(I)Z

    move-result v8

    .line 3398
    .local v8, "hasResizeChange":Z
    if-eqz v8, :cond_22e

    .line 3399
    nop

    .line 3400
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v9

    .line 3401
    .local v9, "isDragResizing":Z
    if-eqz v9, :cond_22a

    const/4 v10, 0x2

    goto :goto_22b

    .line 3402
    :cond_22a
    move v10, v2

    :goto_22b
    iput v10, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 3403
    .end local v9  # "isDragResizing":Z
    goto :goto_230

    .line 3404
    :cond_22e
    iput v4, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 3406
    :goto_230
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v9

    if-nez v9, :cond_259

    .line 3407
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_23e

    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_252

    :cond_23e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Config is destroying non-running "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    :cond_252
    const-string v3, "config"

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    goto/16 :goto_2ee

    .line 3410
    :cond_259
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_280

    .line 3413
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v4, :cond_267

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_27b

    :cond_267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Config is skipping already pausing "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    :cond_27b
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 3416
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    .line 3417
    return v2

    .line 3418
    :cond_280
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_2cf

    .line 3422
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_28e

    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_2a2

    :cond_28e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Config is relaunching resumed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    :cond_2a2
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v9, :cond_2cb

    iget-boolean v9, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v9, :cond_2cb

    .line 3426
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Config is relaunching resumed invisible activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " called by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x4

    .line 3427
    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3426
    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    :cond_2cb
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_2ee

    .line 3431
    :cond_2cf
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v2, :cond_2d7

    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v2, :cond_2eb

    :cond_2d7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Config is relaunching non-resumed "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    :cond_2eb
    invoke-virtual {p0, v4, p2}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(ZZ)V

    .line 3437
    :goto_2ee
    return v4
.end method

.method finishLaunchTickingLocked()V
    .registers 4

    .line 2393
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 2394
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2395
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_11

    .line 2396
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2398
    :cond_11
    return-void
.end method

.method getActivityStack()Lcom/android/server/wm/ActivityStack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">()TT;"
        }
    .end annotation

    .line 1354
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 3
    .param p1, "index"  # I

    .line 828
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getChildCount()I
    .registers 2

    .line 823
    const/4 v0, 0x0

    return v0
.end method

.method getDisplay()Lcom/android/server/wm/ActivityDisplay;
    .registers 3

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1363
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method getDisplayId()I
    .registers 3

    .line 2656
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2657
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_8

    .line 2658
    const/4 v1, -0x1

    return v1

    .line 2660
    :cond_8
    iget v1, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    return v1
.end method

.method getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;
    .registers 2

    .line 1798
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->forTargetActivity()Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method getOrientation()I
    .registers 2

    .line 2776
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_9

    .line 2777
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    return v0

    .line 2780
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getOrientationIgnoreVisibility()I

    move-result v0

    return v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 833
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method getRequestedConfigurationOrientation()I
    .registers 4

    .line 2822
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrientation()I

    move-result v0

    .line 2823
    .local v0, "screenOrientation":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_19

    .line 2825
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 2826
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_18

    .line 2827
    iget-object v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getNaturalOrientation()I

    move-result v2

    return v2

    .line 2829
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_18
    goto :goto_34

    :cond_19
    const/16 v1, 0xe

    if-ne v0, v1, :cond_24

    .line 2831
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    return v1

    .line 2832
    :cond_24
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2833
    const/4 v1, 0x2

    return v1

    .line 2834
    :cond_2c
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2835
    const/4 v1, 0x1

    return v1

    .line 2837
    :cond_34
    :goto_34
    const/4 v1, 0x0

    return v1
.end method

.method getStackId()I
    .registers 2

    .line 1358
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method getState()Lcom/android/server/wm/ActivityStack$ActivityState;
    .registers 2

    .line 1964
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    return-object v0
.end method

.method getTaskRecord()Lcom/android/server/wm/TaskRecord;
    .registers 2

    .line 837
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    return-object v0
.end method

.method getTurnScreenOnFlag()Z
    .registers 2

    .line 3930
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    return v0
.end method

.method getUid()I
    .registers 2

    .line 3839
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;
    .registers 3

    .line 1592
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-nez v0, :cond_f

    .line 1593
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-direct {v0, v1, p0}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 1595
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    return-object v0
.end method

.method handleAlreadyVisible()Z
    .registers 5

    .line 2232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 2234
    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_19

    .line 2235
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    .line 2238
    :cond_19
    goto :goto_1b

    .line 2237
    :catch_1a
    move-exception v1

    .line 2239
    :goto_1b
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0
.end method

.method hasProcess()Z
    .registers 2

    .line 1128
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method inSizeCompatMode()Z
    .registers 15

    .line 2845
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldUseSizeCompatMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2846
    return v1

    .line 2848
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2849
    .local v0, "resolvedConfig":Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2850
    .local v2, "resolvedAppBounds":Landroid/graphics/Rect;
    if-nez v2, :cond_15

    .line 2852
    return v1

    .line 2855
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 2859
    .local v3, "parentConfig":Landroid/content/res/Configuration;
    iget v4, v3, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, v0, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v6, 0x1

    if-eq v4, v5, :cond_25

    .line 2860
    return v6

    .line 2863
    :cond_25
    iget-object v4, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 2864
    .local v4, "parentAppBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 2865
    .local v5, "appWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 2866
    .local v7, "appHeight":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 2867
    .local v8, "parentAppWidth":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 2868
    .local v9, "parentAppHeight":I
    if-ne v8, v5, :cond_40

    if-ne v9, v7, :cond_40

    .line 2870
    return v1

    .line 2872
    :cond_40
    if-le v8, v5, :cond_45

    if-le v9, v7, :cond_45

    .line 2874
    return v6

    .line 2876
    :cond_45
    if-lt v8, v5, :cond_88

    if-ge v9, v7, :cond_4a

    goto :goto_88

    .line 2883
    :cond_4a
    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    const/high16 v12, 0x3f000000  # 0.5f

    if-lez v10, :cond_6a

    .line 2884
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v12

    .line 2885
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v10, v13

    .line 2886
    .local v10, "aspectRatio":F
    iget-object v13, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v13, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    cmpl-float v13, v10, v13

    if-ltz v13, :cond_6a

    .line 2888
    return v1

    .line 2891
    .end local v10  # "aspectRatio":F
    :cond_6a
    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_87

    .line 2894
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v12

    .line 2895
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 2896
    .local v10, "parentAspectRatio":F
    iget-object v11, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_87

    .line 2898
    return v1

    .line 2901
    .end local v10  # "parentAspectRatio":F
    :cond_87
    return v6

    .line 2878
    :cond_88
    :goto_88
    return v6
.end method

.method isAccessApplication()Z
    .registers 3

    .line 4060
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meizu.intent.action.CONFIRM_PASSWORD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isAlwaysFocusable()Z
    .registers 3

    .line 1537
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isAppInfoGame()I
    .registers 4

    .line 2454
    const/4 v0, 0x0

    .line 2455
    .local v0, "isGame":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_17

    .line 2456
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13

    goto :goto_15

    .line 2457
    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    move v0, v1

    .line 2459
    :cond_17
    return v0
.end method

.method isConfigurationCompatible(Landroid/content/res/Configuration;)Z
    .registers 7
    .param p1, "config"  # Landroid/content/res/Configuration;

    .line 3144
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrientation()I

    move-result v0

    .line 3145
    .local v0, "orientation":I
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v3, :cond_11

    .line 3147
    return v2

    .line 3149
    :cond_11
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1d

    .line 3151
    return v2

    .line 3153
    :cond_1d
    return v3
.end method

.method final isDestroyable()Z
    .registers 4

    .line 2664
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2d

    .line 2668
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2669
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eq p0, v2, :cond_2c

    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq p0, v2, :cond_2c

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    if-eqz v2, :cond_2c

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v2, :cond_25

    goto :goto_2c

    .line 2674
    :cond_25
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v2, :cond_2a

    .line 2676
    return v1

    .line 2678
    :cond_2a
    const/4 v1, 0x1

    return v1

    .line 2672
    :cond_2c
    :goto_2c
    return v1

    .line 2666
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2d
    :goto_2d
    return v1
.end method

.method isFocusable()Z
    .registers 3

    .line 1404
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysFocusable()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/RootActivityContainer;->isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z

    move-result v0

    return v0
.end method

.method isInHistory()Z
    .registers 2

    .line 1389
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    return v0
.end method

.method isInStackLocked()Z
    .registers 3

    .line 1393
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1394
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public isInterestingToUserLocked()Z
    .registers 3

    .line 2601
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method isNoHistory()Z
    .registers 3

    .line 3720
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method isNonResizableOrForcedResizable()Z
    .registers 4

    .line 1415
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method isPersistable()Z
    .registers 3

    .line 1398
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1d

    .line 1400
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 1398
    :goto_1e
    return v0
.end method

.method isResizeable()Z
    .registers 2

    .line 1408
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method isResolverActivity()Z
    .registers 2

    .line 953
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isResolverOrChildActivity()Z
    .registers 5

    .line 957
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 958
    return v1

    .line 962
    :cond_c
    :try_start_c
    const-class v0, Lcom/android/internal/app/MzResolverActivity;

    const-class v2, Ljava/lang/Object;

    .line 963
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 962
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 964
    const/4 v0, 0x1

    return v0

    .line 967
    :cond_26
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    const-class v2, Ljava/lang/Object;

    .line 968
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 967
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_3c} :catch_3d

    return v0

    .line 969
    :catch_3d
    move-exception v0

    .line 970
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    return v1
.end method

.method isResumedActivityOnDisplay()Z
    .registers 3

    .line 3942
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 3943
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p0, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method final isSleeping()Z
    .registers 3

    .line 1635
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1636
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v1

    goto :goto_11

    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v1

    :goto_11
    return v1
.end method

.method isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z
    .registers 3
    .param p1, "state"  # Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 1971
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z
    .registers 4
    .param p1, "state1"  # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p2, "state2"  # Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 1978
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_9

    if-ne p2, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z
    .registers 5
    .param p1, "state1"  # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p2, "state2"  # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p3, "state3"  # Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 1985
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_b

    if-eq p2, v0, :cond_b

    if-ne p3, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z
    .registers 6
    .param p1, "state1"  # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p2, "state2"  # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p3, "state3"  # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p4, "state4"  # Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 1993
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_d

    if-eq p2, v0, :cond_d

    if-eq p3, v0, :cond_d

    if-ne p4, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method isTopRunningActivity()Z
    .registers 2

    .line 3934
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public keyDispatchingTimedOut(Ljava/lang/String;I)Z
    .registers 15
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "windowPid"  # I

    .line 2546
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2547
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2548
    .local v1, "anrActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2549
    .local v2, "anrApp":Lcom/android/server/wm/WindowProcessController;
    nop

    .line 2550
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    if-eq v3, p2, :cond_25

    const/4 v3, -0x1

    if-ne p2, v3, :cond_23

    goto :goto_25

    :cond_23
    move v3, v5

    goto :goto_26

    :cond_25
    :goto_25
    move v3, v4

    .line 2551
    .local v3, "windowFromSameProcessAsActivity":Z
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2553
    if-eqz v3, :cond_41

    .line 2554
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, v2, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v10, 0x0

    move-object v11, p1

    invoke-virtual/range {v4 .. v11}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 2560
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p2, v5, p1}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_50

    goto :goto_51

    :cond_50
    move v4, v5

    :goto_51
    return v4

    .line 2551
    .end local v1  # "anrActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "anrApp":Lcom/android/server/wm/WindowProcessController;
    .end local v3  # "windowFromSameProcessAsActivity":Z
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$restartProcessIfVisible$0$ActivityRecord()V
    .registers 6

    .line 3653
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3654
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3655
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v1

    const/4 v2, 0x7

    if-gt v1, v2, :cond_18

    goto :goto_2c

    .line 3658
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3659
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3660
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const-string v4, "resetConfig"

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 3661
    return-void

    .line 3656
    .end local v1  # "wpc":Lcom/android/server/wm/WindowProcessController;
    :cond_2c
    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3659
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 8
    .param p1, "activeActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 2129
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldResumeActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const-string v1, "TAG_VISIBILITY"

    if-eqz v0, :cond_2a

    .line 2130
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_20

    .line 2131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume visible activity, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 2135
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldPauseActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_87

    .line 2136
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_49

    .line 2137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pause visible activity, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_49
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v1, "makeVisibleIfNeeded"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2143
    :try_start_50
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v5, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 2144
    invoke-static {v4, v2, v5, v2}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v4

    .line 2143
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_69} :catch_6a

    .line 2148
    goto :goto_87

    .line 2146
    :catch_6a
    move-exception v0

    .line 2147
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown sending pause: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2150
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_87
    :goto_87
    return v2
.end method

.method makeClientVisible()V
    .registers 5

    .line 2106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 2108
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x1

    .line 2109
    invoke-static {v3}, Landroid/app/servertransaction/WindowVisibilityItem;->obtain(Z)Landroid/app/servertransaction/WindowVisibilityItem;

    move-result-object v3

    .line 2108
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2111
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2116
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v1, "makeClientVisible"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_34} :catch_35

    .line 2120
    :cond_34
    goto :goto_52

    .line 2118
    :catch_35
    move-exception v0

    .line 2119
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending visibility update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2121
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_52
    return-void
.end method

.method makeFinishingLocked()V
    .registers 2

    .line 1578
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    .line 1579
    return-void

    .line 1581
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1582
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_f

    .line 1583
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 1586
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_1a

    .line 1587
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1589
    :cond_1a
    return-void
.end method

.method makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 8
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reportToClient"  # Z

    .line 2071
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "ActivityTaskManager"

    if-eq v0, v1, :cond_77

    if-ne p0, p1, :cond_b

    goto :goto_77

    .line 2078
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making visible and scheduling visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2082
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_27
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_35

    .line 2083
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2084
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2086
    :cond_35
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 2087
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    .line 2088
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowProcessController;->postPendingUiCleanMsg(Z)V

    .line 2089
    if-eqz p2, :cond_47

    .line 2090
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->makeClientVisible()V

    goto :goto_49

    .line 2092
    :cond_47
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 2095
    :goto_49
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2096
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_57} :catch_58

    .line 2100
    goto :goto_73

    .line 2097
    :catch_58
    move-exception v1

    .line 2099
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown making visible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2101
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_73
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()Z

    .line 2102
    return-void

    .line 2072
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_77
    :goto_77
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_a1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not making visible, r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " starting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :cond_a1
    return-void
.end method

.method public mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 3
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;

    .line 2407
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->isCrashing()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->isNotResponding()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method moveFocusableActivityToTop(Ljava/lang/String;)Z
    .registers 8
    .param p1, "reason"  # Ljava/lang/String;

    .line 1542
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ActivityTaskManager"

    if-nez v0, :cond_22

    .line 1543
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v0, :cond_21

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveActivityStackToFront: unfocusable activity="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_21
    return v1

    .line 1549
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 1550
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1551
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_49

    .line 1552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveActivityStackToFront: invalid task or stack: activity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    return v1

    .line 1557
    :cond_49
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, p0, :cond_6a

    .line 1558
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v4, :cond_69

    .line 1559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveActivityStackToFront: already on top, activity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :cond_69
    return v1

    .line 1564
    :cond_6a
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v1, :cond_82

    .line 1565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveActivityStackToFront: activity="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_82
    invoke-virtual {v3, p1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V

    .line 1570
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne v1, p0, :cond_92

    .line 1572
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1574
    :cond_92
    const/4 v1, 0x1

    return v1
.end method

.method notifyAppResumed(Z)V
    .registers 4
    .param p1, "wasStopped"  # Z

    .line 1997
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to notify resumed of non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    return-void

    .line 2002
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->notifyAppResumed(Z)V

    .line 2003
    return-void
.end method

.method notifyUnknownVisibilityLaunched()V
    .registers 3

    .line 2009
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_13

    .line 2010
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_13

    .line 2011
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 2012
    invoke-virtual {v0, v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyLaunched(Lcom/android/server/wm/AppWindowToken;)V

    .line 2015
    :cond_13
    return-void
.end method

.method public okToShowLocked()Z
    .registers 4

    .line 2586
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2587
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEncryptionAware()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2588
    return v1

    .line 2591
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2592
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2593
    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    goto :goto_35

    :cond_34
    :goto_34
    const/4 v1, 0x1

    .line 2591
    :goto_35
    return v1
.end method

.method onAnimationFinished()V
    .registers 5

    .line 2517
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->allResumedActivitiesIdle()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2518
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->isStoppingNoHistoryActivity()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 2529
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->processStoppingActivitiesLocked(Lcom/android/server/wm/ActivityRecord;ZZ)Ljava/util/ArrayList;

    goto :goto_29

    .line 2523
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2524
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 2532
    :cond_29
    :goto_29
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 3088
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3090
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isMzWindowMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3091
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 3097
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->seq:I

    if-eq v0, v1, :cond_1d

    .line 3098
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onMergedOverrideConfigurationChanged()V

    .line 3106
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_22

    .line 3107
    return-void

    .line 3109
    :cond_22
    nop

    .line 3110
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3111
    .local v0, "appWindowTokenRequestedOverrideConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->seq:I

    if-eq v1, v2, :cond_3f

    .line 3112
    nop

    .line 3113
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->seq:I

    iput v1, v0, Landroid/content/res/Configuration;->seq:I

    .line 3114
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->onMergedOverrideConfigurationChanged()V

    .line 3117
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 3118
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    if-nez v1, :cond_46

    .line 3119
    return-void

    .line 3121
    :cond_46
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v2, :cond_4e

    .line 3123
    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityDisplay;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_74

    .line 3124
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldUseSizeCompatMode()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 3127
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getLastOverrideConfigurationChanges()I

    move-result v2

    .line 3128
    .local v2, "displayChanges":I
    const v3, 0x20000480

    .line 3130
    .local v3, "orientationChanges":I
    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->hasResizeChange(I)Z

    move-result v4

    if-eqz v4, :cond_6a

    const v4, 0x20000480

    and-int v5, v2, v4

    if-eq v5, v4, :cond_6a

    const/4 v4, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v4, 0x0

    .line 3136
    .local v4, "hasNonOrienSizeChanged":Z
    :goto_6b
    if-nez v4, :cond_71

    and-int/lit16 v5, v2, 0x1000

    if-eqz v5, :cond_74

    .line 3137
    :cond_71
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 3140
    .end local v2  # "displayChanges":I
    .end local v3  # "orientationChanges":I
    .end local v4  # "hasNonOrienSizeChanged":Z
    :cond_74
    :goto_74
    return-void
.end method

.method public onStartingWindowDrawn(J)V
    .registers 6
    .param p1, "timestamp"  # J

    .line 2466
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2467
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    .line 2468
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    .line 2467
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyStartingWindowDrawn(IJ)V

    .line 2469
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2470
    return-void

    .line 2469
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onWindowsDrawn(ZJ)V
    .registers 14
    .param p1, "drawn"  # Z
    .param p2, "timestamp"  # J

    .line 2474
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2475
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mDrawn:Z

    .line 2476
    if-nez p1, :cond_11

    .line 2477
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2479
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2480
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyWindowsDrawn(IJ)Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    move-result-object v1

    .line 2481
    .local v1, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    const/4 v2, -0x1

    if-eqz v1, :cond_25

    iget v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    goto :goto_26

    :cond_25
    move v3, v2

    .line 2482
    .local v3, "windowsDrawnDelayMs":I
    :goto_26
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->getLaunchState()I

    move-result v2

    :cond_2c
    move v9, v2

    .line 2483
    .local v9, "launchState":I
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v5, 0x0

    int-to-long v7, v3

    move-object v6, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 2485
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 2486
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    .line 2487
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-eqz v2, :cond_46

    .line 2488
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/TaskRecord;->hasBeenVisible:Z

    .line 2490
    .end local v1  # "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .end local v3  # "windowsDrawnDelayMs":I
    .end local v9  # "launchState":I
    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_11 .. :try_end_47} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2491
    return-void

    .line 2490
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onWindowsGone()V
    .registers 5

    .line 2509
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2510
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_22

    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "windowsGone(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    :cond_22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 2512
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->launching:Z

    .line 2513
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2514
    return-void

    .line 2513
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onWindowsVisible()V
    .registers 5

    .line 2495
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2496
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 2497
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_27

    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "windowsVisibleLocked(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_27
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v1, :cond_3c

    .line 2499
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 2500
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->launching:Z

    .line 2501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    .line 2502
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->scheduleAppGcsLocked()V

    .line 2504
    :cond_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2505
    return-void

    .line 2504
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method pauseKeyDispatchingLocked()V
    .registers 3

    .line 1836
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_20

    .line 1837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 1841
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1842
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 1846
    :cond_20
    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 4
    .param p1, "definition"  # Landroid/view/RemoteAnimationDefinition;

    .line 3947
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    .line 3948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to register remote animations with non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    return-void

    .line 3952
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 3953
    return-void
.end method

.method relaunchActivityLocked(ZZ)V
    .registers 11
    .param p1, "andResume"  # Z
    .param p2, "preserveWindow"  # Z

    .line 3550
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSuppressResizeConfigChanges:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    .line 3551
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 3552
    return-void

    .line 3555
    :cond_c
    const/4 v0, 0x0

    .line 3556
    .local v0, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v2, 0x0

    .line 3557
    .local v2, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p1, :cond_14

    .line 3558
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3559
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3561
    :cond_14
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v4, "ActivityTaskManager"

    if-eqz v3, :cond_4e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Relaunching: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with results="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " newIntents="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " andResume="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " preserveWindow="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    :cond_4e
    if-eqz p1, :cond_53

    const/16 v3, 0x7543

    goto :goto_55

    .line 3566
    :cond_53
    const/16 v3, 0x7544

    :goto_55
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget v7, v7, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 3567
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 3565
    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3569
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 3572
    :try_start_83
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_8b

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_bb

    :cond_8b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3573
    if-eqz p1, :cond_9a

    const-string v5, "RESUMED"

    goto :goto_9c

    :cond_9a
    const-string v5, "PAUSED"

    :goto_9c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Relaunching "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " callers="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x6

    .line 3574
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3572
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    :cond_bb
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 3576
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->activityRelaunchingLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 3577
    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    new-instance v5, Landroid/util/MergedConfiguration;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3579
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 3580
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 3577
    invoke-static {v0, v2, v3, v5, p2}, Landroid/app/servertransaction/ActivityRelaunchItem;->obtain(Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/servertransaction/ActivityRelaunchItem;

    move-result-object v3

    .line 3583
    .local v3, "callbackItem":Landroid/app/servertransaction/ClientTransactionItem;
    if-eqz p1, :cond_e9

    .line 3584
    nop

    .line 3585
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v5

    .line 3584
    invoke-static {v5}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v5

    .local v5, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_ed

    .line 3587
    .end local v5  # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :cond_e9
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v5

    .line 3589
    .restart local v5  # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :goto_ed
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v6, v7}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v6

    .line 3590
    .local v6, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v6, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 3591
    invoke-virtual {v6, v5}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 3592
    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_108
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_108} :catch_109

    .line 3598
    .end local v3  # "callbackItem":Landroid/app/servertransaction/ClientTransactionItem;
    .end local v5  # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v6  # "transaction":Landroid/app/servertransaction/ClientTransaction;
    goto :goto_117

    .line 3596
    :catch_109
    move-exception v3

    .line 3597
    .local v3, "e":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v5, :cond_112

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_117

    :cond_112
    const-string v5, "Relaunch failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3600
    .end local v3  # "e":Landroid/os/RemoteException;
    :cond_117
    :goto_117
    if-eqz p1, :cond_140

    .line 3601
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_131

    .line 3602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resumed after relaunch "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    :cond_131
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3605
    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3606
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_154

    .line 3608
    :cond_140
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 3609
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_14d

    .line 3610
    iget-object v4, v3, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3612
    :cond_14d
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "relaunchActivityLocked"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3615
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_154
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 3616
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 3617
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    .line 3618
    return-void
.end method

.method removeOrphanedStartingWindow(Z)V
    .registers 4
    .param p1, "behindFullscreenActivity"  # Z

    .line 2743
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    if-eqz p1, :cond_29

    .line 2744
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found orphaned starting window "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    :cond_21
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    .line 2746
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 2748
    :cond_29
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V
    .registers 7
    .param p1, "from"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resultWho"  # Ljava/lang/String;
    .param p3, "requestCode"  # I

    .line 1611
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_36

    .line 1612
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_36

    .line 1613
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityResult;

    .line 1614
    .local v1, "r":Lcom/android/server/wm/ActivityResult;
    iget-object v2, v1, Lcom/android/server/wm/ActivityResult;->mFrom:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, p1, :cond_19

    goto :goto_33

    .line 1615
    :cond_19
    iget-object v2, v1, Lcom/android/server/wm/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_20

    .line 1616
    if-eqz p2, :cond_29

    goto :goto_33

    .line 1618
    :cond_20
    iget-object v2, v1, Lcom/android/server/wm/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_33

    .line 1620
    :cond_29
    iget v2, v1, Lcom/android/server/wm/ActivityResult;->mRequestCode:I

    if-eq v2, p3, :cond_2e

    goto :goto_33

    .line 1622
    :cond_2e
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1612
    .end local v1  # "r":Lcom/android/server/wm/ActivityResult;
    :goto_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1625
    .end local v0  # "i":I
    :cond_36
    return-void
.end method

.method removeUriPermissionsLocked()V
    .registers 2

    .line 1829
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v0, :cond_a

    .line 1830
    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions()V

    .line 1831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 1833
    :cond_a
    return-void
.end method

.method removeWindowContainer()V
    .registers 4

    .line 1225
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    if-nez v0, :cond_9

    return-void

    .line 1227
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1228
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    .line 1227
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1229
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_3e

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeWindowContainer: Attempted to remove token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from non-existing displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1230
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    return-void

    .line 1235
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1236
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1}, Landroid/view/IApplicationToken$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->removeAppToken(Landroid/os/IBinder;)V

    .line 1237
    return-void
.end method

.method reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V
    .registers 8
    .param p1, "newTask"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "position"  # I
    .param p3, "reason"  # Ljava/lang/String;

    .line 1244
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reparent: Attempted to reparent non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    return-void

    .line 1248
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    .line 1249
    .local v0, "prevTask":Lcom/android/server/wm/TaskRecord;
    const-string v1, ": task="

    if-eq v0, p1, :cond_8d

    .line 1257
    if-eqz v0, :cond_6f

    if-eqz p1, :cond_6f

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-ne v2, v3, :cond_32

    goto :goto_6f

    .line 1258
    :cond_32
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is in a different stack ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStackId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") than the parent of r="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStackId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1263
    :cond_6f
    :goto_6f
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/AppWindowToken;->reparent(Lcom/android/server/wm/Task;I)V

    .line 1267
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1269
    .local v1, "prevStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-eq v1, v2, :cond_85

    .line 1270
    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 1273
    :cond_85
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/TaskRecord;->removeActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 1275
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/TaskRecord;->addActivityAtIndex(ILcom/android/server/wm/ActivityRecord;)V

    .line 1276
    return-void

    .line 1250
    .end local v1  # "prevStack":Lcom/android/server/wm/ActivityStack;
    :cond_8d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already the parent of r="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public reportFullyDrawnLocked(Z)V
    .registers 9
    .param p1, "restoredFromBundle"  # Z

    .line 2445
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2446
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionReportedDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    move-result-object v0

    .line 2447
    .local v0, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    if-eqz v0, :cond_1a

    .line 2448
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v2, 0x0

    iget v3, v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v4, v3

    .line 2449
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->getLaunchState()I

    move-result v6

    .line 2448
    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 2451
    :cond_1a
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newParentConfiguration"  # Landroid/content/res/Configuration;

    .line 2979
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-eqz v0, :cond_8

    .line 2980
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->resolveSizeCompatModeConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_1a

    .line 2982
    :cond_8
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2985
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2986
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskRecord;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2994
    :cond_1a
    :goto_1a
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    .line 2995
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    iput v1, v0, Landroid/content/res/Configuration;->seq:I

    .line 2996
    return-void
.end method

.method restartProcessIfVisible()V
    .registers 6

    .line 3627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request to restart process of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 3632
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 3633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 3634
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v0, :cond_2e

    .line 3637
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->updateOverrideConfiguration()V

    .line 3640
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_35

    .line 3641
    return-void

    .line 3645
    :cond_35
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "restartActivityProcess"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3647
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v0, :cond_7e

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    if-eqz v0, :cond_45

    goto :goto_7e

    .line 3665
    :cond_45
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_4c

    .line 3666
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V

    .line 3671
    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3672
    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/app/servertransaction/StopActivityItem;->obtain(ZI)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v4

    .line 3671
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_62} :catch_63

    .line 3675
    goto :goto_78

    .line 3673
    :catch_63
    move-exception v0

    .line 3674
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown during restart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3676
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_78
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleRestartTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 3677
    return-void

    .line 3651
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityRecord$rAbBM-9IZ5lau2L_lVdzsqLwNpA;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ActivityRecord$rAbBM-9IZ5lau2L_lVdzsqLwNpA;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3662
    return-void
.end method

.method resumeKeyDispatchingLocked()V
    .registers 3

    .line 1849
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_20

    .line 1850
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 1854
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1855
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 1859
    :cond_20
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3725
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3726
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "launched_from_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3727
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 3728
    const-string v2, "launched_from_package"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3730
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 3731
    const-string v2, "resolved_type"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3733
    :cond_29
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "component_specified"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3734
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3736
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_46

    .line 3737
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3740
    :cond_46
    const-string v0, "intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3741
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3742
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3744
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_6a

    .line 3745
    const-string v0, "persistable_bundle"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3746
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3747
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3749
    :cond_6a
    return-void
.end method

.method scheduleTopResumedActivityChanged(Z)Z
    .registers 7
    .param p1, "onTop"  # Z

    .line 733
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const-string v1, "ActivityTaskManager"

    const/4 v2, 0x0

    if-nez v0, :cond_22

    .line 734
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_21

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t report activity position update - client not running, activityRecord="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_21
    return v2

    .line 741
    :cond_22
    :try_start_22
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_42

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending position change to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", onTop: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_42
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 746
    invoke-static {p1}, Landroid/app/servertransaction/TopResumedActivityChangeItem;->obtain(Z)Landroid/app/servertransaction/TopResumedActivityChangeItem;

    move-result-object v4

    .line 745
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_57} :catch_5a

    .line 750
    nop

    .line 751
    const/4 v0, 0x1

    return v0

    .line 747
    :catch_5a
    move-exception v0

    .line 749
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method setDeferHidingClient(Z)V
    .registers 3
    .param p1, "deferHidingClient"  # Z

    .line 1866
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-ne v0, p1, :cond_5

    .line 1867
    return-void

    .line 1869
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    .line 1870
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v0, :cond_13

    .line 1873
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1875
    :cond_13
    return-void
.end method

.method setDisablePreviewScreenshots(Z)V
    .registers 4
    .param p1, "disable"  # Z

    .line 2784
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    .line 2785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to set disable screenshots of non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    return-void

    .line 2789
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->setDisablePreviewScreenshots(Z)V

    .line 2790
    return-void
.end method

.method setInheritShowWhenLocked(Z)V
    .registers 5
    .param p1, "inheritShowWhenLocked"  # Z

    .line 3849
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    .line 3850
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 3851
    return-void
.end method

.method setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 4
    .param p1, "config"  # Landroid/util/MergedConfiguration;

    .line 2805
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2806
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2805
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2807
    return-void
.end method

.method setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "config"  # Landroid/content/res/Configuration;

    .line 2797
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 2798
    return-void
.end method

.method setProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "proc"  # Lcom/android/server/wm/WindowProcessController;

    .line 1120
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1121
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1122
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    :goto_c
    if-ne v0, p0, :cond_13

    .line 1123
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskRecord;->setRootProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 1125
    :cond_13
    return-void
.end method

.method setRequestedOrientation(I)V
    .registers 4
    .param p1, "requestedOrientation"  # I

    .line 2751
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setOrientation(IZ)V

    .line 2752
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget v1, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityRequestedOrientationChanged(II)V

    .line 2754
    return-void
.end method

.method setShowWhenLocked(Z)V
    .registers 5
    .param p1, "showWhenLocked"  # Z

    .line 3843
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    .line 3844
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 3846
    return-void
.end method

.method setSizeConfigurations([I[I[I)V
    .registers 4
    .param p1, "horizontalSizeConfiguration"  # [I
    .param p2, "verticalSizeConfigurations"  # [I
    .param p3, "smallestSizeConfigurations"  # [I

    .line 690
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mHorizontalSizeConfigurations:[I

    .line 691
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mVerticalSizeConfigurations:[I

    .line 692
    iput-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mSmallestSizeConfigurations:[I

    .line 693
    return-void
.end method

.method setSleeping(Z)V
    .registers 3
    .param p1, "_sleeping"  # Z

    .line 2605
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setSleeping(ZZ)V

    .line 2606
    return-void
.end method

.method setSleeping(ZZ)V
    .registers 6
    .param p1, "_sleeping"  # Z
    .param p2, "force"  # Z

    .line 2609
    if-nez p2, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    if-ne v0, p1, :cond_7

    .line 2610
    return-void

    .line 2612
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2614
    :try_start_d
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, p1}, Landroid/app/IApplicationThread;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 2615
    if-eqz p1, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2616
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2618
    :cond_2b
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->sleeping:Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2d} :catch_2e

    .line 2621
    goto :goto_4b

    .line 2619
    :catch_2e
    move-exception v0

    .line 2620
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown when sleeping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2623
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    return-void
.end method

.method setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    .registers 11
    .param p1, "state"  # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p2, "reason"  # Ljava/lang/String;

    .line 1896
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State movement: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v0, :cond_53

    .line 1901
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State unchanged from:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :cond_52
    return-void

    .line 1905
    :cond_53
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 1907
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 1909
    .local v0, "parent":Lcom/android/server/wm/TaskRecord;
    if-eqz v0, :cond_5e

    .line 1910
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/TaskRecord;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1916
    :cond_5e
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v1, :cond_88

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result v1

    if-nez v1, :cond_88

    .line 1917
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_85

    .line 1918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to notify stopping on non-existing app token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    return-void

    .line 1922
    :cond_85
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->detachChildren()V

    .line 1925
    :cond_88
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "windowmode"

    const-string v3, "uid"

    const/4 v4, 0x1

    if-ne p1, v1, :cond_cd

    .line 1926
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 1927
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1930
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_a6

    .line 1931
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/AmsInjector;->moveForeground(I)V

    .line 1934
    :cond_a6
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_11b

    .line 1937
    new-instance v5, Landroid/scene/Scene;

    const v6, 0x1000004

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "AppResume"

    invoke-direct {v5, v6, v7, v1, v4}, Landroid/scene/Scene;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move-object v1, v5

    .line 1938
    .local v1, "scene":Landroid/scene/Scene;
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;I)Landroid/scene/Scene;

    .line 1939
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;I)Landroid/scene/Scene;

    .line 1940
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 1942
    .end local v1  # "scene":Landroid/scene/Scene;
    goto :goto_11b

    .line 1944
    :cond_cd
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v1, :cond_104

    .line 1945
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v5, 0x0

    invoke-virtual {v1, p0, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 1946
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v5, 0x2

    invoke-virtual {v1, p0, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1947
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_11b

    .line 1950
    new-instance v5, Landroid/scene/Scene;

    const v6, 0x1000005

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "AppPause"

    invoke-direct {v5, v6, v7, v1, v4}, Landroid/scene/Scene;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move-object v1, v5

    .line 1951
    .restart local v1  # "scene":Landroid/scene/Scene;
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;I)Landroid/scene/Scene;

    .line 1952
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;I)Landroid/scene/Scene;

    .line 1953
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 1955
    .end local v1  # "scene":Landroid/scene/Scene;
    goto :goto_11b

    .line 1956
    :cond_104
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v1, :cond_110

    .line 1957
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v2, 0x17

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    goto :goto_11b

    .line 1958
    :cond_110
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v1, :cond_11b

    .line 1959
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v2, 0x18

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1961
    :cond_11b
    :goto_11b
    return-void
.end method

.method setTask(Lcom/android/server/wm/TaskRecord;)V
    .registers 3
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 848
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;Z)V

    .line 849
    return-void
.end method

.method setTask(Lcom/android/server/wm/TaskRecord;Z)V
    .registers 5
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "reparenting"  # Z

    .line 858
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 859
    return-void

    .line 862
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 863
    .local v0, "oldStack":Lcom/android/server/wm/ActivityStack;
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 867
    .local v1, "newStack":Lcom/android/server/wm/ActivityStack;
    :goto_15
    if-eq v0, v1, :cond_23

    .line 868
    if-nez p2, :cond_1e

    if-eqz v0, :cond_1e

    .line 869
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 872
    :cond_1e
    if-eqz v1, :cond_23

    .line 873
    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityStack;->onActivityAddedToStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 877
    :cond_23
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    .line 879
    if-nez p2, :cond_2a

    .line 880
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onParentChanged()V

    .line 882
    :cond_2a
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 7
    .param p1, "_taskDescription"  # Landroid/app/ActivityManager$TaskDescription;

    .line 2688
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    .line 2689
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .local v1, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_34

    .line 2690
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget v0, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v2, v3, v0}, Lcom/android/server/wm/ActivityRecord;->createImageFilename(JI)Ljava/lang/String;

    move-result-object v0

    .line 2691
    .local v0, "iconFilename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget v3, v3, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2693
    .local v2, "iconFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 2694
    .local v3, "iconFilePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/wm/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 2695
    invoke-virtual {p1, v3}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 2697
    .end local v0  # "iconFilename":Ljava/lang/String;
    .end local v1  # "icon":Landroid/graphics/Bitmap;
    .end local v2  # "iconFile":Ljava/io/File;
    .end local v3  # "iconFilePath":Ljava/lang/String;
    :cond_34
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2698
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/TaskRecord;)V
    .registers 4
    .param p1, "taskToAffiliateWith"  # Lcom/android/server/wm/TaskRecord;

    .line 1345
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 1346
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/TaskRecord;)V

    .line 1348
    :cond_d
    return-void
.end method

.method setTurnScreenOn(Z)V
    .registers 2
    .param p1, "turnScreenOn"  # Z

    .line 3903
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    .line 3904
    return-void
.end method

.method setVisibility(Z)V
    .registers 4
    .param p1, "visible"  # Z

    .line 1878
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    .line 1879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    return-void

    .line 1883
    :cond_1d
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/AppWindowToken;->setVisibility(ZZ)V

    .line 1884
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyVisibilityChanged(Lcom/android/server/wm/ActivityRecord;)V

    .line 1885
    return-void
.end method

.method setVisible(Z)V
    .registers 4
    .param p1, "newVisible"  # Z

    .line 1889
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    .line 1890
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    .line 1891
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1892
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1893
    return-void
.end method

.method setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 3
    .param p1, "session"  # Landroid/service/voice/IVoiceInteractionSession;

    .line 2701
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 2703
    return-void
.end method

.method setWillCloseOrEnterPip(Z)V
    .registers 3
    .param p1, "willCloseOrEnterPip"  # Z

    .line 890
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_5

    .line 891
    return-void

    .line 894
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->setWillCloseOrEnterPip(Z)V

    .line 895
    return-void
.end method

.method shouldBeVisible()Z
    .registers 3

    .line 2059
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2060
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_8

    .line 2061
    const/4 v1, 0x0

    return v1

    .line 2066
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v1

    return v1
.end method

.method shouldBeVisible(Z)Z
    .registers 10
    .param p1, "behindFullscreenActivity"  # Z

    .line 2035
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisibleIgnoringKeyguard(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    .line 2037
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2038
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 2039
    return v1

    .line 2044
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->isSleeping()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    .line 2045
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    if-eqz v2, :cond_21

    move v2, v3

    goto :goto_22

    :cond_21
    move v2, v1

    .line 2047
    .local v2, "isDisplaySleeping":Z
    :goto_22
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne p0, v4, :cond_2a

    move v4, v3

    goto :goto_2b

    :cond_2a
    move v4, v1

    .line 2049
    .local v4, "isTop":Z
    :goto_2b
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 2050
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityDisplay;->isTopNotPinnedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_3d

    move v5, v3

    goto :goto_3e

    :cond_3d
    move v5, v1

    .line 2053
    .local v5, "isTopNotPinnedStack":Z
    :goto_3e
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v4, :cond_46

    if-eqz v5, :cond_46

    move v7, v3

    goto :goto_47

    :cond_46
    move v7, v1

    :goto_47
    invoke-virtual {v0, p0, v6, v7}, Lcom/android/server/wm/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v6

    .line 2055
    .local v6, "visibleIgnoringDisplayStatus":Z
    if-eqz v6, :cond_50

    if-nez v2, :cond_50

    move v1, v3

    :cond_50
    return v1
.end method

.method shouldBeVisibleIgnoringKeyguard(Z)Z
    .registers 4
    .param p1, "behindFullscreenActivity"  # Z

    .line 2026
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2027
    return v1

    .line 2030
    :cond_8
    if-eqz p1, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_f

    :cond_e
    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7
    .param p1, "activeActivity"  # Lcom/android/server/wm/ActivityRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2192
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    .line 2193
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_18

    goto :goto_5f

    .line 2197
    :cond_18
    if-ne p0, p1, :cond_1b

    .line 2198
    return v1

    .line 2201
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2203
    return v1

    .line 2206
    :cond_24
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_29

    .line 2209
    return v1

    .line 2213
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2214
    .local v0, "positionInTask":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_57

    .line 2217
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_41

    .line 2219
    return v3

    .line 2222
    :cond_41
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 2223
    .local v2, "activityAbove":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_56

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v4, :cond_56

    .line 2226
    return v3

    .line 2228
    :cond_56
    return v1

    .line 2215
    .end local v2  # "activityAbove":Lcom/android/server/wm/ActivityRecord;
    :cond_57
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Activity not found in its task"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2194
    .end local v0  # "positionInTask":I
    :cond_5f
    :goto_5f
    return v1
.end method

.method shouldResumeActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "activeActivity"  # Lcom/android/server/wm/ActivityRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2174
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2175
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 2174
    :goto_21
    return v0
.end method

.method shouldUpdateConfigForDisplayChanged()Z
    .registers 3

    .line 3269
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method shouldUseSizeCompatMode()Z
    .registers 3

    .line 2912
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->hasFixedAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2914
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_48

    .line 2917
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isMzWindowMode()Z

    move-result v0

    if-nez v0, :cond_48

    .line 2918
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDeferHideDimTokens:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    .line 2912
    :goto_49
    return v0
.end method

.method showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 5
    .param p1, "prev"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newTask"  # Z
    .param p3, "taskSwitch"  # Z

    .line 2711
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZ)V

    .line 2712
    return-void
.end method

.method showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZ)V
    .registers 23
    .param p1, "prev"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newTask"  # Z
    .param p3, "taskSwitch"  # Z
    .param p4, "fromRecents"  # Z

    .line 2716
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_9

    .line 2717
    return-void

    .line 2719
    :cond_9
    iget-boolean v0, v15, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v0, :cond_e

    .line 2721
    return-void

    .line 2723
    :cond_e
    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_1a

    .line 2724
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    .line 2726
    return-void

    .line 2729
    :cond_1a
    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2730
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v16

    .line 2731
    .local v16, "compatInfo":Landroid/content/res/CompatibilityInfo;
    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, v15, Lcom/android/server/wm/ActivityRecord;->theme:I

    iget-object v4, v15, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v5, v15, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    iget v6, v15, Lcom/android/server/wm/ActivityRecord;->icon:I

    iget v7, v15, Lcom/android/server/wm/ActivityRecord;->logo:I

    iget v8, v15, Lcom/android/server/wm/ActivityRecord;->windowFlags:I

    .line 2733
    if-eqz v14, :cond_37

    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    move-object v9, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v12

    .line 2734
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->allowTaskSnapshot()Z

    move-result v13

    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 2735
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v0

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v3

    const/4 v11, 0x1

    if-lt v0, v3, :cond_61

    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v0

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v3

    if-gt v0, v3, :cond_61

    move/from16 v17, v11

    goto :goto_64

    :cond_61
    const/4 v0, 0x0

    move/from16 v17, v0

    .line 2731
    :goto_64
    move-object/from16 v0, p0

    move-object/from16 v3, v16

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v14, v17

    move/from16 v15, p4

    invoke-virtual/range {v0 .. v15}, Lcom/android/server/wm/ActivityRecord;->addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z

    move-result v0

    .line 2737
    .local v0, "shown":Z
    if-eqz v0, :cond_7c

    .line 2738
    const/4 v2, 0x1

    move-object/from16 v1, p0

    iput v2, v1, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    goto :goto_7e

    .line 2737
    :cond_7c
    move-object/from16 v1, p0

    .line 2740
    :goto_7e
    return-void
.end method

.method public startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V
    .registers 7
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;
    .param p2, "configChanges"  # I

    .line 2411
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2412
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    const-string v1, "WindowManager"

    if-nez v0, :cond_23

    .line 2413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    return-void

    .line 2419
    :cond_23
    const v2, -0x20000001

    and-int/2addr v2, p2

    .line 2420
    .local v2, "freezableConfigChanges":I
    if-nez v2, :cond_4a

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2421
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping set freeze of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :cond_49
    return-void

    .line 2425
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V

    .line 2427
    .end local v2  # "freezableConfigChanges":I
    :cond_4f
    return-void
.end method

.method startLaunchTickingLocked()V
    .registers 5

    .line 2367
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_5

    .line 2368
    return-void

    .line 2370
    :cond_5
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    .line 2371
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 2372
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->continueLaunchTickingLocked()Z

    .line 2374
    :cond_16
    return-void
.end method

.method public stopFreezingScreenLocked(Z)V
    .registers 4
    .param p1, "force"  # Z

    .line 2430
    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz v0, :cond_4c

    .line 2431
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 2432
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_e

    .line 2433
    return-void

    .line 2435
    :cond_e
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_46

    .line 2436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear freezing of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 2437
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " freezing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 2438
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isFreezingScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2436
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 2442
    :cond_4c
    return-void
.end method

.method supportsFreeform()Z
    .registers 2

    .line 1444
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->supportsResizeableMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method supportsPictureInPicture()Z
    .registers 2

    .line 1423
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1424
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1423
    :goto_17
    return v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 2

    .line 1435
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_14

    .line 1436
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->supportsResizeableMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1435
    :goto_15
    return v0
.end method

.method takeFromHistory()V
    .registers 2

    .line 1379
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_15

    .line 1380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 1381
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_12

    .line 1382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    .line 1384
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 1386
    :cond_15
    return-void
.end method

.method takeOptionsLocked(Z)Landroid/app/ActivityOptions;
    .registers 4
    .param p1, "fromClient"  # Z

    .line 1813
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Taking options for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    .line 1814
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1813
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1822
    .local v0, "opts":Landroid/app/ActivityOptions;
    if-eqz p1, :cond_33

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    if-nez v1, :cond_36

    .line 1823
    :cond_33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1825
    :cond_36
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3957
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 3958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-nez v1, :cond_19

    const/4 v1, -0x1

    goto :goto_1b

    :cond_19
    iget v1, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3959
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_25

    const-string v1, " f}"

    goto :goto_27

    :cond_25
    const-string v1, "}"

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3958
    return-object v0

    .line 3961
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3962
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ActivityRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3963
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3964
    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3965
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3966
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3967
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3968
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->stringName:Ljava/lang/String;

    .line 3969
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 3
    .param p1, "aInfo"  # Landroid/content/pm/ApplicationInfo;

    .line 643
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 644
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object p1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 645
    return-void
.end method

.method updateMultiWindowMode()V
    .registers 3

    .line 755
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_30

    .line 759
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 761
    return-void

    .line 765
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v0

    .line 766
    .local v0, "inMultiWindowMode":Z
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-eq v0, v1, :cond_2f

    .line 767
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 768
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V

    .line 770
    :cond_2f
    return-void

    .line 756
    .end local v0  # "inMultiWindowMode":Z
    :cond_30
    :goto_30
    return-void
.end method

.method updateOptionsLocked(Landroid/app/ActivityOptions;)V
    .registers 4
    .param p1, "options"  # Landroid/app/ActivityOptions;

    .line 1678
    if-eqz p1, :cond_25

    .line 1679
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update options for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_23

    .line 1681
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 1683
    :cond_23
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1685
    :cond_25
    return-void
.end method

.method updatePictureInPictureMode(Landroid/graphics/Rect;Z)V
    .registers 8
    .param p1, "targetStackBounds"  # Landroid/graphics/Rect;
    .param p2, "forceUpdate"  # Z

    .line 784
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_5b

    .line 788
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 789
    .local v0, "inPictureInPictureMode":Z
    :goto_1c
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    if-ne v0, v1, :cond_22

    if-eqz p2, :cond_5a

    .line 796
    :cond_22
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 797
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 798
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 799
    .local v1, "newConfig":Landroid/content/res/Configuration;
    if-eqz p1, :cond_54

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_54

    .line 800
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 801
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 802
    .local v2, "outBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3, v2, v2}, Lcom/android/server/wm/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 803
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/TaskRecord;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 805
    .end local v2  # "outBounds":Landroid/graphics/Rect;
    :cond_54
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityRecord;->schedulePictureInPictureModeChanged(Landroid/content/res/Configuration;)V

    .line 806
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V

    .line 808
    .end local v1  # "newConfig":Landroid/content/res/Configuration;
    :cond_5a
    return-void

    .line 785
    .end local v0  # "inPictureInPictureMode":Z
    :cond_5b
    :goto_5b
    return-void
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 3973
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3974
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3975
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3976
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3977
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3978
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;

    .line 3985
    const-wide v0, 0x10b00000001L

    const/4 v2, 0x0

    invoke-super {p0, p1, v0, v1, v2}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3986
    const-wide v0, 0x10b00000002L

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3987
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack$ActivityState;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3988
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    const-wide v1, 0x10800000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3989
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    const-wide v1, 0x10800000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3990
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 3991
    const-wide v0, 0x10500000006L

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3993
    :cond_47
    const-wide v0, 0x10800000007L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3994
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 3997
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3998
    .local v0, "token":J
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 3999
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4000
    return-void
.end method
