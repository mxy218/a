.class final Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowingModeTransitionInfoSnapshot"
.end annotation


# instance fields
.field final activityRecordIdHashCode:I

.field private final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final bindApplicationDelayMs:I

.field private final launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

.field private final launchedActivityLaunchToken:Ljava/lang/String;

.field private final launchedActivityLaunchedFromPackage:Ljava/lang/String;

.field final launchedActivityName:Ljava/lang/String;

.field final launchedActivityShortComponentName:Ljava/lang/String;

.field final packageName:Ljava/lang/String;

.field private final processName:Ljava/lang/String;

.field private final processRecord:Lcom/android/server/wm/WindowProcessController;

.field private final reason:I

.field private final startingWindowDelayMs:I

.field final synthetic this$0:Lcom/android/server/wm/ActivityMetricsLogger;

.field final type:I

.field final userId:I

.field final windowsDrawnDelayMs:I

.field final windowsFullyDrawnDelayMs:I


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 4

    .line 218
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;)V

    .line 219
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V
    .registers 4

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 223
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V

    .line 224
    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V
    .registers 6

    .line 227
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->this$0:Lcom/android/server/wm/ActivityMetricsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 229
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 230
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 231
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    .line 232
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    .line 233
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_23

    .line 234
    const/4 v0, 0x0

    goto :goto_29

    .line 235
    :cond_23
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getRequiredAbi()Ljava/lang/String;

    move-result-object v0

    :goto_29
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    .line 236
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$200(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->reason:I

    .line 237
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$300(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->startingWindowDelayMs:I

    .line 238
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    .line 239
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 240
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->access$600(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    .line 241
    invoke-static {p1, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->access$700(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    .line 242
    iget-object p1, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processName:Ljava/lang/String;

    .line 243
    iget p1, p3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->userId:I

    .line 244
    iget-object p1, p3, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    .line 245
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->activityRecordIdHashCode:I

    .line 246
    iput p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    .line 247
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$1;)V
    .registers 6

    .line 194
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .registers 1

    .line 194
    iget p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->reason:I

    return p0
.end method

.method static synthetic access$1800(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .registers 1

    .line 194
    iget p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->startingWindowDelayMs:I

    return p0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .registers 1

    .line 194
    iget p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    return p0
.end method

.method static synthetic access$2000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method getLaunchState()I
    .registers 3

    .line 250
    iget v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_13

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    const/16 v1, 0x9

    if-eq v0, v1, :cond_f

    .line 258
    const/4 v0, -0x1

    return v0

    .line 254
    :cond_f
    const/4 v0, 0x3

    return v0

    .line 252
    :cond_11
    const/4 v0, 0x2

    return v0

    .line 256
    :cond_13
    const/4 v0, 0x1

    return v0
.end method
