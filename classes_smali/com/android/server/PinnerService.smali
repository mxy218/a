.class public final Lcom/android/server/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PinnerService$PinnerHandler;,
        Lcom/android/server/PinnerService$PinnedApp;,
        Lcom/android/server/PinnerService$PinRange;,
        Lcom/android/server/PinnerService$PinnedFile;,
        Lcom/android/server/PinnerService$BinderService;,
        Lcom/android/server/PinnerService$PinRangeSourceStream;,
        Lcom/android/server/PinnerService$PinRangeSourceStatic;,
        Lcom/android/server/PinnerService$PinRangeSource;,
        Lcom/android/server/PinnerService$AppKey;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_CAMERA:I = 0x0

.field private static final KEY_HOME:I = 0x1

.field private static final MATCH_FLAGS:I = 0xd0000

.field private static final MAX_CAMERA_PIN_SIZE:I = 0x5000000

.field private static final MAX_HOME_PIN_SIZE:I = 0x600000

.field private static final PAGE_SIZE:I

.field private static final PIN_META_FILENAME:Ljava/lang/String; = "pinlist.meta"

.field private static final TAG:Ljava/lang/String; = "PinnerService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mBinderService:Lcom/android/server/PinnerService$BinderService;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mPendingRepin:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedApps:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/PinnerService$PinnedApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedFiles:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 93
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 130
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    .line 136
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 141
    new-instance v0, Lcom/android/server/PinnerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PinnerService$1;-><init>(Lcom/android/server/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    iput-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 161
    .local v0, "shouldPinCamera":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 163
    .local v1, "shouldPinHome":Z
    if-eqz v0, :cond_4d

    .line 164
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_4d
    if-eqz v1, :cond_59

    .line 167
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_59
    new-instance v2, Lcom/android/server/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/PinnerService$PinnerHandler;-><init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 171
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v2, p0, Lcom/android/server/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 172
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 173
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/PinnerService;->mAm:Landroid/app/IActivityManager;

    .line 175
    iget-object v2, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    .line 177
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    invoke-direct {p0}, Lcom/android/server/PinnerService;->registerUidListener()V

    .line 183
    invoke-direct {p0}, Lcom/android/server/PinnerService;->registerUserSetupCompleteListener()V

    .line 184
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PinnerService;IIZ)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/PinnerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # Z

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/PinnerService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/PinnerService;
    .param p1, "x1"  # I

    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PinnerService;

    .line 88
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1200(JJ)V
    .registers 4
    .param p0, "x0"  # J
    .param p2, "x1"  # J

    .line 88
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/PinnerService;)Landroid/app/ActivityManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PinnerService;

    .line 88
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/PinnerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/PinnerService;

    .line 88
    invoke-direct {p0}, Lcom/android/server/PinnerService;->handlePinOnStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PinnerService;

    .line 88
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/PinnerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PinnerService;
    .param p1, "x1"  # I

    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handleUidActive(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/PinnerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PinnerService;
    .param p1, "x1"  # I

    .line 88
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handleUidGone(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PinnerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PinnerService;

    .line 88
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PinnerService;

    .line 88
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PinnerService;

    .line 88
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private static clamp(III)I
    .registers 4
    .param p0, "min"  # I
    .param p1, "value"  # I
    .param p2, "max"  # I

    .line 856
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;
    .registers 11
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "userHandle"  # I
    .param p3, "defaultToSystemApp"  # Z

    .line 407
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 408
    return-object v0

    .line 411
    :cond_4
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xd0000

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 418
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_13

    .line 419
    return-object v0

    .line 422
    :cond_13
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v3}, Lcom/android/server/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 423
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    .line 426
    :cond_20
    if-eqz p3, :cond_51

    .line 427
    iget-object v3, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 428
    invoke-virtual {v3, p1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 429
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 430
    .local v3, "systemAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 431
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4f

    .line 433
    if-nez v3, :cond_4e

    .line 434
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_4f

    .line 437
    :cond_4e
    return-object v0

    .line 440
    .end local v5  # "info":Landroid/content/pm/ResolveInfo;
    :cond_4f
    :goto_4f
    goto :goto_31

    .line 441
    :cond_50
    return-object v3

    .line 444
    .end local v2  # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3  # "systemAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_51
    return-object v0
.end method

.method private getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 8
    .param p1, "userHandle"  # I

    .line 375
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "cameraIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 384
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_1a

    .line 385
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 386
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 392
    :cond_1a
    if-nez v3, :cond_27

    .line 393
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 394
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 397
    :cond_27
    return-object v3
.end method

.method private getHomeInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p1, "userHandle"  # I

    .line 401
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 402
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method private getInfoForKey(II)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p1, "key"  # I
    .param p2, "userHandle"  # I

    .line 512
    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    .line 518
    const/4 v0, 0x0

    return-object v0

    .line 516
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/PinnerService;->getHomeInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 514
    :cond_c
    invoke-direct {p0, p2}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method private getNameForKey(I)Ljava/lang/String;
    .registers 3
    .param p1, "key"  # I

    .line 526
    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    .line 532
    const/4 v0, 0x0

    return-object v0

    .line 530
    :cond_7
    const-string v0, "Home"

    return-object v0

    .line 528
    :cond_a
    const-string v0, "Camera"

    return-object v0
.end method

.method private getSizeLimitForKey(I)I
    .registers 3
    .param p1, "key"  # I

    .line 540
    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    .line 546
    const/4 v0, 0x0

    return v0

    .line 544
    :cond_7
    const/high16 v0, 0x600000

    return v0

    .line 542
    :cond_a
    const/high16 v0, 0x5000000

    return v0
.end method

.method private getUidForKey(I)I
    .registers 4
    .param p1, "key"  # I

    .line 497
    monitor-enter p0

    .line 498
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedApp;

    .line 499
    .local v0, "existing":Lcom/android/server/PinnerService$PinnedApp;
    if-eqz v0, :cond_16

    iget-boolean v1, v0, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    if-eqz v1, :cond_16

    .line 500
    iget v1, v0, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    goto :goto_17

    .line 501
    :cond_16
    const/4 v1, -0x1

    :goto_17
    monitor-exit p0

    .line 499
    return v1

    .line 502
    .end local v0  # "existing":Lcom/android/server/PinnerService$PinnedApp;
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private handlePinOnStart()V
    .registers 10

    .line 240
    const-string v0, "dalvik.vm.boot-image"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "bootImage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 242
    .local v1, "filesToPin":[Ljava/lang/String;
    const-string v2, "apex.art"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 244
    iget-object v2, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    .line 248
    :cond_1f
    iget-object v2, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 252
    :goto_2c
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_2f
    if-ge v4, v2, :cond_60

    aget-object v5, v1, v4

    .line 253
    .local v5, "fileToPin":Ljava/lang/String;
    const v6, 0x7fffffff

    invoke-static {v5, v6, v3}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v6

    .line 256
    .local v6, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-nez v6, :cond_53

    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to pin file = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PinnerService"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    goto :goto_5a

    .line 261
    :cond_53
    monitor-enter p0

    .line 262
    :try_start_54
    iget-object v7, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    monitor-exit p0

    .line 252
    .end local v5  # "fileToPin":Ljava/lang/String;
    .end local v6  # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :goto_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 263
    .restart local v5  # "fileToPin":Ljava/lang/String;
    .restart local v6  # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_5d
    move-exception v2

    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_5d

    throw v2

    .line 265
    .end local v5  # "fileToPin":Ljava/lang/String;
    .end local v6  # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :cond_60
    return-void
.end method

.method private handleUidActive(I)V
    .registers 3
    .param p1, "uid"  # I

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    .line 337
    return-void
.end method

.method private handleUidGone(I)V
    .registers 7
    .param p1, "uid"  # I

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    .line 323
    monitor-enter p0

    .line 326
    :try_start_5
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 327
    .local v1, "key":I
    if-ne v1, v3, :cond_1e

    .line 328
    monitor-exit p0

    return-void

    .line 330
    :cond_1e
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_30

    .line 332
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    .line 333
    return-void

    .line 331
    .end local v1  # "key":I
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 4
    .param p1, "info"  # Landroid/content/pm/ActivityInfo;

    .line 367
    const-class v0, Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 368
    const/4 v0, 0x1

    return v0

    .line 371
    :cond_10
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$6bekYOn4YXi0x7vYNWO40QyA-s8(Lcom/android/server/PinnerService;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    return-void
.end method

.method public static synthetic lambda$GeEX-8XoHeV0LEszxat7jOSlrs4(Lcom/android/server/PinnerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->pinApps(I)V

    return-void
.end method

.method private static maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7
    .param p0, "zipFile"  # Ljava/util/zip/ZipFile;
    .param p1, "fileName"  # Ljava/lang/String;

    .line 705
    const-string/jumbo v0, "pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 706
    .local v0, "pinMetaEntry":Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    .line 707
    .local v1, "pinMetaStream":Ljava/io/InputStream;
    if-eqz v0, :cond_22

    .line 709
    :try_start_a
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_10

    move-object v1, v2

    .line 715
    goto :goto_22

    .line 710
    :catch_10
    move-exception v2

    .line 711
    .local v2, "ex":Ljava/io/IOException;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 712
    const-string v4, "error reading pin metadata \"%s\": pinning as blob"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 711
    const-string v4, "PinnerService"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    .end local v2  # "ex":Ljava/io/IOException;
    :cond_22
    :goto_22
    return-object v1
.end method

.method private static maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .registers 5
    .param p0, "fileName"  # Ljava/lang/String;

    .line 685
    const/4 v0, 0x0

    .line 687
    .local v0, "zip":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8

    move-object v0, v1

    .line 694
    goto :goto_1a

    .line 688
    :catch_8
    move-exception v1

    .line 689
    .local v1, "ex":Ljava/io/IOException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 690
    const-string v3, "could not open \"%s\" as zip: pinning as blob"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 689
    const-string v3, "PinnerService"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    .end local v1  # "ex":Ljava/io/IOException;
    :goto_1a
    return-object v0
.end method

.method private pinApp(IIZ)V
    .registers 8
    .param p1, "key"  # I
    .param p2, "userHandle"  # I
    .param p3, "force"  # Z

    .line 474
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getUidForKey(I)I

    move-result v0

    .line 478
    .local v0, "uid":I
    if-nez p3, :cond_1c

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 479
    monitor-enter p0

    .line 480
    :try_start_a
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    monitor-exit p0

    .line 482
    return-void

    .line 481
    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v1

    .line 484
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->unpinApp(I)V

    .line 485
    invoke-direct {p0, p1, p2}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 486
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_28

    .line 487
    invoke-direct {p0, p1, v1}, Lcom/android/server/PinnerService;->pinApp(ILandroid/content/pm/ApplicationInfo;)V

    .line 489
    :cond_28
    return-void
.end method

.method private pinApp(ILandroid/content/pm/ApplicationInfo;)V
    .registers 15
    .param p1, "key"  # I
    .param p2, "appInfo"  # Landroid/content/pm/ApplicationInfo;

    .line 557
    if-nez p2, :cond_3

    .line 558
    return-void

    .line 561
    :cond_3
    new-instance v0, Lcom/android/server/PinnerService$PinnedApp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/PinnerService$PinnedApp;-><init>(Lcom/android/server/PinnerService;Landroid/content/pm/ApplicationInfo;Lcom/android/server/PinnerService$1;)V

    .line 562
    .local v0, "pinnedApp":Lcom/android/server/PinnerService$PinnedApp;
    monitor-enter p0

    .line 563
    :try_start_a
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_aa

    .line 567
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getSizeLimitForKey(I)I

    move-result v1

    .line 568
    .local v1, "pinSizeLimit":I
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 569
    .local v2, "apk":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v3

    .line 570
    .local v3, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-nez v3, :cond_38

    .line 571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to pin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PinnerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void

    .line 577
    :cond_38
    monitor-enter p0

    .line 578
    :try_start_39
    iget-object v4, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_a7

    .line 582
    const-string v4, "arm"

    .line 583
    .local v4, "arch":Ljava/lang/String;
    iget-object v5, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_60

    .line 584
    iget-object v5, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v5}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "64"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7b

    .line 588
    :cond_60
    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-static {v5}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 589
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "64"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 594
    :cond_7b
    :goto_7b
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, "baseCodePath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 597
    .local v7, "files":[Ljava/lang/String;
    :try_start_80
    invoke-static {v5, v4}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_84} :catch_86

    move-object v7, v8

    .line 598
    :goto_85
    goto :goto_88

    :catch_86
    move-exception v8

    goto :goto_85

    .line 599
    :goto_88
    if-nez v7, :cond_8b

    .line 600
    return-void

    .line 604
    :cond_8b
    array-length v8, v7

    move-object v9, v3

    move v3, v6

    .end local v3  # "pf":Lcom/android/server/PinnerService$PinnedFile;
    .local v9, "pf":Lcom/android/server/PinnerService$PinnedFile;
    :goto_8e
    if-ge v3, v8, :cond_a6

    aget-object v10, v7, v3

    .line 605
    .local v10, "file":Ljava/lang/String;
    invoke-static {v10, v1, v6}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v9

    .line 606
    if-eqz v9, :cond_a3

    .line 607
    monitor-enter p0

    .line 608
    :try_start_99
    iget-object v11, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    monitor-exit p0

    goto :goto_a3

    :catchall_a0
    move-exception v3

    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_99 .. :try_end_a2} :catchall_a0

    throw v3

    .line 604
    .end local v10  # "file":Ljava/lang/String;
    :cond_a3
    :goto_a3
    add-int/lit8 v3, v3, 0x1

    goto :goto_8e

    .line 615
    :cond_a6
    return-void

    .line 579
    .end local v4  # "arch":Ljava/lang/String;
    .end local v5  # "baseCodePath":Ljava/lang/String;
    .end local v7  # "files":[Ljava/lang/String;
    .end local v9  # "pf":Lcom/android/server/PinnerService$PinnedFile;
    .restart local v3  # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_a7
    move-exception v4

    :try_start_a8
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v4

    .line 564
    .end local v1  # "pinSizeLimit":I
    .end local v2  # "apk":Ljava/lang/String;
    .end local v3  # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_aa
    move-exception v1

    :try_start_ab
    monitor-exit p0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v1
.end method

.method private pinApps(I)V
    .registers 5
    .param p1, "userHandle"  # I

    .line 453
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 454
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 455
    .local v2, "key":I
    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    .line 453
    .end local v2  # "key":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 457
    .end local v0  # "i":I
    :cond_1c
    return-void
.end method

.method private static pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;
    .registers 8
    .param p0, "fileToPin"  # Ljava/lang/String;
    .param p1, "maxBytesToPin"  # I
    .param p2, "attemptPinIntrospection"  # Z

    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "fileAsZip":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 660
    .local v1, "pinRangeStream":Ljava/io/InputStream;
    if-eqz p2, :cond_c

    .line 661
    :try_start_4
    invoke-static {p0}, Lcom/android/server/PinnerService;->maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object v2

    move-object v0, v2

    goto :goto_c

    .line 675
    :catchall_a
    move-exception v2

    goto :goto_47

    .line 664
    :cond_c
    :goto_c
    if-eqz v0, :cond_13

    .line 665
    invoke-static {v0, p0}, Lcom/android/server/PinnerService;->maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 668
    :cond_13
    const-string v2, "PinnerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pinRangeStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    if-eqz v1, :cond_32

    .line 671
    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStream;

    invoke-direct {v2, v1}, Lcom/android/server/PinnerService$PinRangeSourceStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_3b

    .line 672
    :cond_32
    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStatic;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    invoke-direct {v2, v3, v4}, Lcom/android/server/PinnerService$PinRangeSourceStatic;-><init>(II)V

    :goto_3b
    nop

    .line 673
    .local v2, "pinRangeSource":Lcom/android/server/PinnerService$PinRangeSource;
    invoke-static {p0, p1, v2}, Lcom/android/server/PinnerService;->pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v3
    :try_end_40
    .catchall {:try_start_4 .. :try_end_40} :catchall_a

    .line 675
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 676
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 673
    return-object v3

    .line 675
    .end local v2  # "pinRangeSource":Lcom/android/server/PinnerService$PinRangeSource;
    :goto_47
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 676
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    throw v2
.end method

.method private static pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;
    .registers 22
    .param p0, "fileToPin"  # Ljava/lang/String;
    .param p1, "maxBytesToPin"  # I
    .param p2, "pinRangeSource"  # Lcom/android/server/PinnerService$PinRangeSource;

    .line 785
    move-object/from16 v7, p0

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    move-object v1, v0

    .line 786
    .local v1, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v2, -0x1

    .line 787
    .local v2, "address":J
    const/4 v4, 0x0

    .line 790
    .local v4, "mapSize":I
    :try_start_b
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sget v5, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v0, v5

    sget v5, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v0, v5

    .line 793
    .local v0, "openFlags":I
    const/4 v5, 0x0

    invoke-static {v7, v0, v5}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v16
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_18} :catch_128
    .catchall {:try_start_b .. :try_end_18} :catchall_11e

    .line 794
    .end local v1  # "fd":Ljava/io/FileDescriptor;
    .local v16, "fd":Ljava/io/FileDescriptor;
    :try_start_18
    invoke-static/range {v16 .. v16}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v10, v1, Landroid/system/StructStat;->st_size:J

    const-wide/32 v12, 0x7fffffff

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_18 .. :try_end_25} :catch_116
    .catchall {:try_start_18 .. :try_end_25} :catchall_10e

    long-to-int v6, v10

    .line 795
    .end local v4  # "mapSize":I
    .local v6, "mapSize":I
    const-wide/16 v10, 0x0

    int-to-long v12, v6

    :try_start_29
    sget v14, Landroid/system/OsConstants;->PROT_READ:I

    sget v15, Landroid/system/OsConstants;->MAP_SHARED:I

    const-wide/16 v17, 0x0

    invoke-static/range {v10 .. v18}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v10
    :try_end_33
    .catch Landroid/system/ErrnoException; {:try_start_29 .. :try_end_33} :catch_104
    .catchall {:try_start_29 .. :try_end_33} :catchall_fc

    .line 800
    .end local v2  # "address":J
    .local v10, "address":J
    :try_start_33
    new-instance v1, Lcom/android/server/PinnerService$PinRange;

    invoke-direct {v1}, Lcom/android/server/PinnerService$PinRange;-><init>()V

    move-object v12, v1

    .line 801
    .local v12, "pinRange":Lcom/android/server/PinnerService$PinRange;
    const/4 v1, 0x0

    .line 804
    .local v1, "bytesPinned":I
    sget v2, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v2, p1, v2
    :try_end_3e
    .catch Landroid/system/ErrnoException; {:try_start_33 .. :try_end_3e} :catch_f1
    .catchall {:try_start_33 .. :try_end_3e} :catchall_e9

    if-eqz v2, :cond_5b

    .line 805
    :try_start_40
    sget v2, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v2, p1, v2
    :try_end_44
    .catch Landroid/system/ErrnoException; {:try_start_40 .. :try_end_44} :catch_50
    .catchall {:try_start_40 .. :try_end_44} :catchall_49

    sub-int v2, p1, v2

    move v13, v1

    move v14, v2

    .end local p1  # "maxBytesToPin":I
    .local v2, "maxBytesToPin":I
    goto :goto_5e

    .line 848
    .end local v0  # "openFlags":I
    .end local v1  # "bytesPinned":I
    .end local v2  # "maxBytesToPin":I
    .end local v12  # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .restart local p1  # "maxBytesToPin":I
    :catchall_49
    move-exception v0

    move/from16 v14, p1

    move-object/from16 v15, p2

    goto/16 :goto_157

    .line 844
    :catch_50
    move-exception v0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move v4, v6

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_12d

    .line 804
    .restart local v0  # "openFlags":I
    .restart local v1  # "bytesPinned":I
    .restart local v12  # "pinRange":Lcom/android/server/PinnerService$PinRange;
    :cond_5b
    move/from16 v14, p1

    move v13, v1

    .line 808
    .end local v1  # "bytesPinned":I
    .end local p1  # "maxBytesToPin":I
    .local v13, "bytesPinned":I
    .local v14, "maxBytesToPin":I
    :goto_5e
    if-ge v13, v14, :cond_b2

    move-object/from16 v15, p2

    :try_start_62
    invoke-virtual {v15, v12}, Lcom/android/server/PinnerService$PinRangeSource;->read(Lcom/android/server/PinnerService$PinRange;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 809
    iget v1, v12, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 810
    .local v1, "pinStart":I
    iget v2, v12, Lcom/android/server/PinnerService$PinRange;->length:I

    .line 811
    .local v2, "pinLength":I
    invoke-static {v5, v1, v6}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v1, v3

    .line 812
    sub-int v3, v6, v1

    invoke-static {v5, v2, v3}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v2, v3

    .line 813
    sub-int v3, v14, v13

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v3

    .line 822
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v1, v3

    add-int/2addr v2, v3

    .line 823
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v1, v3

    sub-int/2addr v1, v3

    .line 824
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v2, v3

    if-eqz v3, :cond_97

    .line 825
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    sget v4, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v4, v2, v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 827
    :cond_97
    sub-int v3, v14, v13

    invoke-static {v5, v2, v3}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v2, v3

    .line 829
    if-lez v2, :cond_a6

    .line 836
    int-to-long v3, v1

    add-long/2addr v3, v10

    int-to-long v8, v2

    invoke-static {v3, v4, v8, v9}, Landroid/system/Os;->mlock(JJ)V
    :try_end_a6
    .catch Landroid/system/ErrnoException; {:try_start_62 .. :try_end_a6} :catch_ab
    .catchall {:try_start_62 .. :try_end_a6} :catchall_a8

    .line 838
    :cond_a6
    add-int/2addr v13, v2

    .line 839
    .end local v1  # "pinStart":I
    .end local v2  # "pinLength":I
    goto :goto_5e

    .line 848
    .end local v0  # "openFlags":I
    .end local v12  # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .end local v13  # "bytesPinned":I
    :catchall_a8
    move-exception v0

    goto/16 :goto_157

    .line 844
    :catch_ab
    move-exception v0

    move v4, v6

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_12d

    .line 808
    .restart local v0  # "openFlags":I
    .restart local v12  # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .restart local v13  # "bytesPinned":I
    :cond_b2
    move-object/from16 v15, p2

    .line 841
    :cond_b4
    :try_start_b4
    new-instance v8, Lcom/android/server/PinnerService$PinnedFile;
    :try_end_b6
    .catch Landroid/system/ErrnoException; {:try_start_b4 .. :try_end_b6} :catch_e1
    .catchall {:try_start_b4 .. :try_end_b6} :catchall_dd

    move-object v1, v8

    move-wide v2, v10

    move v4, v6

    move-object/from16 v5, p0

    move v9, v6

    .end local v6  # "mapSize":I
    .local v9, "mapSize":I
    move v6, v13

    :try_start_bd
    invoke-direct/range {v1 .. v6}, Lcom/android/server/PinnerService$PinnedFile;-><init>(JILjava/lang/String;I)V
    :try_end_c0
    .catch Landroid/system/ErrnoException; {:try_start_bd .. :try_end_c0} :catch_d6
    .catchall {:try_start_bd .. :try_end_c0} :catchall_d2

    move-object v1, v8

    .line 842
    .local v1, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    const-wide/16 v2, -0x1

    .line 843
    .end local v10  # "address":J
    .local v2, "address":J
    nop

    .line 848
    invoke-static/range {v16 .. v16}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 849
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_d1

    .line 850
    int-to-long v4, v9

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 843
    :cond_d1
    return-object v1

    .line 848
    .end local v0  # "openFlags":I
    .end local v1  # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    .end local v2  # "address":J
    .end local v12  # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .end local v13  # "bytesPinned":I
    .restart local v10  # "address":J
    :catchall_d2
    move-exception v0

    move v6, v9

    goto/16 :goto_157

    .line 844
    :catch_d6
    move-exception v0

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_12d

    .line 848
    .end local v9  # "mapSize":I
    .restart local v6  # "mapSize":I
    :catchall_dd
    move-exception v0

    move v9, v6

    .end local v6  # "mapSize":I
    .restart local v9  # "mapSize":I
    goto/16 :goto_157

    .line 844
    .end local v9  # "mapSize":I
    .restart local v6  # "mapSize":I
    :catch_e1
    move-exception v0

    move v9, v6

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    .end local v6  # "mapSize":I
    .restart local v9  # "mapSize":I
    goto/16 :goto_12d

    .line 848
    .end local v9  # "mapSize":I
    .end local v14  # "maxBytesToPin":I
    .restart local v6  # "mapSize":I
    .restart local p1  # "maxBytesToPin":I
    :catchall_e9
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v14, p1

    .end local v6  # "mapSize":I
    .restart local v9  # "mapSize":I
    goto/16 :goto_157

    .line 844
    .end local v9  # "mapSize":I
    .restart local v6  # "mapSize":I
    :catch_f1
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v14, p1

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    .end local v6  # "mapSize":I
    .restart local v9  # "mapSize":I
    goto :goto_12d

    .line 848
    .end local v9  # "mapSize":I
    .end local v10  # "address":J
    .restart local v2  # "address":J
    .restart local v6  # "mapSize":I
    :catchall_fc
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v14, p1

    move-wide v10, v2

    .end local v6  # "mapSize":I
    .restart local v9  # "mapSize":I
    goto :goto_157

    .line 844
    .end local v9  # "mapSize":I
    .restart local v6  # "mapSize":I
    :catch_104
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v14, p1

    move v4, v9

    move-object/from16 v1, v16

    .end local v6  # "mapSize":I
    .restart local v9  # "mapSize":I
    goto :goto_12d

    .line 848
    .end local v9  # "mapSize":I
    .restart local v4  # "mapSize":I
    :catchall_10e
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v14, p1

    move-wide v10, v2

    move v6, v4

    goto :goto_157

    .line 844
    :catch_116
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v14, p1

    move-object/from16 v1, v16

    goto :goto_12d

    .line 848
    .end local v16  # "fd":Ljava/io/FileDescriptor;
    .local v1, "fd":Ljava/io/FileDescriptor;
    :catchall_11e
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v14, p1

    move-object/from16 v16, v1

    move-wide v10, v2

    move v6, v4

    goto :goto_157

    .line 844
    :catch_128
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v14, p1

    .line 845
    .end local p1  # "maxBytesToPin":I
    .local v0, "ex":Landroid/system/ErrnoException;
    .restart local v14  # "maxBytesToPin":I
    :goto_12d
    :try_start_12d
    const-string v5, "PinnerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not pin file "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_143
    .catchall {:try_start_12d .. :try_end_143} :catchall_152

    .line 846
    const/4 v5, 0x0

    .line 848
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 849
    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-ltz v6, :cond_151

    .line 850
    int-to-long v8, v4

    invoke-static {v2, v3, v8, v9}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 846
    :cond_151
    return-object v5

    .line 848
    .end local v0  # "ex":Landroid/system/ErrnoException;
    :catchall_152
    move-exception v0

    move-object/from16 v16, v1

    move-wide v10, v2

    move v6, v4

    .end local v1  # "fd":Ljava/io/FileDescriptor;
    .end local v2  # "address":J
    .end local v4  # "mapSize":I
    .restart local v6  # "mapSize":I
    .restart local v10  # "address":J
    .restart local v16  # "fd":Ljava/io/FileDescriptor;
    :goto_157
    invoke-static/range {v16 .. v16}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 849
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-ltz v1, :cond_164

    .line 850
    int-to-long v1, v6

    invoke-static {v10, v11, v1, v2}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    :cond_164
    throw v0
.end method

.method private registerUidListener()V
    .registers 6

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAm:Landroid/app/IActivityManager;

    new-instance v1, Lcom/android/server/PinnerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/PinnerService$3;-><init>(Lcom/android/server/PinnerService;)V

    const/16 v2, 0xa

    const/4 v3, 0x0

    const-string/jumbo v4, "system"

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 317
    goto :goto_19

    .line 315
    :catch_11
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PinnerService"

    const-string v2, "Failed to register uid observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method private registerUserSetupCompleteListener()V
    .registers 6

    .line 273
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 275
    .local v0, "userSetupCompleteUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/PinnerService$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/PinnerService$2;-><init>(Lcom/android/server/PinnerService;Landroid/os/Handler;Landroid/net/Uri;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 285
    return-void
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .registers 4
    .param p0, "thing"  # Ljava/io/Closeable;

    .line 890
    if-eqz p0, :cond_1e

    .line 892
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 895
    goto :goto_1e

    .line 893
    :catch_6
    move-exception v0

    .line 894
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignoring error closing resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PinnerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    .end local v0  # "ex":Ljava/io/IOException;
    :cond_1e
    :goto_1e
    return-void
.end method

.method private static safeClose(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p0, "fd"  # Ljava/io/FileDescriptor;

    .line 871
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 873
    :try_start_8
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_b} :catch_c

    .line 882
    goto :goto_1a

    .line 874
    :catch_c
    move-exception v0

    .line 879
    .local v0, "ex":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EBADF:I

    if-eq v1, v2, :cond_14

    goto :goto_1a

    .line 880
    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 884
    .end local v0  # "ex":Landroid/system/ErrnoException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method private static safeMunmap(JJ)V
    .registers 7
    .param p0, "address"  # J
    .param p2, "mapSize"  # J

    .line 861
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_4

    .line 864
    goto :goto_d

    .line 862
    :catch_4
    move-exception v0

    .line 863
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v1, "PinnerService"

    const-string/jumbo v2, "ignoring error in unmap"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 865
    .end local v0  # "ex":Landroid/system/ErrnoException;
    :goto_d
    return-void
.end method

.method private sendPinAppMessage(IIZ)V
    .registers 9
    .param p1, "key"  # I
    .param p2, "userHandle"  # I
    .param p3, "force"  # Z

    .line 463
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    sget-object v1, Lcom/android/server/-$$Lambda$PinnerService$6bekYOn4YXi0x7vYNWO40QyA-s8;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$6bekYOn4YXi0x7vYNWO40QyA-s8;

    .line 464
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 463
    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    return-void
.end method

.method private sendPinAppsMessage(I)V
    .registers 5
    .param p1, "userHandle"  # I

    .line 448
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    sget-object v1, Lcom/android/server/-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4;

    .line 449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 448
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 450
    return-void
.end method

.method private unpinApp(I)V
    .registers 5
    .param p1, "key"  # I

    .line 352
    monitor-enter p0

    .line 353
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedApp;

    .line 354
    .local v0, "app":Lcom/android/server/PinnerService$PinnedApp;
    if-nez v0, :cond_11

    .line 355
    monitor-exit p0

    return-void

    .line 357
    :cond_11
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 359
    .local v0, "pinnedAppFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/PinnerService$PinnedFile;>;"
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    .line 360
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedFile;

    .line 361
    .local v2, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    invoke-virtual {v2}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    .line 362
    .end local v2  # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    goto :goto_27

    .line 363
    :cond_37
    return-void

    .line 359
    .end local v0  # "pinnedAppFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/PinnerService$PinnedFile;>;"
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method private updateActiveState(IZ)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "active"  # Z

    .line 340
    monitor-enter p0

    .line 341
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1c

    .line 342
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PinnerService$PinnedApp;

    .line 343
    .local v1, "app":Lcom/android/server/PinnerService$PinnedApp;
    iget v2, v1, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    if-ne v2, p1, :cond_19

    .line 344
    iput-boolean p2, v1, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    .line 341
    .end local v1  # "app":Lcom/android/server/PinnerService$PinnedApp;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 347
    .end local v0  # "i":I
    :cond_1c
    monitor-exit p0

    .line 348
    return-void

    .line 347
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 191
    new-instance v0, Lcom/android/server/PinnerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$1;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    .line 192
    iget-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    const-string/jumbo v1, "pinner"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PinnerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 193
    const-class v0, Lcom/android/server/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/PinnerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 197
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "userHandle"  # I

    .line 207
    iget-object v0, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 210
    :cond_b
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"  # I

    .line 214
    iget-object v0, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 215
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 217
    :cond_b
    return-void
.end method

.method public update(Landroid/util/ArraySet;Z)V
    .registers 9
    .param p2, "force"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 225
    .local p1, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 226
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_4e

    .line 227
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 228
    .local v2, "key":I
    invoke-direct {p0, v2, v0}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 229
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_4b

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating pinned files for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " force="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PinnerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0, v2, v0, p2}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    .line 226
    .end local v2  # "key":I
    .end local v3  # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 234
    .end local v1  # "i":I
    :cond_4e
    return-void
.end method
