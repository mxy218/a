.class final Lcom/android/server/wm/ActivityRecord;
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

.field private mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field private mLastReportedDisplayId:I

.field private mLastReportedMultiWindowMode:Z

.field private mLastReportedPictureInPictureMode:Z

.field mLaunchTaskBehind:Z

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

.field final packageName:Ljava/lang/String;

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

.field private windowFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .registers 33

    .line 946
    move-object v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p16

    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 287
    const/4 v2, -0x1

    iput v2, v6, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v6, Lcom/android/server/wm/ActivityRecord;->createTime:J

    .line 357
    new-instance v4, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v4}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v4

    iput-object v4, v6, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 372
    const/4 v9, 0x0

    iput v9, v6, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    .line 373
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 378
    iput v9, v6, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 405
    iput v2, v6, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 419
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 420
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 423
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    .line 947
    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 948
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 949
    new-instance v0, Lcom/android/server/wm/ActivityRecord$Token;

    invoke-direct {v0, p0, v3}, Lcom/android/server/wm/ActivityRecord$Token;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;)V

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 950
    iput-object v7, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 951
    move/from16 v0, p3

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    .line 952
    move/from16 v2, p4

    iput v2, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 953
    move-object/from16 v0, p5

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 954
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 955
    iput-object v3, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 956
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 957
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 958
    move/from16 v4, p13

    iput-boolean v4, v6, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    .line 959
    move/from16 v0, p14

    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    .line 960
    new-instance v0, Landroid/util/MergedConfiguration;

    move-object/from16 v5, p9

    invoke-direct {v0, v5}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 961
    move-object/from16 v0, p10

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 962
    move-object/from16 v0, p11

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 963
    move/from16 v0, p12

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 964
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "ActivityRecord ctor"

    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 965
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    .line 966
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 967
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 968
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 969
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 970
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 971
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 972
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 973
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->visible:Z

    .line 974
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 975
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->mDrawn:Z

    .line 976
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 977
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    .line 978
    move-object/from16 v0, p15

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 982
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    .line 987
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v0, :cond_e3

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 988
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    iget v0, v7, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v0, :cond_d6

    iget v0, v7, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v0, v10, :cond_d7

    :cond_d6
    goto :goto_e3

    .line 993
    :cond_d7
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v5, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_e9

    .line 991
    :cond_e3
    :goto_e3
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 995
    :goto_e9
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 996
    iget v0, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_f5

    move v0, v10

    goto :goto_f6

    :cond_f5
    move v0, v9

    :goto_f6
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    .line 997
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 998
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 999
    iget v0, v7, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    .line 1000
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_116

    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    if-nez v0, :cond_116

    .line 1001
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1002
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v5, v6, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1003
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    .line 1005
    :cond_116
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->icon:I

    .line 1006
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v0

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->logo:I

    .line 1007
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v0

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->theme:I

    .line 1008
    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->theme:I

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->realTheme:I

    .line 1009
    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->realTheme:I

    if-nez v0, :cond_141

    .line 1010
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-ge v0, v5, :cond_13c

    .line 1011
    const v0, 0x1030005

    goto :goto_13f

    :cond_13c
    const v0, 0x103006b

    :goto_13f
    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->realTheme:I

    .line 1013
    :cond_141
    iget v0, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    const/high16 v11, 0x1000000

    if-eqz v0, :cond_14e

    .line 1014
    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->windowFlags:I

    or-int/2addr v0, v11

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->windowFlags:I

    .line 1016
    :cond_14e
    iget v0, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v0, v10

    if-eqz v0, :cond_16c

    if-eqz v1, :cond_16c

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-eq v0, v5, :cond_167

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v5, :cond_16c

    .line 1019
    :cond_167
    iget-object v0, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_170

    .line 1021
    :cond_16c
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1024
    :goto_170
    iget v0, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/high16 v12, 0x800000

    if-eqz v0, :cond_17d

    .line 1025
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1028
    :cond_17d
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1029
    iget v0, v7, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    .line 1031
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v5, v6, Lcom/android/server/wm/ActivityRecord;->realTheme:I

    sget-object v13, Lcom/android/internal/R$styleable;->Window:[I

    iget v14, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1, v5, v13, v14}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 1034
    if-eqz v0, :cond_1b7

    .line 1035
    iget-object v1, v0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isTranslucentOrFloating(Landroid/content/res/TypedArray;)Z

    move-result v1

    xor-int/2addr v1, v10

    iput-boolean v1, v6, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    .line 1036
    iget-object v1, v0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v5, 0xe

    invoke-virtual {v1, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v6, Lcom/android/server/wm/ActivityRecord;->hasWallpaper:Z

    .line 1037
    iget-object v0, v0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    goto :goto_1bb

    .line 1039
    :cond_1b7
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->hasWallpaper:Z

    .line 1040
    iput-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    .line 1043
    :goto_1bb
    move-object v0, p0

    move/from16 v1, p13

    move/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p16

    move-object/from16 v5, p17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    .line 1045
    iget v0, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1d1

    move v0, v10

    goto :goto_1d2

    :cond_1d1
    move v0, v9

    :goto_1d2
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 1047
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    if-nez v0, :cond_1da

    .line 1048
    const/4 v0, 0x0

    goto :goto_1e0

    :cond_1da
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_1e0
    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 1050
    iget v0, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v0, v12

    if-eqz v0, :cond_1e9

    move v0, v10

    goto :goto_1ea

    :cond_1e9
    move v0, v9

    :goto_1ea
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    .line 1051
    iget v0, v7, Landroid/content/pm/ActivityInfo;->privateFlags:I

    and-int/2addr v0, v10

    if-eqz v0, :cond_1f3

    move v0, v10

    goto :goto_1f4

    :cond_1f3
    move v0, v9

    :goto_1f4
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    .line 1052
    iget v0, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v0, v11

    if-eqz v0, :cond_1fd

    move v0, v10

    goto :goto_1fe

    :cond_1fd
    move v0, v9

    :goto_1fe
    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    .line 1054
    iget v0, v7, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 1055
    iget v0, v7, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    .line 1056
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_219

    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_217

    if-ne v0, v10, :cond_219

    .line 1058
    :cond_217
    iput v9, v6, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    .line 1061
    :cond_219
    if-eqz v8, :cond_251

    .line 1062
    iput-object v8, v6, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1063
    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getLaunchTaskBehind()Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 1065
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getRotationAnimationHint()I

    move-result v0

    .line 1067
    if-ltz v0, :cond_22d

    .line 1068
    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 1070
    :cond_22d
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getUsageTimeReport()Landroid/app/PendingIntent;

    move-result-object v0

    .line 1071
    if-eqz v0, :cond_23c

    .line 1072
    new-instance v1, Lcom/android/server/am/AppTimeTracker;

    invoke-direct {v1, v0}, Lcom/android/server/am/AppTimeTracker;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, v6, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1074
    :cond_23c
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result v0

    .line 1075
    if-eqz v0, :cond_24b

    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    if-nez v0, :cond_24b

    .line 1076
    const/4 v0, 0x3

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    .line 1079
    :cond_24b
    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v0

    iput v0, v6, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 1081
    :cond_251
    return-void
.end method

.method static activityResumedLocked(Landroid/os/IBinder;)V
    .registers 2

    .line 2175
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 2177
    if-nez p0, :cond_7

    .line 2180
    return-void

    .line 2182
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 2183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    .line 2185
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 2186
    if-eqz v0, :cond_16

    .line 2187
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityDisplay;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 2189
    :cond_16
    return-void
.end method

.method private addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V
    .registers 3

    .line 1585
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1588
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    return-void
.end method

.method private allowTaskSnapshot()Z
    .registers 4

    .line 3568
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 3569
    return v1

    .line 3575
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_b
    if-ltz v0, :cond_22

    .line 3576
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3577
    if-eqz v2, :cond_1f

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 3578
    const/4 v0, 0x0

    return v0

    .line 3575
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 3581
    :cond_22
    return v1
.end method

.method private canLaunchAssistActivity(Ljava/lang/String;)Z
    .registers 3

    .line 1274
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    .line 1276
    if-eqz v0, :cond_f

    .line 1277
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1279
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private checkEnterPictureInPictureAppOpsState()Z
    .registers 5

    .line 1493
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
    .registers 12

    .line 3070
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3071
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    .line 3072
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3073
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    .line 3075
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-eqz v3, :cond_a7

    if-eqz v1, :cond_a7

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->inMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_a7

    const/4 v1, 0x0

    cmpl-float v3, v0, v1

    if-nez v3, :cond_24

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_a7

    .line 3077
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto/16 :goto_a7

    .line 3085
    :cond_30
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 3086
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 3087
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    .line 3088
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3090
    nop

    .line 3091
    nop

    .line 3093
    cmpl-float v6, v5, v0

    const/high16 v7, 0x3f000000  # 0.5f

    const/4 v8, 0x0

    if-lez v6, :cond_68

    if-eqz v3, :cond_68

    .line 3094
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->shouldForceLongScreen(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    goto :goto_8f

    .line 3096
    :cond_59
    if-ge v1, v4, :cond_62

    .line 3099
    int-to-float v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, v7

    float-to-int v0, v2

    move v2, v0

    move v0, v1

    goto :goto_91

    .line 3103
    :cond_62
    int-to-float v2, v4

    mul-float/2addr v2, v0

    add-float/2addr v2, v7

    float-to-int v0, v2

    move v2, v4

    goto :goto_91

    .line 3105
    :cond_68
    cmpg-float v0, v5, v2

    if-gez v0, :cond_8f

    .line 3107
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7e

    const/4 v5, 0x2

    if-eq v0, v5, :cond_7b

    .line 3121
    if-ge v1, v4, :cond_79

    .line 3124
    goto :goto_80

    .line 3128
    :cond_79
    move v3, v8

    goto :goto_80

    .line 3111
    :cond_7b
    nop

    .line 3112
    move v3, v8

    goto :goto_80

    .line 3116
    :cond_7e
    nop

    .line 3117
    nop

    .line 3132
    :goto_80
    if-eqz v3, :cond_88

    .line 3133
    int-to-float v0, v4

    div-float/2addr v0, v2

    add-float/2addr v0, v7

    float-to-int v0, v0

    move v2, v4

    goto :goto_91

    .line 3135
    :cond_88
    int-to-float v0, v1

    div-float/2addr v0, v2

    add-float/2addr v0, v7

    float-to-int v0, v0

    move v2, v0

    move v0, v1

    goto :goto_91

    .line 3139
    :cond_8f
    :goto_8f
    move v0, v1

    move v2, v4

    :goto_91
    if-gt v1, v0, :cond_9d

    if-gt v4, v2, :cond_9d

    .line 3146
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3147
    return-void

    .line 3154
    :cond_9d
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    invoke-virtual {p1, v8, v8, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3156
    return-void

    .line 3082
    :cond_a7
    :goto_a7
    return-void
.end method

.method private static createImageFilename(JI)Ljava/lang/String;
    .registers 4

    .line 2599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_activity_icon_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private crossesHorizontalSizeThreshold(II)Z
    .registers 4

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mHorizontalSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result p1

    return p1
.end method

.method private static crossesSizeThreshold([III)Z
    .registers 7

    .line 654
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 655
    return v0

    .line 657
    :cond_4
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_7
    if-ltz v1, :cond_17

    .line 658
    aget v3, p0, v1

    .line 659
    if-ge p1, v3, :cond_f

    if-ge p2, v3, :cond_13

    :cond_f
    if-lt p1, v3, :cond_14

    if-ge p2, v3, :cond_14

    .line 661
    :cond_13
    return v2

    .line 657
    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 664
    :cond_17
    return v0
.end method

.method private crossesSmallestSizeThreshold(II)Z
    .registers 4

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSmallestSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result p1

    return p1
.end method

.method private crossesVerticalSizeThreshold(II)Z
    .registers 4

    .line 631
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mVerticalSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result p1

    return p1
.end method

.method static forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 913
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord$Token;->access$000(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p0

    .line 914
    :catch_8
    move-exception v0

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad activity token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    const/4 p0, 0x0

    return-object p0
.end method

.method private getActivityBelow()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 3751
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3752
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 3755
    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_17

    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_17
    return-object v0

    .line 3753
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity not found in its task"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getConfigurationChanges(Landroid/content/res/Configuration;)I
    .registers 6

    .line 3388
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3389
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 3392
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_28

    .line 3393
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->crossesHorizontalSizeThreshold(II)Z

    move-result v2

    if-nez v2, :cond_23

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3395
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

    .line 3397
    :goto_24
    if-nez v2, :cond_28

    .line 3398
    and-int/lit16 v1, v1, -0x401

    .line 3401
    :cond_28
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_38

    .line 3402
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3403
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3404
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->crossesSmallestSizeThreshold(II)Z

    move-result p1

    if-nez p1, :cond_38

    .line 3405
    and-int/lit16 v1, v1, -0x801

    .line 3409
    :cond_38
    const/high16 p1, 0x20000000

    and-int/2addr p1, v1

    if-eqz p1, :cond_41

    .line 3410
    const p1, -0x20000001

    and-int/2addr v1, p1

    .line 3413
    :cond_41
    return v1
.end method

.method static getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;
    .registers 1

    .line 2561
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 2562
    if-eqz p0, :cond_b

    .line 2563
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p0

    return-object p0

    .line 2565
    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static getTaskForActivityLocked(Landroid/os/IBinder;Z)I
    .registers 5

    .line 2543
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 2544
    const/4 v0, -0x1

    if-nez p0, :cond_8

    .line 2545
    return v0

    .line 2547
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    .line 2548
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 2549
    if-ltz p0, :cond_1e

    if-eqz p1, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->findEffectiveRootIndex()I

    move-result p1

    if-le p0, p1, :cond_1b

    goto :goto_1e

    .line 2552
    :cond_1b
    iget p0, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    return p0

    .line 2550
    :cond_1e
    :goto_1e
    return v0
.end method

.method private getWaitingHistoryRecordLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 2485
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_15

    .line 2486
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2488
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2489
    if-nez v1, :cond_12

    .line 2490
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2492
    :cond_12
    if-eqz v1, :cond_15

    .line 2493
    return-object v1

    .line 2496
    :cond_15
    return-object p0
.end method

.method private static hasResizeChange(I)Z
    .registers 1

    .line 3422
    and-int/lit16 p0, p0, 0xd80

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isHomeIntent(Landroid/content/Intent;)Z
    .registers 4

    .line 1239
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 1240
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1241
    const-string v0, "android.intent.category.SECONDARY_HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1242
    :cond_1d
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_34

    .line 1243
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_34

    .line 1244
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    .line 1239
    :goto_35
    return v1
.end method

.method static isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 2556
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 2557
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method private static isInVrUiMode(Landroid/content/res/Configuration;)Z
    .registers 2

    .line 3704
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x7

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method static isMainIntent(Landroid/content/Intent;)Z
    .registers 3

    .line 1248
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    .line 1249
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1250
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_2c

    .line 1251
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 1252
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 1248
    :goto_2d
    return v1
.end method

.method private static isResizeOnlyChange(I)Z
    .registers 1

    .line 3417
    and-int/lit16 p0, p0, -0xd81

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method static isResolverActivity(Ljava/lang/String;)Z
    .registers 2

    .line 921
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z
    .registers 5

    .line 3379
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3380
    const/16 v1, 0x200

    if-ne p1, v1, :cond_14

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result p1

    .line 3381
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result p2

    if-eq p1, p2, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 3380
    :goto_15
    return p1
.end method

.method private resolveSizeCompatModeConfiguration(Landroid/content/res/Configuration;)V
    .registers 11

    .line 2916
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2917
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2919
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 2920
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2921
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 2922
    if-eq v4, v3, :cond_21

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isConfigurationCompatible(Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2925
    goto :goto_3a

    .line 2927
    :cond_21
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    .line 2929
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    if-ne v3, v2, :cond_32

    .line 2931
    return-void

    .line 2933
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v3

    .line 2934
    if-eqz v3, :cond_39

    .line 2935
    goto :goto_3a

    .line 2934
    :cond_39
    move v3, v4

    .line 2939
    :goto_3a
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2941
    const/4 v4, 0x0

    .line 2942
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 2943
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2944
    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v7}, Lcom/android/server/wm/TaskRecord;->handlesOrientationChangeFromDescendant()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 2947
    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    invoke-virtual {v7, v5, v3}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getDisplayBoundsByOrientation(Landroid/graphics/Rect;I)V

    goto :goto_6f

    .line 2954
    :cond_53
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 2955
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getDisplayBoundsByOrientation(Landroid/graphics/Rect;I)V

    .line 2956
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v4, v6, p0, v5, v3}, Lcom/android/server/wm/TaskRecord;->computeFullscreenBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;I)V

    .line 2957
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    .line 2961
    :goto_6f
    iget v3, v6, Landroid/graphics/Rect;->left:I

    .line 2962
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 2963
    if-nez v4, :cond_78

    .line 2964
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2966
    :cond_78
    const/4 v8, -0x1

    if-eq v2, v8, :cond_84

    .line 2968
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v2, v8, v2

    invoke-static {v6, v5, v2}, Lcom/android/server/wm/TaskRecord;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2972
    :cond_84
    invoke-direct {p0, v1, v6}, Lcom/android/server/wm/ActivityRecord;->computeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2973
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 2975
    if-eqz v4, :cond_90

    move-object v5, v6

    :cond_90
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9e

    .line 2979
    :cond_94
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2980
    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v7

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2982
    :goto_9e
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    invoke-virtual {v2, v0, p1, v3}, Lcom/android/server/wm/TaskRecord;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2987
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2988
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2989
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v4, v3, :cond_c2

    .line 2990
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 2994
    :cond_c2
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v1, v2, :cond_cc

    .line 2995
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2997
    :cond_cc
    return-void
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/ActivityRecord;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3622
    move-object/from16 v0, p0

    .line 3623
    nop

    .line 3624
    nop

    .line 3625
    nop

    .line 3626
    nop

    .line 3627
    nop

    .line 3628
    nop

    .line 3629
    nop

    .line 3630
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3631
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 3633
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    move v11, v5

    move/from16 v18, v11

    move/from16 v20, v18

    move-object v5, v6

    move-object v12, v5

    move-wide v8, v7

    :goto_24
    const-string v7, "ActivityTaskManager"

    if-ltz v3, :cond_a1

    .line 3634
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    .line 3635
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    .line 3638
    const-string v14, "id"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3e

    .line 3639
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-wide v8, v7

    goto :goto_9e

    .line 3640
    :cond_3e
    const-string v14, "launched_from_uid"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4c

    .line 3641
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v11, v7

    goto :goto_9e

    .line 3642
    :cond_4c
    const-string v14, "launched_from_package"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_56

    .line 3643
    move-object v12, v13

    goto :goto_9e

    .line 3644
    :cond_56
    const-string v14, "resolved_type"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_60

    .line 3645
    move-object v5, v13

    goto :goto_9e

    .line 3646
    :cond_60
    const-string v14, "component_specified"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6f

    .line 3647
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    move/from16 v20, v7

    goto :goto_9e

    .line 3648
    :cond_6f
    const-string v14, "user_id"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7e

    .line 3649
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move/from16 v18, v7

    goto :goto_9e

    .line 3650
    :cond_7e
    const-string v14, "task_description_"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8a

    .line 3651
    invoke-virtual {v2, v10, v13}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    .line 3653
    :cond_8a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown ActivityRecord attribute="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    :goto_9e
    add-int/lit8 v3, v3, -0x1

    goto :goto_24

    :cond_a1
    move-object v3, v6

    .line 3658
    :cond_a2
    :goto_a2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v4, :cond_ea

    const/4 v13, 0x3

    if-ne v10, v13, :cond_b1

    .line 3659
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-lt v13, v1, :cond_ea

    .line 3660
    :cond_b1
    const/4 v13, 0x2

    if-ne v10, v13, :cond_a2

    .line 3661
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 3664
    const-string v13, "intent"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c5

    .line 3665
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_e9

    .line 3668
    :cond_c5
    const-string v13, "persistable_bundle"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d2

    .line 3669
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    goto :goto_e9

    .line 3673
    :cond_d2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restoreActivity: unexpected name="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3674
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3676
    :goto_e9
    goto :goto_a2

    .line 3679
    :cond_ea
    if-eqz v6, :cond_14b

    .line 3683
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3684
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 3685
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 3684
    move-object/from16 v13, p1

    move-object v14, v6

    move-object v15, v5

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v15

    .line 3686
    if-eqz v15, :cond_12c

    .line 3690
    new-instance v4, Lcom/android/server/wm/ActivityRecord;

    move-object v7, v4

    const/4 v10, 0x0

    move-wide v13, v8

    move-object v9, v10

    const/4 v10, 0x0

    .line 3692
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v8, v1

    move-wide/from16 v25, v13

    move-object v13, v6

    move-object v14, v5

    move-object/from16 v22, p1

    invoke-direct/range {v7 .. v24}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    .line 3696
    iput-object v3, v4, Lcom/android/server/wm/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 3697
    iput-object v2, v4, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 3698
    move-wide/from16 v7, v25

    iput-wide v7, v4, Lcom/android/server/wm/ActivityRecord;->createTime:J

    .line 3700
    return-object v4

    .line 3687
    :cond_12c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreActivity resolver error. Intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " resolvedType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3680
    :cond_14b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreActivity error intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 6

    .line 675
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_7

    .line 679
    return-void

    .line 686
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 687
    invoke-static {p1, p2}, Landroid/app/servertransaction/MoveToDisplayItem;->obtain(ILandroid/content/res/Configuration;)Landroid/app/servertransaction/MoveToDisplayItem;

    move-result-object p1

    .line 686
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1c} :catch_1d

    .line 690
    goto :goto_1e

    .line 688
    :catch_1d
    move-exception p1

    .line 691
    :goto_1e
    return-void
.end method

.method private scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 694
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_7

    .line 698
    return-void

    .line 704
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 705
    invoke-static {p1}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    move-result-object p1

    .line 704
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1c} :catch_1d

    .line 708
    goto :goto_1e

    .line 706
    :catch_1d
    move-exception p1

    .line 709
    :goto_1e
    return-void
.end method

.method private scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 754
    invoke-static {v3, p1}, Landroid/app/servertransaction/MultiWindowModeChangeItem;->obtain(ZLandroid/content/res/Configuration;)Landroid/app/servertransaction/MultiWindowModeChangeItem;

    move-result-object p1

    .line 753
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 757
    goto :goto_19

    .line 755
    :catch_18
    move-exception p1

    .line 758
    :goto_19
    return-void
.end method

.method private schedulePictureInPictureModeChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 790
    invoke-static {v3, p1}, Landroid/app/servertransaction/PipModeChangeItem;->obtain(ZLandroid/content/res/Configuration;)Landroid/app/servertransaction/PipModeChangeItem;

    move-result-object p1

    .line 789
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 794
    goto :goto_19

    .line 792
    :catch_18
    move-exception p1

    .line 795
    :goto_19
    return-void
.end method

.method private setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .registers 8

    .line 1284
    nop

    .line 1285
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_b

    invoke-virtual {p0, p2, p5}, Lcom/android/server/wm/ActivityRecord;->canLaunchHomeActivity(ILcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 1286
    :cond_b
    invoke-direct {p0, p3}, Lcom/android/server/wm/ActivityRecord;->isHomeIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 1288
    const/4 p1, 0x2

    .line 1290
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq p2, v1, :cond_25

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_29

    .line 1293
    :cond_25
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput v0, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 1302
    :cond_29
    move v0, p1

    goto :goto_5f

    .line 1295
    :cond_2b
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.systemui.recents"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5e

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1296
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/RecentTasks;->isRecentsComponent(Landroid/content/ComponentName;I)Z

    move-result p1

    if-eqz p1, :cond_4c

    goto :goto_5e

    .line 1298
    :cond_4c
    if-eqz p4, :cond_5f

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result p1

    if-ne p1, v1, :cond_5f

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1299
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->canLaunchAssistActivity(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 1300
    move v0, v1

    goto :goto_5f

    .line 1297
    :cond_5e
    :goto_5e
    const/4 v0, 0x3

    .line 1302
    :cond_5f
    :goto_5f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1303
    return-void
.end method

.method private setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4

    .line 2727
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2728
    return-void
.end method

.method private setOrientation(IZ)V
    .registers 4

    .line 2674
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    .line 2675
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    return-void

    .line 2681
    :cond_1d
    if-eqz p2, :cond_28

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p2, :cond_28

    invoke-virtual {p2}, Landroid/view/IApplicationToken$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_29

    :cond_28
    const/4 p2, 0x0

    .line 2682
    :goto_29
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/wm/AppWindowToken;->setOrientation(ILandroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 2686
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 2687
    invoke-virtual {p2}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 2686
    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_42

    .line 2688
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    .line 2690
    :cond_42
    return-void
.end method

.method private shouldPauseActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 2094
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result p1

    if-nez p1, :cond_18

    sget-object p1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method private shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z
    .registers 6

    .line 3358
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v0

    .line 3359
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z

    move-result p2

    .line 3365
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1a

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_1a

    if-eqz p2, :cond_1a

    .line 3368
    or-int/lit16 v0, v0, 0x200

    .line 3371
    :cond_1a
    not-int p2, v0

    and-int/2addr p1, p2

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method

.method private static startingWindowStateToString(I)Ljava/lang/String;
    .registers 3

    .line 426
    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 432
    :cond_1a
    const-string p0, "STARTING_WINDOW_REMOVED"

    return-object p0

    .line 430
    :cond_1d
    const-string p0, "STARTING_WINDOW_SHOWN"

    return-object p0

    .line 428
    :cond_20
    const-string p0, "STARTING_WINDOW_NOT_SHOWN"

    return-object p0
.end method

.method private supportsResizeableMultiWindow()Z
    .registers 2

    .line 1412
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 1413
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

    .line 1412
    :goto_1f
    return v0
.end method

.method private updateOverrideConfiguration()V
    .registers 4

    .line 2837
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 2838
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldUseSizeCompatMode()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2839
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-eqz v1, :cond_d

    .line 2841
    return-void

    .line 2843
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2844
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->isConfigurationCompatible(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 2848
    return-void

    .line 2856
    :cond_22
    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 2857
    iget v2, v1, Landroid/content/res/Configuration;->colorMode:I

    iput v2, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 2858
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2859
    iget v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x3f

    iput v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2864
    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2867
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 2868
    if-eqz v1, :cond_4a

    iget-object v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_4a

    .line 2869
    new-instance v2, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    iget-object v1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v2, v1}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2871
    :cond_4a
    goto :goto_73

    .line 2875
    :cond_4b
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->computeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2877
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 2880
    return-void

    .line 2883
    :cond_69
    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 2884
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2887
    :goto_73
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2888
    return-void
.end method

.method private updateTaskDescription(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1819
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iput-object p1, v0, Lcom/android/server/wm/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 1820
    return-void
.end method


# virtual methods
.method final activityStoppedLocked(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .registers 11

    .line 2248
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2249
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_e

    move v1, v4

    goto :goto_f

    :cond_e
    move v1, v3

    .line 2250
    :goto_f
    const/16 v2, 0x68

    if-nez v1, :cond_35

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_35

    .line 2251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity reported stop, but no longer stopping: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    iget-object p1, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2253
    return-void

    .line 2255
    :cond_35
    if-eqz p2, :cond_40

    .line 2256
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 2257
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {p2, v5, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 2261
    :cond_40
    if-eqz p1, :cond_4b

    .line 2264
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 2265
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    .line 2266
    iput v3, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 2267
    invoke-direct {p0, p3}, Lcom/android/server/wm/ActivityRecord;->updateTaskDescription(Ljava/lang/CharSequence;)V

    .line 2269
    :cond_4b
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez p1, :cond_82

    .line 2271
    iget-object p1, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2272
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 2273
    if-eqz v1, :cond_5f

    .line 2274
    sget-object p1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string p2, "activityStoppedLocked"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2277
    :cond_5f
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz p1, :cond_66

    .line 2278
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->notifyAppStopped()V

    .line 2281
    :cond_66
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p1, :cond_6e

    .line 2282
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    goto :goto_82

    .line 2284
    :cond_6e
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz p1, :cond_7d

    .line 2285
    const-string p1, "stop-config"

    invoke-virtual {v0, p0, v4, p1}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    .line 2286
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    goto :goto_82

    .line 2288
    :cond_7d
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RootActivityContainer;->updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V

    .line 2292
    :cond_82
    :goto_82
    return-void
.end method

.method addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 13

    .line 1558
    new-instance v6, Lcom/android/server/wm/ActivityResult;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityResult;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1560
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez p1, :cond_16

    .line 1561
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1563
    :cond_16
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1564
    return-void
.end method

.method addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z
    .registers 36

    .line 1156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v2, 0x0

    const-string v3, "WindowManager"

    if-nez v1, :cond_20

    .line 1157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    return v2

    .line 1160
    :cond_20
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to start a window to an app token not having attached to any task: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    return v2

    .line 1166
    :cond_3d
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move/from16 v19, p15

    invoke-virtual/range {v4 .. v19}, Lcom/android/server/wm/AppWindowToken;->addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z

    move-result v0

    return v0
.end method

.method applyOptionsLocked()V
    .registers 3

    .line 1645
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_1e

    .line 1646
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1e

    .line 1648
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked(Landroid/app/ActivityOptions;Landroid/content/Intent;)V

    .line 1649
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-nez v0, :cond_1b

    .line 1650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked(Z)V

    goto :goto_1e

    .line 1653
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->clearAllPendingOptions()V

    .line 1656
    :cond_1e
    :goto_1e
    return-void
.end method

.method applyOptionsLocked(Landroid/app/ActivityOptions;Landroid/content/Intent;)V
    .registers 16

    .line 1662
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    .line 1663
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1664
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_194

    .line 1749
    :pswitch_f  #0x5, 0x6, 0x7, 0xa
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyOptionsLocked: Unknown animationType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_192

    .line 1743
    :pswitch_27  #0xd
    iget-object p2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1744
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object p1

    .line 1743
    invoke-virtual {p2, p1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 1745
    goto/16 :goto_192

    .line 1739
    :pswitch_32  #0xc
    iget-object p1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1740
    invoke-virtual {p1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionStartCrossProfileApps()V

    .line 1741
    goto/16 :goto_192

    .line 1673
    :pswitch_39  #0xb
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1674
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v2

    .line 1675
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v4

    .line 1673
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    .line 1676
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_192

    .line 1677
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v1

    .line 1678
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v2

    .line 1679
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 1680
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1677
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_192

    .line 1711
    :pswitch_78  #0x8, 0x9
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v4

    .line 1712
    nop

    .line 1713
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v5

    .line 1714
    const/16 v6, 0x8

    if-eqz v5, :cond_94

    .line 1715
    iget-object p2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1716
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object p1

    if-ne v0, v6, :cond_8e

    goto :goto_8f

    :cond_8e
    move v2, v3

    .line 1715
    :goto_8f
    invoke-virtual {p2, v5, p1, v2}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    goto/16 :goto_192

    .line 1718
    :cond_94
    const/16 v5, 0x9

    if-ne v0, v5, :cond_a9

    if-eqz v4, :cond_a9

    .line 1720
    iget-object p2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1721
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 1722
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationFinishedListener()Landroid/os/IRemoteCallback;

    move-result-object p1

    .line 1720
    invoke-virtual {p2, v4, v0, p1, v3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    goto/16 :goto_192

    .line 1724
    :cond_a9
    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1725
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    .line 1726
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    .line 1727
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v10

    .line 1728
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v11

    if-ne v0, v6, :cond_c7

    move v12, v2

    goto :goto_c8

    :cond_c7
    move v12, v3

    .line 1724
    :goto_c8
    move-object v6, v1

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V

    .line 1730
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_192

    .line 1731
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v1

    .line 1732
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v2

    .line 1733
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 1734
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1731
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_192

    .line 1696
    :pswitch_f6  #0x3, 0x4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_fb

    move v10, v2

    goto :goto_fc

    :cond_fb
    move v10, v3

    .line 1697
    :goto_fc
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 1698
    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1699
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    .line 1700
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v9

    .line 1698
    move-object v6, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V

    .line 1702
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_192

    if-eqz v0, :cond_192

    .line 1703
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    .line 1704
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    .line 1705
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 1706
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1703
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_192

    .line 1684
    :pswitch_13d  #0x2
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1685
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v2

    .line 1686
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v4

    .line 1684
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionScaleUp(IIII)V

    .line 1687
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_192

    .line 1688
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v1

    .line 1689
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v2

    .line 1690
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 1691
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1688
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_192

    .line 1666
    :pswitch_17b  #0x1
    iget-object p2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1667
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1668
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v1

    .line 1669
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v2

    .line 1670
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object p1

    .line 1666
    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 1671
    goto :goto_192

    .line 1747
    :pswitch_191  #0x0
    nop

    .line 1752
    :cond_192
    :goto_192
    return-void

    nop

    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_191  #00000000
        :pswitch_17b  #00000001
        :pswitch_13d  #00000002
        :pswitch_f6  #00000003
        :pswitch_f6  #00000004
        :pswitch_f  #00000005
        :pswitch_f  #00000006
        :pswitch_f  #00000007
        :pswitch_78  #00000008
        :pswitch_78  #00000009
        :pswitch_f  #0000000a
        :pswitch_39  #0000000b
        :pswitch_32  #0000000c
        :pswitch_27  #0000000d
    .end packed-switch
.end method

.method attachedToProcess()Z
    .registers 2

    .line 1096
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

    .line 1425
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result p1

    return p1
.end method

.method canLaunchHomeActivity(ILcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1257
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_26

    if-nez p1, :cond_a

    goto :goto_26

    .line 1262
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    .line 1263
    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1264
    return v1

    .line 1267
    :cond_1b
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1

    .line 1259
    :cond_26
    :goto_26
    return v1
.end method

.method canResumeByCompat()Z
    .registers 2

    .line 3782
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
    .registers 5

    .line 3732
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_16

    .line 3733
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->containsShowWhenLockedWindow()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3734
    :cond_15
    return v1

    .line 3735
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    .line 3736
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityBelow()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3737
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v3

    if-nez v3, :cond_36

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    if-nez v3, :cond_35

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_36

    .line 3739
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->containsShowWhenLockedWindow()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_35
    goto :goto_37

    :cond_36
    move v1, v2

    .line 3737
    :goto_37
    return v1

    .line 3741
    :cond_38
    return v2
.end method

.method canTurnScreenOn()Z
    .registers 4

    .line 3770
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3771
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    .line 3772
    invoke-virtual {v0, p0, v2, v2}, Lcom/android/server/wm/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 3771
    :goto_13
    return v2
.end method

.method changeWindowTranslucency(Z)Z
    .registers 6

    .line 1328
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-ne v0, p1, :cond_6

    .line 1329
    const/4 p1, 0x0

    return p1

    .line 1333
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

    .line 1335
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    .line 1336
    return v2
.end method

.method checkEnterPictureInPictureState(Ljava/lang/String;Z)Z
    .registers 9

    .line 1436
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 1437
    return v0

    .line 1441
    :cond_8
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result p1

    if-nez p1, :cond_f

    .line 1442
    return v0

    .line 1446
    :cond_f
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->shouldDisableNonVrUiLocked()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1447
    return v0

    .line 1450
    :cond_18
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isKeyguardLocked()Z

    move-result p1

    .line 1451
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1452
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskModeState()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    move v1, v2

    goto :goto_2a

    :cond_29
    move v1, v0

    .line 1453
    :goto_2a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 1454
    if-eqz v3, :cond_38

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->hasPinnedStack()Z

    move-result v3

    if-eqz v3, :cond_38

    move v3, v2

    goto :goto_39

    :cond_38
    move v3, v0

    .line 1457
    :goto_39
    if-nez p1, :cond_3f

    if-nez v1, :cond_3f

    move p1, v2

    goto :goto_40

    :cond_3f
    move p1, v0

    .line 1460
    :goto_40
    if-eqz p2, :cond_45

    if-eqz v3, :cond_45

    .line 1461
    return v0

    .line 1464
    :cond_45
    sget-object v4, Lcom/android/server/wm/ActivityRecord$1;->$SwitchMap$com$android$server$wm$ActivityStack$ActivityState:[I

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_70

    const/4 p2, 0x2

    if-eq v4, p2, :cond_66

    const/4 p2, 0x3

    if-eq v4, p2, :cond_66

    const/4 p2, 0x4

    if-eq v4, p2, :cond_5b

    goto :goto_65

    .line 1481
    :cond_5b
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz p2, :cond_65

    .line 1482
    if-eqz p1, :cond_64

    if-nez v3, :cond_64

    move v0, v2

    :cond_64
    return v0

    .line 1485
    :cond_65
    :goto_65
    return v0

    .line 1475
    :cond_66
    if-eqz p1, :cond_6f

    if-nez v3, :cond_6f

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz p1, :cond_6f

    move v0, v2

    :cond_6f
    return v0

    .line 1468
    :cond_70
    if-nez v1, :cond_79

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-nez p1, :cond_78

    if-nez p2, :cond_79

    :cond_78
    move v0, v2

    :cond_79
    return v0
.end method

.method clearOptionsLocked()V
    .registers 2

    .line 1759
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked(Z)V

    .line 1760
    return-void
.end method

.method clearOptionsLocked(Z)V
    .registers 2

    .line 1763
    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz p1, :cond_9

    .line 1764
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->abort()V

    .line 1766
    :cond_9
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1767
    return-void
.end method

.method clearVoiceSessionLocked()V
    .registers 2

    .line 2623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 2625
    return-void
.end method

.method completeResumeLocked()V
    .registers 5

    .line 2197
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    .line 2198
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 2199
    if-nez v0, :cond_c

    .line 2201
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 2203
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 2204
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2205
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 2206
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 2208
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2209
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 2212
    :cond_2d
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_36

    .line 2213
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 2217
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2219
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2221
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 2222
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2223
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2228
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 2229
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getCpuTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_61

    .line 2231
    :cond_5d
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    .line 2234
    :goto_61
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 2236
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 2237
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v1, "turnScreenOnFlag"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    goto :goto_74

    .line 2242
    :cond_71
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    .line 2244
    :goto_74
    return-void
.end method

.method continueLaunchTickingLocked()Z
    .registers 5

    .line 2305
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2306
    return v1

    .line 2309
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2310
    if-nez v0, :cond_11

    .line 2311
    return v1

    .line 2314
    :cond_11
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2315
    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2316
    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2317
    const/4 v0, 0x1

    return v0
.end method

.method createAppWindow(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIZZ)Lcom/android/server/wm/AppWindowToken;
    .registers 31
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1178
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
    .registers 18

    .line 1100
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_c6

    .line 1105
    const/4 v0, 0x1

    iput-boolean v0, v14, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 1108
    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1110
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->updateOverrideConfiguration()V

    .line 1113
    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2}, Landroid/view/IApplicationToken$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    iput-object v1, v14, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 1114
    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_40

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to add existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 1118
    :cond_40
    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    .line 1119
    if-eqz v15, :cond_ad

    .line 1122
    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v3, v14, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v4, 0x0

    if-eqz v3, :cond_57

    move v3, v0

    goto :goto_58

    :cond_57
    move v3, v4

    .line 1123
    :goto_58
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 1124
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    iget-boolean v8, v14, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    iget-object v9, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_70

    move v9, v0

    goto :goto_71

    :cond_70
    move v9, v4

    :goto_71
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iget v12, v14, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    iget-boolean v13, v14, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysFocusable()Z

    move-result v16

    .line 1122
    move-object/from16 v0, p0

    move-object v4, v5

    move-wide v5, v6

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move/from16 v13, v16

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityRecord;->createAppWindow(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIZZ)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 1134
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    const v1, 0x7fffffff

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    .line 1137
    :goto_9b
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/TaskRecord;->addActivityToTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v0

    iput-boolean v0, v14, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    iput-boolean v0, v14, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 1144
    return-void

    .line 1120
    :cond_ad
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

    .line 1101
    :cond_c6
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
    .registers 13

    .line 1602
    const-string v0, "Exception thrown sending new intent to "

    const-string v1, "ActivityTaskManager"

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1603
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1602
    move v4, p1

    move-object v6, p2

    invoke-interface/range {v3 .. v8}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V

    .line 1604
    new-instance p1, Lcom/android/internal/content/ReferrerIntent;

    invoke-direct {p1, p2, p3}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1605
    nop

    .line 1606
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result p2

    if-eqz p2, :cond_2b

    move p2, v2

    goto :goto_2c

    :cond_2b
    move p2, p3

    .line 1612
    :goto_2c
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_3a

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_3a

    if-eqz p2, :cond_8f

    .line 1613
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p2

    if-eqz p2, :cond_8f

    .line 1615
    :try_start_40
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1616
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_5e

    move v6, v2

    goto :goto_5f

    :cond_5e
    move v6, p3

    .line 1621
    :goto_5f
    invoke-static {p2, v6}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object p2

    .line 1620
    invoke-virtual {v3, v4, v5, p2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_66} :catch_7c
    .catch Ljava/lang/NullPointerException; {:try_start_40 .. :try_end_66} :catch_68

    .line 1622
    nop

    .line 1627
    goto :goto_90

    .line 1625
    :catch_68
    move-exception p2

    .line 1626
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f

    .line 1623
    :catch_7c
    move-exception p2

    .line 1624
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1629
    :cond_8f
    :goto_8f
    move p3, v2

    :goto_90
    if-eqz p3, :cond_95

    .line 1630
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V

    .line 1632
    :cond_95
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11

    .line 439
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 440
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "packageName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    const-string v2, " processName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchedFromUid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 443
    const-string v2, " launchedFromPackage="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    const-string v2, " userId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 445
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "app="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 446
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "frontOfTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 448
    const-string v2, " task="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "taskAffinity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mActivityComponent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 451
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_e2

    .line 453
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "baseDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    .line 455
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "resDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    :cond_ba
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "dataDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v2, :cond_e2

    .line 459
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "splitDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 460
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    :cond_e2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "stateNotNeeded="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 464
    const-string v2, " componentSpecified="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 465
    const-string v2, " mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    if-eqz v2, :cond_11a

    .line 468
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "rootVoiceInteraction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 470
    :cond_11a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "compat="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 471
    const-string v2, " labelRes=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    const-string v2, " icon=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    const-string v2, " theme=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->theme:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastReportedConfigurations:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/MergedConfiguration;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "CurrentConfiguration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1b1

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RequestedOverrideConfiguration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    :cond_1b1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1da

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ResolvedOverrideConfiguration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 483
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    :cond_1da
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_1fb

    .line 487
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

    .line 489
    :cond_1fb
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_203

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v2, :cond_224

    .line 490
    :cond_203
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "resultTo="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 491
    const-string v2, " resultWho="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 492
    const-string v2, " resultCode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 494
    :cond_224
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const-string v3, "null"

    if-eqz v2, :cond_319

    .line 495
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    .line 496
    if-nez v2, :cond_240

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_240

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 497
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    if-eqz v2, :cond_319

    .line 498
    :cond_240
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "taskDescription:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 499
    const-string v2, " label=\""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 500
    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 501
    const-string v2, " icon="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_284

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_285

    .line 503
    :cond_284
    move-object v2, v3

    .line 501
    :goto_285
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 504
    const-string v2, " iconResource="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 505
    const-string v2, " iconFilename="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 506
    const-string v2, " primaryColor="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 507
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " backgroundColor="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " statusBarColor="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " navigationBarColor="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 513
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    :cond_319
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_32a

    .line 517
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "results="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 519
    :cond_32a
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    const-string v4, "  - "

    if-eqz v2, :cond_37e

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_37e

    .line 520
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending Results:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
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

    .line 522
    if-eqz v5, :cond_359

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_35a

    :cond_359
    const/4 v5, 0x0

    .line 523
    :goto_35a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    if-nez v5, :cond_366

    .line 525
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37d

    .line 527
    :cond_366
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 528
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 530
    :goto_37d
    goto :goto_344

    .line 532
    :cond_37e
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v2, :cond_3b9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3b9

    .line 533
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending New Intents:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    move v2, v5

    :goto_392
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3b9

    .line 535
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 536
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    if-nez v6, :cond_3ae

    .line 538
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3b6

    .line 540
    :cond_3ae
    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7, v5, v7}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    :goto_3b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_392

    .line 544
    :cond_3b9
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_3ca

    .line 545
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "pendingOptions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 547
    :cond_3ca
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v2, :cond_3d1

    .line 548
    invoke-virtual {v2, p1, p2, v5}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 550
    :cond_3d1
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v2, :cond_3d8

    .line 551
    invoke-virtual {v2, p1, p2}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 553
    :cond_3d8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchFailed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 554
    const-string v2, " launchCount="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 555
    const-string v2, " lastLaunchTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 556
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-string v7, "0"

    if-nez v6, :cond_402

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_405

    .line 557
    :cond_402
    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 558
    :goto_405
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 559
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "haveState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 560
    const-string v2, " icicle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 561
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "state="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 562
    const-string v2, " stopped="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 563
    const-string v2, " delayedResume="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 564
    const-string v2, " finishing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 565
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "keysPaused="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 566
    const-string v2, " inHistory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 567
    const-string v2, " visible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 568
    const-string v2, " sleeping="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 569
    const-string v2, " idle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 570
    const-string v2, " mStartingWindowState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->startingWindowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fullscreen="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 573
    const-string v2, " noDisplay="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 574
    const-string v2, " immersive="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 575
    const-string v2, " launchMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 576
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "frozenBeforeDestroy="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 577
    const-string v2, " forceNewConfig="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 578
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_4f3

    .line 581
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    const-string v2, "requestedVrComponent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 585
    :cond_4f3
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4fd

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_51f

    .line 586
    :cond_4fd
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " nowVisible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 587
    const-string v2, " lastVisibleTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_519

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_51c

    .line 589
    :cond_519
    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 590
    :goto_51c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 592
    :cond_51f
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v0, :cond_53c

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDeferHidingClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    :cond_53c
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-nez v0, :cond_544

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    if-eqz v0, :cond_55f

    .line 596
    :cond_544
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "deferRelaunchUntilPaused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 597
    const-string v0, " configChangeFlags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    :cond_55f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v0, :cond_570

    .line 601
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "connections="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 603
    :cond_570
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_63b

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "resizeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastReportedMultiWindowMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastReportedPictureInPictureMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_5f4

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "supportsPictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "supportsEnterPipOnTaskSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    :cond_5f4
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_618

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "maxAspectRatio="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    :cond_618
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_63b

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "minAspectRatio="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    :cond_63b
    return-void
.end method

.method ensureActivityConfiguration(IZ)Z
    .registers 4

    .line 3167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    move-result p1

    return p1
.end method

.method ensureActivityConfiguration(IZZ)Z
    .registers 12

    .line 3187
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3188
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 3191
    return v2

    .line 3195
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    .line 3198
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 3199
    return v2

    .line 3202
    :cond_13
    if-nez p3, :cond_28

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p3, v1, :cond_27

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p3, v1, :cond_27

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result p3

    if-nez p3, :cond_28

    .line 3205
    :cond_27
    return v2

    .line 3211
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p3

    .line 3212
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    if-eq v1, p3, :cond_32

    move v1, v2

    goto :goto_33

    :cond_32
    move v1, v3

    .line 3213
    :goto_33
    if-eqz v1, :cond_37

    .line 3214
    iput p3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    .line 3217
    :cond_37
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->updateOverrideConfiguration()V

    .line 3223
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v5}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3224
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_58

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-nez v4, :cond_58

    if-nez v1, :cond_58

    .line 3227
    return v2

    .line 3235
    :cond_58
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v4}, Lcom/android/server/wm/ActivityRecord;->getConfigurationChanges(Landroid/content/res/Configuration;)I

    move-result v4

    .line 3238
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 3240
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 3242
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_72

    .line 3248
    return v2

    .line 3251
    :cond_72
    if-nez v4, :cond_82

    iget-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-nez v6, :cond_82

    .line 3256
    if-eqz v1, :cond_7e

    .line 3257
    invoke-direct {p0, p3, v5}, Lcom/android/server/wm/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V

    goto :goto_81

    .line 3259
    :cond_7e
    invoke-direct {p0, v5}, Lcom/android/server/wm/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3261
    :goto_81
    return v2

    .line 3270
    :cond_82
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-nez v6, :cond_8e

    .line 3273
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 3274
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 3275
    return v2

    .line 3285
    :cond_8e
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/ActivityRecord;->shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_a8

    iget-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-eqz v6, :cond_9b

    goto :goto_a8

    .line 3339
    :cond_9b
    if-eqz v1, :cond_a1

    .line 3340
    invoke-direct {p0, p3, v5}, Lcom/android/server/wm/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V

    goto :goto_a4

    .line 3342
    :cond_a1
    invoke-direct {p0, v5}, Lcom/android/server/wm/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3344
    :goto_a4
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 3346
    return v2

    .line 3287
    :cond_a8
    :goto_a8
    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    or-int/2addr p3, v4

    iput p3, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 3288
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 3289
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 3290
    invoke-static {v4}, Lcom/android/server/wm/ActivityRecord;->isResizeOnlyChange(I)Z

    move-result p1

    and-int/2addr p1, p2

    .line 3291
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result p2

    not-int p2, p2

    and-int/2addr p2, v4

    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->hasResizeChange(I)Z

    move-result p2

    .line 3292
    if-eqz p2, :cond_dc

    .line 3293
    nop

    .line 3294
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result p2

    .line 3295
    if-eqz p2, :cond_d8

    const/4 p2, 0x2

    goto :goto_d9

    .line 3296
    :cond_d8
    move p2, v2

    :goto_d9
    iput p2, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 3297
    goto :goto_de

    .line 3298
    :cond_dc
    iput v3, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 3300
    :goto_de
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p2

    if-nez p2, :cond_ea

    .line 3303
    const-string p1, "config"

    invoke-virtual {v0, p0, v2, p1}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    goto :goto_102

    .line 3304
    :cond_ea
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object p3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p2, p3, :cond_f5

    .line 3309
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 3310
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    .line 3311
    return v2

    .line 3312
    :cond_f5
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object p3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p2, p3, :cond_ff

    .line 3324
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_102

    .line 3328
    :cond_ff
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(ZZ)V

    .line 3332
    :goto_102
    return v3
.end method

.method finishLaunchTickingLocked()V
    .registers 3

    .line 2321
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 2322
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2323
    if-eqz v0, :cond_11

    .line 2324
    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2326
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

    .line 1315
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
    .registers 2

    .line 805
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    .line 800
    const/4 v0, 0x0

    return v0
.end method

.method getDisplay()Lcom/android/server/wm/ActivityDisplay;
    .registers 2

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1324
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method getDisplayId()I
    .registers 2

    .line 2573
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2574
    if-nez v0, :cond_8

    .line 2575
    const/4 v0, -0x1

    return v0

    .line 2577
    :cond_8
    iget v0, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    return v0
.end method

.method getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;
    .registers 2

    .line 1755
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

    .line 2693
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_9

    .line 2694
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    return v0

    .line 2697
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getOrientationIgnoreVisibility()I

    move-result v0

    return v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 810
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method getRequestedConfigurationOrientation()I
    .registers 3

    .line 2739
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrientation()I

    move-result v0

    .line 2740
    const/4 v1, 0x5

    if-ne v0, v1, :cond_19

    .line 2742
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 2743
    if-eqz v0, :cond_18

    iget-object v1, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_18

    .line 2744
    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getNaturalOrientation()I

    move-result v0

    return v0

    .line 2746
    :cond_18
    goto :goto_34

    :cond_19
    const/16 v1, 0xe

    if-ne v0, v1, :cond_24

    .line 2748
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0

    .line 2749
    :cond_24
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2750
    const/4 v0, 0x2

    return v0

    .line 2751
    :cond_2c
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2752
    const/4 v0, 0x1

    return v0

    .line 2754
    :cond_34
    :goto_34
    const/4 v0, 0x0

    return v0
.end method

.method getStackId()I
    .registers 2

    .line 1319
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

    .line 1896
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    return-object v0
.end method

.method getTaskRecord()Lcom/android/server/wm/TaskRecord;
    .registers 2

    .line 814
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    return-object v0
.end method

.method getTurnScreenOnFlag()Z
    .registers 2

    .line 3786
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    return v0
.end method

.method getUid()I
    .registers 2

    .line 3708
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;
    .registers 3

    .line 1549
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-nez v0, :cond_f

    .line 1550
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-direct {v0, v1, p0}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 1552
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    return-object v0
.end method

.method handleAlreadyVisible()Z
    .registers 5

    .line 2164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 2166
    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_19

    .line 2167
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

    .line 2170
    :cond_19
    goto :goto_1b

    .line 2169
    :catch_1a
    move-exception v1

    .line 2171
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

    .line 1092
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
    .registers 10

    .line 2762
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldUseSizeCompatMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2763
    return v1

    .line 2765
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2766
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2767
    if-nez v2, :cond_15

    .line 2769
    return v1

    .line 2772
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 2776
    iget v4, v3, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v5, 0x1

    if-eq v4, v0, :cond_25

    .line 2777
    return v5

    .line 2780
    :cond_25
    iget-object v0, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2781
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2782
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 2783
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 2784
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 2785
    if-ne v4, v3, :cond_40

    if-ne v0, v2, :cond_40

    .line 2787
    return v1

    .line 2789
    :cond_40
    if-le v4, v3, :cond_45

    if-le v0, v2, :cond_45

    .line 2791
    return v5

    .line 2793
    :cond_45
    if-lt v4, v3, :cond_88

    if-ge v0, v2, :cond_4a

    goto :goto_88

    .line 2800
    :cond_4a
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    const/high16 v8, 0x3f000000  # 0.5f

    if-lez v6, :cond_6a

    .line 2801
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v8

    .line 2802
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v6, v2

    .line 2803
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_6a

    .line 2805
    return v1

    .line 2808
    :cond_6a
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_87

    .line 2811
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v8

    .line 2812
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 2813
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_87

    .line 2815
    return v1

    .line 2818
    :cond_87
    return v5

    .line 2795
    :cond_88
    :goto_88
    return v5
.end method

.method isAlwaysFocusable()Z
    .registers 3

    .line 1498
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

.method isConfigurationCompatible(Landroid/content/res/Configuration;)Z
    .registers 6

    .line 3053
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrientation()I

    move-result v0

    .line 3054
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v3, :cond_11

    .line 3056
    return v2

    .line 3058
    :cond_11
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    .line 3060
    return v2

    .line 3062
    :cond_1d
    return v3
.end method

.method final isDestroyable()Z
    .registers 4

    .line 2581
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2d

    .line 2585
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2586
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eq p0, v2, :cond_2c

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq p0, v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v0, :cond_25

    goto :goto_2c

    .line 2591
    :cond_25
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v0, :cond_2a

    .line 2593
    return v1

    .line 2595
    :cond_2a
    const/4 v0, 0x1

    return v0

    .line 2589
    :cond_2c
    :goto_2c
    return v1

    .line 2583
    :cond_2d
    :goto_2d
    return v1
.end method

.method isFocusable()Z
    .registers 3

    .line 1365
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysFocusable()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/RootActivityContainer;->isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z

    move-result v0

    return v0
.end method

.method isInHistory()Z
    .registers 2

    .line 1350
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    return v0
.end method

.method isInStackLocked()Z
    .registers 2

    .line 1354
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1355
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isInterestingToUserLocked()Z
    .registers 3

    .line 2518
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

    .line 3589
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

    .line 1376
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

    .line 1359
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

    .line 1361
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

    .line 1359
    :goto_1e
    return v0
.end method

.method isProcessRunning()Z
    .registers 4

    .line 3557
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3558
    if-nez v0, :cond_16

    .line 3559
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    .line 3561
    :cond_16
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method isResizeable()Z
    .registers 2

    .line 1369
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

.method isResolverOrChildActivity()Z
    .registers 5

    .line 930
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 931
    return v1

    .line 934
    :cond_c
    :try_start_c
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    const-class v2, Ljava/lang/Object;

    .line 935
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 934
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_22} :catch_23

    return v0

    .line 936
    :catch_23
    move-exception v0

    .line 937
    return v1
.end method

.method isResolverOrDelegateActivity()Z
    .registers 3

    .line 925
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 926
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getSystemChooserActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 925
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

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

.method isResumedActivityOnDisplay()Z
    .registers 2

    .line 3798
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 3799
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method final isSleeping()Z
    .registers 2

    .line 1592
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1593
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v0

    :goto_11
    return v0
.end method

.method isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z
    .registers 3

    .line 1903
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z
    .registers 4

    .line 1910
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_9

    if-ne p2, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p1, 0x1

    :goto_a
    return p1
.end method

.method isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z
    .registers 5

    .line 1917
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_b

    if-eq p2, v0, :cond_b

    if-ne p3, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z
    .registers 6

    .line 1925
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_d

    if-eq p2, v0, :cond_d

    if-eq p3, v0, :cond_d

    if-ne p4, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method isTopRunningActivity()Z
    .registers 2

    .line 3790
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
    .registers 14

    .line 2463
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2464
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2465
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2466
    nop

    .line 2467
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

    .line 2468
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2470
    if-eqz v3, :cond_41

    .line 2471
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v4, v2, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v9, 0x0

    move-object v10, p1

    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)Z

    move-result p1

    return p1

    .line 2477
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p2, v5, p1}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_50

    goto :goto_51

    :cond_50
    move v4, v5

    :goto_51
    return v4

    .line 2468
    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public synthetic lambda$restartProcessIfVisible$0$ActivityRecord()V
    .registers 5

    .line 3530
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3531
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3532
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v1

    const/4 v2, 0x7

    if-gt v1, v2, :cond_18

    goto :goto_2c

    .line 3535
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3536
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3537
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const-string v3, "resetConfig"

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 3538
    return-void

    .line 3533
    :cond_2c
    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3536
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
    .registers 7

    .line 2061
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldResumeActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2065
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p1

    return p1

    .line 2067
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldPauseActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_55

    .line 2073
    sget-object p1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v1, "makeVisibleIfNeeded"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2075
    :try_start_1e
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v4, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 2076
    invoke-static {v3, v0, v4, v0}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v3

    .line 2075
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_37} :catch_38

    .line 2080
    goto :goto_55

    .line 2078
    :catch_38
    move-exception p1

    .line 2079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending pause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2082
    :cond_55
    :goto_55
    return v0
.end method

.method makeClientVisible()V
    .registers 5

    .line 2038
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 2040
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x1

    .line 2041
    invoke-static {v3}, Landroid/app/servertransaction/WindowVisibilityItem;->obtain(Z)Landroid/app/servertransaction/WindowVisibilityItem;

    move-result-object v3

    .line 2040
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2042
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2043
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2048
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v1, "makeClientVisible"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_34} :catch_35

    .line 2052
    :cond_34
    goto :goto_52

    .line 2050
    :catch_35
    move-exception v0

    .line 2051
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

    .line 2053
    :goto_52
    return-void
.end method

.method makeFinishingLocked()V
    .registers 2

    .line 1539
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    .line 1540
    return-void

    .line 1542
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1543
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_f

    .line 1544
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 1546
    :cond_f
    return-void
.end method

.method makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 5

    .line 2003
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_5f

    if-ne p0, p1, :cond_9

    goto :goto_5f

    .line 2012
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 2014
    :try_start_d
    iget-object v0, p1, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1b

    .line 2015
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2016
    iget-object p1, p1, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2018
    :cond_1b
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 2019
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    .line 2020
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->postPendingUiCleanMsg(Z)V

    .line 2021
    if-eqz p2, :cond_2d

    .line 2022
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->makeClientVisible()V

    goto :goto_2f

    .line 2024
    :cond_2d
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 2027
    :goto_2f
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2028
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3d} :catch_3e

    .line 2032
    goto :goto_5b

    .line 2029
    :catch_3e
    move-exception p1

    .line 2031
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception thrown making visible: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2033
    :goto_5b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()Z

    .line 2034
    return-void

    .line 2006
    :cond_5f
    :goto_5f
    return-void
.end method

.method public mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 3

    .line 2335
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->isCrashing()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->isNotResponding()Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method moveFocusableActivityToTop(Ljava/lang/String;)Z
    .registers 6

    .line 1503
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1507
    return v1

    .line 1510
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 1511
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1512
    if-nez v2, :cond_31

    .line 1513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveActivityStackToFront: invalid task or stack: activity="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " task="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return v1

    .line 1518
    :cond_31
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-ne v3, p0, :cond_3a

    .line 1522
    return v1

    .line 1529
    :cond_3a
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V

    .line 1531
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_4a

    .line 1533
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1535
    :cond_4a
    const/4 p1, 0x1

    return p1
.end method

.method notifyAppResumed(Z)V
    .registers 3

    .line 1929
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    .line 1930
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to notify resumed of non-existing app token: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    return-void

    .line 1934
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->notifyAppResumed(Z)V

    .line 1935
    return-void
.end method

.method notifyUnknownVisibilityLaunched()V
    .registers 3

    .line 1941
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_13

    .line 1942
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_13

    .line 1943
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 1944
    invoke-virtual {v0, v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyLaunched(Lcom/android/server/wm/AppWindowToken;)V

    .line 1947
    :cond_13
    return-void
.end method

.method public okToShowLocked()Z
    .registers 4

    .line 2503
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2504
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEncryptionAware()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2505
    return v1

    .line 2508
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2509
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2510
    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    goto :goto_35

    :cond_34
    :goto_34
    const/4 v1, 0x1

    .line 2508
    :goto_35
    return v1
.end method

.method onAnimationFinished()V
    .registers 5

    .line 2434
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->allResumedActivitiesIdle()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2435
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->isStoppingNoHistoryActivity()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 2446
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->processStoppingActivitiesLocked(Lcom/android/server/wm/ActivityRecord;ZZ)Ljava/util/ArrayList;

    goto :goto_29

    .line 2440
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2441
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 2449
    :cond_29
    :goto_29
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 3001
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3006
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->seq:I

    if-eq p1, v0, :cond_14

    .line 3007
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onMergedOverrideConfigurationChanged()V

    .line 3015
    :cond_14
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez p1, :cond_19

    .line 3016
    return-void

    .line 3018
    :cond_19
    nop

    .line 3019
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 3020
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->seq:I

    if-eq v0, v1, :cond_36

    .line 3021
    nop

    .line 3022
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->seq:I

    iput v0, p1, Landroid/content/res/Configuration;->seq:I

    .line 3023
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->onMergedOverrideConfigurationChanged()V

    .line 3026
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    .line 3027
    if-nez p1, :cond_3d

    .line 3028
    return-void

    .line 3030
    :cond_3d
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v0, :cond_45

    .line 3032
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityDisplay;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_68

    .line 3033
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldUseSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 3036
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getLastOverrideConfigurationChanges()I

    move-result p1

    .line 3039
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->hasResizeChange(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    const v0, 0x20000480

    and-int v1, p1, v0

    if-eq v1, v0, :cond_5e

    const/4 v0, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    .line 3045
    :goto_5f
    if-nez v0, :cond_65

    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_68

    .line 3046
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 3049
    :cond_68
    :goto_68
    return-void
.end method

.method public onStartingWindowDrawn(J)V
    .registers 6

    .line 2385
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2386
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    .line 2387
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    .line 2386
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyStartingWindowDrawn(IJ)V

    .line 2388
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2389
    return-void

    .line 2388
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onWindowsDrawn(ZJ)V
    .registers 11

    .line 2393
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2394
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mDrawn:Z

    .line 2395
    if-nez p1, :cond_11

    .line 2396
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2398
    :cond_11
    :try_start_11
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2399
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    invoke-virtual {p1, v1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyWindowsDrawn(IJ)Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    move-result-object p1

    .line 2400
    const/4 p2, -0x1

    if-eqz p1, :cond_25

    iget p3, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    goto :goto_26

    :cond_25
    move p3, p2

    .line 2401
    :goto_26
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->getLaunchState()I

    move-result p2

    :cond_2c
    move v6, p2

    .line 2402
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v2, 0x0

    int-to-long v4, p3

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 2404
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 2405
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    .line 2406
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-eqz p1, :cond_46

    .line 2407
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/wm/TaskRecord;->hasBeenVisible:Z

    .line 2409
    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_11 .. :try_end_47} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2410
    return-void

    .line 2409
    :catchall_4b
    move-exception p1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onWindowsGone()V
    .registers 3

    .line 2427
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2429
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 2430
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2431
    return-void

    .line 2430
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onWindowsVisible()V
    .registers 4

    .line 2414
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2415
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 2417
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v1, :cond_1f

    .line 2418
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 2419
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    .line 2420
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->scheduleAppGcsLocked()V

    .line 2422
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2423
    return-void

    .line 2422
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method pauseKeyDispatchingLocked()V
    .registers 3

    .line 1793
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_20

    .line 1794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 1798
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1799
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 1803
    :cond_20
    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 3

    .line 3803
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    .line 3804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to register remote animations with non-existing app token: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3806
    return-void

    .line 3808
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 3809
    return-void
.end method

.method relaunchActivityLocked(ZZ)V
    .registers 11

    .line 3427
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSuppressResizeConfigChanges:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    .line 3428
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 3429
    return-void

    .line 3432
    :cond_c
    nop

    .line 3433
    nop

    .line 3434
    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 3435
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3436
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    goto :goto_18

    .line 3434
    :cond_16
    move-object v2, v0

    move-object v3, v2

    .line 3442
    :goto_18
    if-eqz p1, :cond_1d

    const/16 v4, 0x7543

    goto :goto_1f

    .line 3443
    :cond_1d
    const/16 v4, 0x7544

    :goto_1f
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

    .line 3444
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 3442
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3446
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v4, v1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 3452
    :try_start_4d
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 3453
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->activityRelaunchingLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 3454
    iget v4, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    new-instance v5, Landroid/util/MergedConfiguration;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3456
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 3457
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 3454
    invoke-static {v2, v3, v4, v5, p2}, Landroid/app/servertransaction/ActivityRelaunchItem;->obtain(Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/servertransaction/ActivityRelaunchItem;

    move-result-object p2

    .line 3460
    if-eqz p1, :cond_7b

    .line 3461
    nop

    .line 3462
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v2

    .line 3461
    invoke-static {v2}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v2

    goto :goto_7f

    .line 3464
    :cond_7b
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v2

    .line 3466
    :goto_7f
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v3, v4}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v3

    .line 3467
    invoke-virtual {v3, p2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 3468
    invoke-virtual {v3, v2}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 3469
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_9a} :catch_9b

    .line 3475
    goto :goto_9c

    .line 3473
    :catch_9b
    move-exception p2

    .line 3477
    :goto_9c
    if-eqz p1, :cond_ac

    .line 3481
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3482
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3483
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_c0

    .line 3485
    :cond_ac
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 3486
    if-eqz p1, :cond_b9

    .line 3487
    iget-object p1, p1, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3489
    :cond_b9
    sget-object p1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string p2, "relaunchActivityLocked"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3492
    :goto_c0
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 3493
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 3494
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    .line 3495
    return-void
.end method

.method removeOrphanedStartingWindow(Z)V
    .registers 4

    .line 2660
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    if-eqz p1, :cond_f

    .line 2662
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    .line 2663
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 2665
    :cond_f
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V
    .registers 7

    .line 1568
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_36

    .line 1569
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_36

    .line 1570
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityResult;

    .line 1571
    iget-object v2, v1, Lcom/android/server/wm/ActivityResult;->mFrom:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, p1, :cond_19

    goto :goto_33

    .line 1572
    :cond_19
    iget-object v2, v1, Lcom/android/server/wm/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_20

    .line 1573
    if-eqz p2, :cond_29

    goto :goto_33

    .line 1575
    :cond_20
    iget-object v2, v1, Lcom/android/server/wm/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_33

    .line 1577
    :cond_29
    iget v1, v1, Lcom/android/server/wm/ActivityResult;->mRequestCode:I

    if-eq v1, p3, :cond_2e

    goto :goto_33

    .line 1579
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1569
    :goto_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1582
    :cond_36
    return-void
.end method

.method removeUriPermissionsLocked()V
    .registers 2

    .line 1786
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v0, :cond_a

    .line 1787
    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions()V

    .line 1788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 1790
    :cond_a
    return-void
.end method

.method removeWindowContainer()V
    .registers 3

    .line 1185
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    if-nez v0, :cond_9

    return-void

    .line 1187
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1188
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    .line 1187
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1189
    if-nez v0, :cond_3e

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeWindowContainer: Attempted to remove token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from non-existing displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1190
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return-void

    .line 1195
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1196
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1}, Landroid/view/IApplicationToken$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->removeAppToken(Landroid/os/IBinder;)V

    .line 1197
    return-void
.end method

.method reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V
    .registers 8

    .line 1204
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    .line 1205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reparent: Attempted to reparent non-existing app token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    return-void

    .line 1208
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    .line 1209
    const-string v1, ": task="

    if-eq v0, p1, :cond_8d

    .line 1217
    if-eqz v0, :cond_6f

    if-eqz p1, :cond_6f

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-ne v2, v3, :cond_32

    goto :goto_6f

    .line 1218
    :cond_32
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is in a different stack ("

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStackId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") than the parent of r="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStackId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1223
    :cond_6f
    :goto_6f
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Lcom/android/server/wm/AppWindowToken;->reparent(Lcom/android/server/wm/Task;I)V

    .line 1227
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p3

    .line 1229
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eq p3, v1, :cond_85

    .line 1230
    invoke-virtual {p3, p0}, Lcom/android/server/wm/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 1233
    :cond_85
    const/4 p3, 0x1

    invoke-virtual {v0, p0, p3}, Lcom/android/server/wm/TaskRecord;->removeActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 1235
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/TaskRecord;->addActivityAtIndex(ILcom/android/server/wm/ActivityRecord;)V

    .line 1236
    return-void

    .line 1210
    :cond_8d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already the parent of r="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public reportFullyDrawnLocked(Z)V
    .registers 8

    .line 2373
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2374
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionReportedDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    move-result-object p1

    .line 2375
    if-eqz p1, :cond_1a

    .line 2376
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v3, v2

    .line 2377
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->getLaunchState()I

    move-result v5

    .line 2376
    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 2379
    :cond_1a
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 4

    .line 2892
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-eqz v0, :cond_8

    .line 2893
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->resolveSizeCompatModeConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_1a

    .line 2895
    :cond_8
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2898
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2899
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskRecord;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2907
    :cond_1a
    :goto_1a
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    .line 2908
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    iput v0, p1, Landroid/content/res/Configuration;->seq:I

    .line 2909
    return-void
.end method

.method restartProcessIfVisible()V
    .registers 6

    .line 3504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request to restart process of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 3509
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 3510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 3511
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v0, :cond_2e

    .line 3514
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->updateOverrideConfiguration()V

    .line 3517
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_35

    .line 3518
    return-void

    .line 3522
    :cond_35
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "restartActivityProcess"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3524
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v0, :cond_7e

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    if-eqz v0, :cond_45

    goto :goto_7e

    .line 3542
    :cond_45
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_4c

    .line 3543
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V

    .line 3548
    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3549
    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/app/servertransaction/StopActivityItem;->obtain(ZI)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v4

    .line 3548
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_62} :catch_63

    .line 3552
    goto :goto_78

    .line 3550
    :catch_63
    move-exception v0

    .line 3551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown during restart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3553
    :goto_78
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleRestartTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 3554
    return-void

    .line 3528
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityRecord$rAbBM-9IZ5lau2L_lVdzsqLwNpA;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ActivityRecord$rAbBM-9IZ5lau2L_lVdzsqLwNpA;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3539
    return-void
.end method

.method resumeKeyDispatchingLocked()V
    .registers 3

    .line 1806
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_20

    .line 1807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 1811
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1812
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 1816
    :cond_20
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3594
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3595
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "launched_from_uid"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3596
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 3597
    const-string v2, "launched_from_package"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3599
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 3600
    const-string v2, "resolved_type"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3602
    :cond_29
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "component_specified"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3603
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3605
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_46

    .line 3606
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3609
    :cond_46
    const-string v0, "intent"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3610
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3611
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3613
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_6a

    .line 3614
    const-string v0, "persistable_bundle"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3615
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3616
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3618
    :cond_6a
    return-void
.end method

.method scheduleTopResumedActivityChanged(Z)Z
    .registers 6

    .line 712
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 717
    return v1

    .line 724
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 725
    invoke-static {p1}, Landroid/app/servertransaction/TopResumedActivityChangeItem;->obtain(Z)Landroid/app/servertransaction/TopResumedActivityChangeItem;

    move-result-object p1

    .line 724
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_20

    .line 729
    nop

    .line 730
    const/4 p1, 0x1

    return p1

    .line 726
    :catch_20
    move-exception p1

    .line 728
    return v1
.end method

.method setDeferHidingClient(Z)V
    .registers 3

    .line 1823
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-ne v0, p1, :cond_5

    .line 1824
    return-void

    .line 1826
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    .line 1827
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez p1, :cond_13

    .line 1830
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1832
    :cond_13
    return-void
.end method

.method setDisablePreviewScreenshots(Z)V
    .registers 3

    .line 2701
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    .line 2702
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to set disable screenshots of non-existing app token: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    return-void

    .line 2706
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->setDisablePreviewScreenshots(Z)V

    .line 2707
    return-void
.end method

.method setInheritShowWhenLocked(Z)V
    .registers 4

    .line 3718
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    .line 3719
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 3720
    return-void
.end method

.method setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 3

    .line 2722
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2723
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2722
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2724
    return-void
.end method

.method setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    .line 2714
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 2715
    return-void
.end method

.method setProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 3

    .line 1084
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1085
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1086
    :goto_c
    if-ne v0, p0, :cond_13

    .line 1087
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskRecord;->setRootProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 1089
    :cond_13
    return-void
.end method

.method setRequestedOrientation(I)V
    .registers 4

    .line 2668
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setOrientation(IZ)V

    .line 2669
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget v1, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityRequestedOrientationChanged(II)V

    .line 2671
    return-void
.end method

.method setShowWhenLocked(Z)V
    .registers 4

    .line 3712
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    .line 3713
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 3715
    return-void
.end method

.method setSizeConfigurations([I[I[I)V
    .registers 4

    .line 669
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mHorizontalSizeConfigurations:[I

    .line 670
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mVerticalSizeConfigurations:[I

    .line 671
    iput-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mSmallestSizeConfigurations:[I

    .line 672
    return-void
.end method

.method setSleeping(Z)V
    .registers 3

    .line 2522
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setSleeping(ZZ)V

    .line 2523
    return-void
.end method

.method setSleeping(ZZ)V
    .registers 4

    .line 2526
    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    if-ne p2, p1, :cond_7

    .line 2527
    return-void

    .line 2529
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 2531
    :try_start_d
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {p2, v0, p1}, Landroid/app/IApplicationThread;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 2532
    if-eqz p1, :cond_2b

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2b

    .line 2533
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2535
    :cond_2b
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->sleeping:Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2d} :catch_2e

    .line 2538
    goto :goto_4b

    .line 2536
    :catch_2e
    move-exception p1

    .line 2537
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception thrown when sleeping: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2540
    :cond_4b
    :goto_4b
    return-void
.end method

.method setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    .registers 4

    .line 1856
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, v0, :cond_5

    .line 1859
    return-void

    .line 1862
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 1864
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 1866
    if-eqz v0, :cond_10

    .line 1867
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/TaskRecord;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1873
    :cond_10
    sget-object p2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, p2, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result p2

    if-nez p2, :cond_3a

    .line 1874
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez p2, :cond_37

    .line 1875
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempted to notify stopping on non-existing app token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    return-void

    .line 1879
    :cond_37
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->detachChildren()V

    .line 1882
    :cond_3a
    sget-object p2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, p2, :cond_4a

    .line 1883
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 1884
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    goto :goto_72

    .line 1885
    :cond_4a
    sget-object p2, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, p2, :cond_5b

    .line 1886
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 1887
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p2, 0x2

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    goto :goto_72

    .line 1888
    :cond_5b
    sget-object p2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, p2, :cond_67

    .line 1889
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 p2, 0x17

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    goto :goto_72

    .line 1890
    :cond_67
    sget-object p2, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p1, p2, :cond_72

    .line 1891
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 p2, 0x18

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1893
    :cond_72
    :goto_72
    return-void
.end method

.method setTask(Lcom/android/server/wm/TaskRecord;)V
    .registers 3

    .line 825
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;Z)V

    .line 826
    return-void
.end method

.method setTask(Lcom/android/server/wm/TaskRecord;Z)V
    .registers 5

    .line 835
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 836
    return-void

    .line 839
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 840
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 844
    :goto_15
    if-eq v0, v1, :cond_23

    .line 845
    if-nez p2, :cond_1e

    if-eqz v0, :cond_1e

    .line 846
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 849
    :cond_1e
    if-eqz v1, :cond_23

    .line 850
    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityStack;->onActivityAddedToStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 854
    :cond_23
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    .line 856
    if-nez p2, :cond_2a

    .line 857
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onParentChanged()V

    .line 859
    :cond_2a
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 6

    .line 2605
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    .line 2606
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 2607
    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget v3, v3, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->createImageFilename(JI)Ljava/lang/String;

    move-result-object v1

    .line 2608
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget v3, v3, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2610
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2611
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 2612
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 2614
    :cond_33
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2615
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/TaskRecord;)V
    .registers 4

    .line 1306
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 1307
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/TaskRecord;)V

    .line 1309
    :cond_d
    return-void
.end method

.method setTurnScreenOn(Z)V
    .registers 2

    .line 3759
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    .line 3760
    return-void
.end method

.method setVisibility(Z)V
    .registers 4

    .line 1835
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1d

    .line 1836
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    return-void

    .line 1840
    :cond_1d
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/AppWindowToken;->setVisibility(ZZ)V

    .line 1841
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyVisibilityChanged(Lcom/android/server/wm/ActivityRecord;)V

    .line 1842
    return-void
.end method

.method setVisible(Z)V
    .registers 3

    .line 1846
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    .line 1847
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    const/4 v0, 0x1

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-eqz p1, :cond_d

    move p1, v0

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    .line 1848
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1849
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v0, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1850
    return-void
.end method

.method setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 2

    .line 2618
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2619
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 2620
    return-void
.end method

.method setWillCloseOrEnterPip(Z)V
    .registers 3

    .line 867
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_5

    .line 868
    return-void

    .line 871
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->setWillCloseOrEnterPip(Z)V

    .line 872
    return-void
.end method

.method shouldBeVisible()Z
    .registers 3

    .line 1991
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1992
    if-nez v0, :cond_8

    .line 1993
    const/4 v0, 0x0

    return v0

    .line 1998
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v0

    return v0
.end method

.method shouldBeVisible(Z)Z
    .registers 8

    .line 1967
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisibleIgnoringKeyguard(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    .line 1969
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 1970
    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 1971
    return v0

    .line 1976
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->isSleeping()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    .line 1977
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_21

    move v1, v2

    goto :goto_22

    :cond_21
    move v1, v0

    .line 1979
    :goto_22
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-ne p0, v3, :cond_2a

    move v3, v2

    goto :goto_2b

    :cond_2a
    move v3, v0

    .line 1981
    :goto_2b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1982
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityDisplay;->isTopNotPinnedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_3d

    move v4, v2

    goto :goto_3e

    :cond_3d
    move v4, v0

    .line 1985
    :goto_3e
    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v3, :cond_46

    if-eqz v4, :cond_46

    move v3, v2

    goto :goto_47

    :cond_46
    move v3, v0

    :goto_47
    invoke-virtual {p1, p0, v5, v3}, Lcom/android/server/wm/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result p1

    .line 1987
    if-eqz p1, :cond_50

    if-nez v1, :cond_50

    move v0, v2

    :cond_50
    return v0
.end method

.method shouldBeVisibleIgnoringKeyguard(Z)Z
    .registers 4

    .line 1958
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1959
    return v1

    .line 1962
    :cond_8
    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz p1, :cond_f

    :cond_e
    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2124
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    .line 2125
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_18

    goto :goto_5e

    .line 2129
    :cond_18
    if-ne p0, p1, :cond_1b

    .line 2130
    return v1

    .line 2133
    :cond_1b
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result p1

    if-nez p1, :cond_24

    .line 2135
    return v1

    .line 2138
    :cond_24
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz p1, :cond_29

    .line 2141
    return v1

    .line 2145
    :cond_29
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget-object p1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2146
    const/4 v0, -0x1

    if-eq p1, v0, :cond_56

    .line 2149
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_41

    .line 2151
    return v2

    .line 2154
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2155
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez p1, :cond_55

    .line 2158
    return v2

    .line 2160
    :cond_55
    return v1

    .line 2147
    :cond_56
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Activity not found in its task"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2126
    :cond_5e
    :goto_5e
    return v1
.end method

.method shouldResumeActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2106
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

    .line 2107
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    if-nez p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    .line 2106
    :goto_21
    return p1
.end method

.method shouldUpdateConfigForDisplayChanged()Z
    .registers 3

    .line 3163
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
    .registers 2

    .line 2829
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->hasFixedAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2831
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 2829
    :goto_25
    return v0
.end method

.method showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 5

    .line 2628
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZ)V

    .line 2629
    return-void
.end method

.method showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZ)V
    .registers 22

    .line 2633
    move-object/from16 v15, p0

    move-object/from16 v0, p1

    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_9

    .line 2634
    return-void

    .line 2636
    :cond_9
    iget-boolean v1, v15, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v1, :cond_e

    .line 2638
    return-void

    .line 2640
    :cond_e
    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_1a

    .line 2641
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1a

    .line 2643
    return-void

    .line 2646
    :cond_1a
    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v15, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2647
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 2648
    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, v15, Lcom/android/server/wm/ActivityRecord;->theme:I

    iget-object v4, v15, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v5, v15, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    iget v6, v15, Lcom/android/server/wm/ActivityRecord;->icon:I

    iget v7, v15, Lcom/android/server/wm/ActivityRecord;->logo:I

    iget v8, v15, Lcom/android/server/wm/ActivityRecord;->windowFlags:I

    .line 2650
    if-eqz v0, :cond_37

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    move-object v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v12

    .line 2651
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->allowTaskSnapshot()Z

    move-result v13

    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 2652
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v0

    sget-object v10, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v10

    const/4 v14, 0x1

    if-lt v0, v10, :cond_61

    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v0

    sget-object v10, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v10

    if-gt v0, v10, :cond_61

    move/from16 v16, v14

    goto :goto_64

    :cond_61
    const/4 v0, 0x0

    move/from16 v16, v0

    .line 2648
    :goto_64
    move-object/from16 v0, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v14, v16

    move/from16 v15, p4

    invoke-virtual/range {v0 .. v15}, Lcom/android/server/wm/ActivityRecord;->addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z

    move-result v0

    .line 2654
    if-eqz v0, :cond_79

    .line 2655
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    .line 2657
    :cond_79
    return-void
.end method

.method public startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V
    .registers 4

    .line 2339
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 2340
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez p1, :cond_23

    .line 2341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    return-void

    .line 2347
    :cond_23
    const v0, -0x20000001

    and-int/2addr p2, v0

    .line 2348
    if-nez p2, :cond_30

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 2350
    return-void

    .line 2353
    :cond_30
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V

    .line 2355
    :cond_35
    return-void
.end method

.method startLaunchTickingLocked()V
    .registers 5

    .line 2295
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_5

    .line 2296
    return-void

    .line 2298
    :cond_5
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    .line 2299
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 2300
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->continueLaunchTickingLocked()Z

    .line 2302
    :cond_16
    return-void
.end method

.method public stopFreezingScreenLocked(Z)V
    .registers 4

    .line 2358
    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz v0, :cond_12

    .line 2359
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 2360
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_e

    .line 2361
    return-void

    .line 2368
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 2370
    :cond_12
    return-void
.end method

.method supportsFreeform()Z
    .registers 2

    .line 1405
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

    .line 1384
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1385
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1384
    :goto_17
    return v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 2

    .line 1396
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_14

    .line 1397
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->supportsResizeableMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1396
    :goto_15
    return v0
.end method

.method takeFromHistory()V
    .registers 2

    .line 1340
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_15

    .line 1341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 1342
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_12

    .line 1343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    .line 1345
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 1347
    :cond_15
    return-void
.end method

.method takeOptionsLocked(Z)Landroid/app/ActivityOptions;
    .registers 3

    .line 1772
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1779
    if-eqz p1, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object p1

    if-nez p1, :cond_f

    .line 1780
    :cond_c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1782
    :cond_f
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3813
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 3814
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

    .line 3815
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

    .line 3814
    return-object v0

    .line 3817
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3818
    const-string v1, "ActivityRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3819
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3820
    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3821
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3822
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3823
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3824
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->stringName:Ljava/lang/String;

    .line 3825
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 3

    .line 622
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 623
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object p1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 624
    return-void
.end method

.method updateMultiWindowMode()V
    .registers 3

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_30

    .line 738
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 740
    return-void

    .line 744
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v0

    .line 745
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-eq v0, v1, :cond_2f

    .line 746
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 747
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityRecord;->scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V

    .line 749
    :cond_2f
    return-void

    .line 735
    :cond_30
    :goto_30
    return-void
.end method

.method updateOptionsLocked(Landroid/app/ActivityOptions;)V
    .registers 3

    .line 1635
    if-eqz p1, :cond_b

    .line 1637
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_9

    .line 1638
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 1640
    :cond_9
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1642
    :cond_b
    return-void
.end method

.method updatePictureInPictureMode(Landroid/graphics/Rect;Z)V
    .registers 5

    .line 761
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_5b

    .line 765
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 766
    :goto_1c
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    if-ne v0, v1, :cond_22

    if-eqz p2, :cond_5a

    .line 773
    :cond_22
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 774
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 775
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    .line 776
    if-eqz p1, :cond_54

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_54

    .line 777
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 778
    iget-object p1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 779
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, p1, p1}, Lcom/android/server/wm/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 780
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/TaskRecord;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 782
    :cond_54
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityRecord;->schedulePictureInPictureModeChanged(Landroid/content/res/Configuration;)V

    .line 783
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityRecord;->scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V

    .line 785
    :cond_5a
    return-void

    .line 762
    :cond_5b
    :goto_5b
    return-void
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 3829
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 3830
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3831
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3832
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3833
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3834
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5

    .line 3841
    const-wide v0, 0x10b00000001L

    const/4 v2, 0x0

    invoke-super {p0, p1, v0, v1, v2}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3842
    const-wide v0, 0x10b00000002L

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3843
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack$ActivityState;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3844
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    const-wide v1, 0x10800000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3845
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    const-wide v1, 0x10800000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3846
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 3847
    const-wide v0, 0x10500000006L

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3849
    :cond_47
    const-wide v0, 0x10800000007L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3850
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 4

    .line 3853
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 3854
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 3855
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3856
    return-void
.end method
