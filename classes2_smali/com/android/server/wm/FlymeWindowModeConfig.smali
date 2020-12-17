.class final Lcom/android/server/wm/FlymeWindowModeConfig;
.super Ljava/lang/Object;
.source "FlymeWindowModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FlymeWindowModeConfig$LayoutMode;
    }
.end annotation


# static fields
.field static final LAYOUT_MODE_CLIP:I = 0x2

.field static final LAYOUT_MODE_DEFAULT:I = 0x1

.field static final LAYOUT_MODE_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final mClipApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSingle:Lcom/android/server/wm/FlymeWindowModeConfig;


# instance fields
.field private final ACCESS_APPLICATION:Landroid/content/ComponentName;

.field private mKeyguardShowing:Z

.field private mLastWindowModeCache:Landroid/util/SparseIntArray;

.field private mSystemUIUid:I

.field private mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mClipApps:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/android/server/wm/FlymeWindowModeConfig;

    invoke-direct {v0}, Lcom/android/server/wm/FlymeWindowModeConfig;-><init>()V

    sput-object v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mSingle:Lcom/android/server/wm/FlymeWindowModeConfig;

    .line 75
    sget-object v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mClipApps:Ljava/util/ArrayList;

    const-string v1, "com.alibaba.android.rimet"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mClipApps:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mClipApps:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.meizu.settings.MzSettingsActivity$MzConfirmPasswordActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeConfig;->ACCESS_APPLICATION:Landroid/content/ComponentName;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeConfig;->mWhiteList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeConfig;->mLastWindowModeCache:Landroid/util/SparseIntArray;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/FlymeWindowModeConfig;->mSystemUIUid:I

    .line 72
    return-void
.end method

.method private canApplyWindowModePolicy(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9
    .param p1, "options"  # Landroid/app/ActivityOptions;
    .param p2, "activity"  # Lcom/android/server/wm/ActivityRecord;

    .line 115
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeWindowModeConfig;->mKeyguardShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 116
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeConfig;->ACCESS_APPLICATION:Landroid/content/ComponentName;

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeConfig;->mWhiteList:Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    sget-boolean v0, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_WINDOW_MODE_FORCE_RESIZE:Z

    if-nez v0, :cond_36

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 119
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 120
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_a0

    :cond_36
    nop

    .line 122
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "isGame"

    invoke-virtual {v0, v4, v3}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 124
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 125
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.tencent.mobileqq.minigame.ui.GameActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 126
    :cond_72
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v0, v0, Landroid/content/IntentExt;->mMiniAppId:Ljava/lang/String;

    if-eqz v0, :cond_9f

    .line 129
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, v5, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v5, v5, Landroid/content/IntentExt;->mMiniAppId:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "isMiniGame"

    invoke-virtual {v0, v5, v4}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    goto :goto_a0

    .line 133
    :cond_9f
    return v2

    .line 130
    :cond_a0
    :goto_a0
    return v1
.end method

.method static getInstance()Lcom/android/server/wm/FlymeWindowModeConfig;
    .registers 1

    .line 67
    sget-object v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mSingle:Lcom/android/server/wm/FlymeWindowModeConfig;

    return-object v0
.end method

.method private isStartSpaceMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 6
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "source"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "options"  # Landroid/app/ActivityOptions;

    .line 245
    if-eqz p3, :cond_25

    .line 246
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->isStartSpaceMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 247
    const/4 v0, 0x1

    return v0

    .line 249
    :cond_a
    sget-boolean v0, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_DEBUG_MODE:Z

    if-eqz v0, :cond_25

    .line 250
    if-nez p2, :cond_25

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_25

    .line 251
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 255
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method private updateSystemUIUid()V
    .registers 4

    .line 59
    iget v0, p0, Lcom/android/server/wm/FlymeWindowModeConfig;->mSystemUIUid:I

    if-nez v0, :cond_17

    .line 60
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 61
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    if-eqz v0, :cond_17

    .line 62
    const/4 v1, 0x0

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FlymeWindowModeConfig;->mSystemUIUid:I

    .line 65
    .end local v0  # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :cond_17
    return-void
.end method


# virtual methods
.method getLayoutMode(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/ActivityRecord;)I
    .registers 8
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "record"  # Lcom/android/server/wm/ActivityRecord;
    .annotation build Lcom/android/server/wm/FlymeWindowModeConfig$LayoutMode;
    .end annotation

    .line 281
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 282
    .local v0, "flags":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 283
    .local v1, "privateFlags":I
    and-int/lit16 v2, v0, 0x400

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    .line 284
    return v3

    .line 286
    :cond_12
    sget-object v2, Lcom/android/server/wm/FlymeWindowModeConfig;->mClipApps:Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_1e

    .line 287
    return v4

    .line 289
    :cond_1e
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-nez v2, :cond_30

    .line 290
    const/high16 v2, 0x4000000

    and-int/2addr v2, v0

    if-nez v2, :cond_2f

    .line 291
    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-eqz v2, :cond_2e

    .line 292
    return v4

    .line 294
    :cond_2e
    return v3

    .line 297
    :cond_2f
    return v4

    .line 300
    :cond_30
    const/4 v2, 0x0

    return v2
.end method

.method hasPackageWindowModeCache(I)Z
    .registers 5
    .param p1, "uid"  # I

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeConfig;->mLastWindowModeCache:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method isLaunchInSpaceMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .registers 8
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reusedActivity"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "source"  # Lcom/android/server/wm/ActivityRecord;
    .param p4, "options"  # Landroid/app/ActivityOptions;
    .param p5, "result"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 259
    if-eqz p2, :cond_2a

    .line 260
    iget v0, p5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2a

    .line 261
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/wm/FlymeWindowModeConfig;->isStartSpaceMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 262
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isMzWindowMode()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_2a

    .line 263
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 268
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method onCalculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityStack;[I)I
    .registers 28
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "layout"  # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"  # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"  # Landroid/app/ActivityOptions;
    .param p6, "phase"  # I
    .param p7, "currentParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p8, "outParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p9, "focusedStack"  # Lcom/android/server/wm/ActivityStack;
    .param p10, "result"  # [I

    .line 148
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    if-nez p5, :cond_13

    .line 149
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    .end local p5  # "options":Landroid/app/ActivityOptions;
    .local v6, "options":Landroid/app/ActivityOptions;
    goto :goto_15

    .line 148
    .end local v6  # "options":Landroid/app/ActivityOptions;
    .restart local p5  # "options":Landroid/app/ActivityOptions;
    :cond_13
    move-object/from16 v6, p5

    .line 151
    .end local p5  # "options":Landroid/app/ActivityOptions;
    .restart local v6  # "options":Landroid/app/ActivityOptions;
    :goto_15
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->isStartWindowMode()I

    move-result v7

    const/4 v8, -0x1

    const/4 v10, 0x1

    if-eq v7, v8, :cond_1f

    move v7, v10

    goto :goto_20

    :cond_1f
    const/4 v7, 0x0

    .line 152
    .local v7, "canApplyWindowMode":Z
    :goto_20
    const/4 v11, 0x0

    .line 153
    .local v11, "startWindowMode":Z
    const/4 v12, 0x0

    .line 154
    .local v12, "maySpaceMode":Z
    const/4 v13, 0x0

    .line 155
    .local v13, "uid":I
    if-eqz v7, :cond_1aa

    .line 157
    const/4 v14, 0x0

    if-eqz v1, :cond_68

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v15

    xor-int/2addr v15, v10

    .line 159
    .local v15, "shouldBeInvisible":Z
    if-nez v15, :cond_7a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->isMzWindowMode()Z

    move-result v16

    if-eqz v16, :cond_7a

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v8

    iget-boolean v15, v8, Lcom/android/server/wm/TaskStack;->mDeferBack:Z

    .line 161
    if-nez v15, :cond_7a

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityDisplay;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 163
    .local v8, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v8, :cond_67

    .line 164
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v16

    if-nez v16, :cond_63

    invoke-virtual {v8, v14}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v16

    if-nez v16, :cond_60

    goto :goto_63

    :cond_60
    const/16 v16, 0x0

    goto :goto_65

    :cond_63
    :goto_63
    move/from16 v16, v10

    :goto_65
    move/from16 v15, v16

    .line 166
    .end local v8  # "topStack":Lcom/android/server/wm/ActivityStack;
    :cond_67
    goto :goto_7a

    .line 169
    .end local v15  # "shouldBeInvisible":Z
    :cond_68
    if-eqz v3, :cond_78

    if-eqz v2, :cond_78

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v15

    if-eq v8, v15, :cond_78

    move v8, v10

    goto :goto_79

    :cond_78
    const/4 v8, 0x0

    :goto_79
    move v15, v8

    .line 171
    .restart local v15  # "shouldBeInvisible":Z
    :cond_7a
    :goto_7a
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    const-string v14, "WindowManager"

    if-eqz v8, :cond_e8

    .line 172
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCalculate isStartWindowMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->isStartWindowMode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " shouldBeInvisible="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " activity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " activityUid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    if-eqz v2, :cond_ad

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v9

    goto :goto_ae

    :cond_ad
    const/4 v9, -0x1

    :goto_ae
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " task="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " stack="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    if-eqz v1, :cond_c5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    goto :goto_c6

    :cond_c5
    const/4 v9, 0x0

    :goto_c6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " source="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " sourceUid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    if-eqz v3, :cond_dd

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v9

    goto :goto_de

    :cond_dd
    const/4 v9, -0x1

    :goto_de
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 172
    invoke-static {v14, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_e8
    if-eqz v15, :cond_fd

    .line 178
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->isStartWindowMode()I

    move-result v8

    if-ne v8, v10, :cond_f2

    move v8, v10

    goto :goto_f3

    :cond_f2
    const/4 v8, 0x0

    :goto_f3
    move v11, v8

    .line 179
    if-eqz v3, :cond_fd

    if-nez v11, :cond_fd

    .line 180
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->isMzWindowMode()Z

    move-result v11

    .line 181
    move v7, v11

    .line 184
    :cond_fd
    if-eqz v2, :cond_19b

    if-eqz v7, :cond_19b

    .line 185
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v13

    .line 186
    if-nez v11, :cond_181

    if-eqz v5, :cond_181

    .line 187
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 188
    .local v8, "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v9, :cond_12d

    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCalculate focusedStack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " focusedActivity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_12d
    if-eqz v8, :cond_181

    .line 192
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v9, :cond_155

    .line 193
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCalculate focusedActivityUid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " activityLaunchedUid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_155
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/ActivityStack;->isMzWindowMode()Z

    move-result v9

    if-eqz v9, :cond_177

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/FlymeWindowModeConfig;->updateSystemUIUid()V

    .line 198
    iget v9, v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mSystemUIUid:I

    if-eqz v9, :cond_168

    iget v9, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iget v10, v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mSystemUIUid:I

    if-eq v9, v10, :cond_181

    .line 199
    :cond_168
    if-eqz v15, :cond_174

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v9

    iget v10, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v9, v10, :cond_174

    const/4 v9, 0x1

    goto :goto_175

    :cond_174
    const/4 v9, 0x0

    :goto_175
    move v11, v9

    goto :goto_181

    .line 202
    :cond_177
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v9

    if-ne v9, v13, :cond_17f

    const/4 v9, 0x1

    goto :goto_180

    :cond_17f
    const/4 v9, 0x0

    :goto_180
    move v12, v9

    .line 206
    .end local v8  # "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_181
    :goto_181
    if-nez v11, :cond_196

    .line 207
    if-nez v3, :cond_196

    iget-object v8, v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mLastWindowModeCache:Landroid/util/SparseIntArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v13, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    if-eqz v8, :cond_196

    .line 208
    iget v8, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v13, v8, :cond_194

    const/4 v8, 0x1

    goto :goto_195

    :cond_194
    const/4 v8, 0x0

    :goto_195
    move v11, v8

    .line 211
    :cond_196
    iget-object v8, v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mLastWindowModeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v13}, Landroid/util/SparseIntArray;->delete(I)V

    .line 214
    :cond_19b
    if-eqz v7, :cond_1aa

    if-eqz v11, :cond_1aa

    if-eqz v2, :cond_1aa

    .line 215
    invoke-direct {v0, v6, v2}, Lcom/android/server/wm/FlymeWindowModeConfig;->canApplyWindowModePolicy(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    .line 216
    xor-int/lit8 v8, v7, 0x1

    const/4 v9, 0x0

    aput v8, p10, v9

    .line 220
    .end local v15  # "shouldBeInvisible":Z
    :cond_1aa
    const/4 v8, 0x2

    if-eqz v7, :cond_1cd

    if-eqz v11, :cond_1cd

    .line 221
    const/4 v9, 0x6

    iput v9, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 222
    invoke-virtual {v6, v9}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 223
    invoke-static {v13}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v9

    if-eqz v9, :cond_1cc

    if-nez v12, :cond_1cc

    .line 224
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/FlymeWindowModeConfig;->updateSystemUIUid()V

    .line 225
    iget v9, v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mSystemUIUid:I

    if-eqz v9, :cond_1cc

    if-eq v9, v13, :cond_1cc

    .line 226
    iget-object v9, v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mLastWindowModeCache:Landroid/util/SparseIntArray;

    const/4 v10, 0x1

    invoke-virtual {v9, v13, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 229
    :cond_1cc
    return v8

    .line 230
    :cond_1cd
    if-nez v7, :cond_1e3

    .line 232
    if-eqz v1, :cond_1de

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->isMzWindowMode()Z

    move-result v9

    if-eqz v9, :cond_1de

    .line 233
    const/4 v9, 0x1

    iput v9, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 234
    invoke-virtual {v6, v9}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 235
    return v8

    .line 232
    :cond_1de
    const/4 v9, 0x1

    .line 237
    iput v9, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 238
    const/4 v8, 0x0

    return v8

    .line 241
    :cond_1e3
    const/4 v8, 0x0

    return v8
.end method

.method removePackageWindowModeCache(I)V
    .registers 3
    .param p1, "uid"  # I

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeConfig;->mLastWindowModeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 138
    return-void
.end method

.method public setAppLayoutMode(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "mode"  # I
        .annotation build Lcom/android/server/wm/FlymeWindowModeConfig$LayoutMode;
        .end annotation
    .end param

    .line 81
    const/4 v0, 0x1

    if-eq p2, v0, :cond_15

    const/4 v0, 0x2

    if-eq p2, v0, :cond_7

    goto :goto_1b

    .line 87
    :cond_7
    sget-object v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mClipApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 88
    sget-object v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mClipApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 83
    :cond_15
    sget-object v0, Lcom/android/server/wm/FlymeWindowModeConfig;->mClipApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 85
    nop

    .line 92
    :cond_1b
    :goto_1b
    return-void
.end method

.method setKeyguardShowing(Z)V
    .registers 2
    .param p1, "keyguardShowing"  # Z

    .line 304
    iput-boolean p1, p0, Lcom/android/server/wm/FlymeWindowModeConfig;->mKeyguardShowing:Z

    .line 305
    return-void
.end method

.method updateWindowModeWhiteList(Landroid/content/ContentResolver;)V
    .registers 9
    .param p1, "contentResolver"  # Landroid/content/ContentResolver;

    .line 95
    const-string v0, "value"

    const-string v1, "WindowManager"

    const-string v2, "updateWindowModeWhiteList"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v2, "window_mode_app_white_list"

    invoke-static {p1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "json":Ljava/lang/String;
    if-nez v2, :cond_12

    .line 98
    return-void

    .line 102
    :cond_12
    :try_start_12
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 104
    .local v0, "valueArray":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v4, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_35

    .line 106
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 108
    .end local v5  # "i":I
    :cond_35
    iput-object v4, p0, Lcom/android/server/wm/FlymeWindowModeConfig;->mWhiteList:Ljava/util/ArrayList;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_37} :catch_38

    .line 111
    .end local v0  # "valueArray":Lorg/json/JSONArray;
    .end local v3  # "jsonObject":Lorg/json/JSONObject;
    .end local v4  # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_59

    .line 109
    :catch_38
    move-exception v0

    .line 110
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse the String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0  # "e":Lorg/json/JSONException;
    :goto_59
    return-void
.end method
