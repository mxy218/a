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

    .line 92
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 129
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    .line 135
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 140
    new-instance v0, Lcom/android/server/PinnerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PinnerService$1;-><init>(Lcom/android/server/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    iput-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x11100ad

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 162
    if-eqz v0, :cond_4d

    .line 163
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_4d
    if-eqz p1, :cond_59

    .line 166
    iget-object p1, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_59
    new-instance p1, Lcom/android/server/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/PinnerService$PinnerHandler;-><init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 170
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 171
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 172
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/PinnerService;->mAm:Landroid/app/IActivityManager;

    .line 174
    iget-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    .line 176
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    invoke-direct {p0}, Lcom/android/server/PinnerService;->registerUidListener()V

    .line 182
    invoke-direct {p0}, Lcom/android/server/PinnerService;->registerUserSetupCompleteListener()V

    .line 183
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PinnerService;IIZ)V
    .registers 4

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/PinnerService;I)Ljava/lang/String;
    .registers 2

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$1200(JJ)V
    .registers 4

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/PinnerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/PinnerService;)V
    .registers 1

    .line 87
    invoke-direct {p0}, Lcom/android/server/PinnerService;->handlePinOnStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/PinnerService;I)V
    .registers 2

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handleUidActive(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/PinnerService;I)V
    .registers 2

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handleUidGone(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PinnerService;)Landroid/content/Context;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private static clamp(III)I
    .registers 3

    .line 850
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;
    .registers 8

    .line 401
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 402
    return-object v0

    .line 405
    :cond_4
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xd0000

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 412
    if-nez v1, :cond_13

    .line 413
    return-object v0

    .line 416
    :cond_13
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v3}, Lcom/android/server/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 417
    iget-object p1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p1

    .line 420
    :cond_20
    if-eqz p3, :cond_52

    .line 421
    iget-object p3, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 422
    invoke-virtual {p3, p1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 423
    nop

    .line 424
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p2, v0

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 425
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_50

    .line 427
    if-nez p2, :cond_4f

    .line 428
    iget-object p2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_50

    .line 431
    :cond_4f
    return-object v0

    .line 434
    :cond_50
    :goto_50
    goto :goto_32

    .line 435
    :cond_51
    return-object p2

    .line 438
    :cond_52
    return-object v0
.end method

.method private getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 378
    if-nez v0, :cond_19

    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 386
    :cond_19
    if-nez v0, :cond_25

    .line 387
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 391
    :cond_25
    return-object v0
.end method

.method private getHomeInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 395
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 396
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method private getInfoForKey(II)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 506
    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    .line 512
    const/4 p1, 0x0

    return-object p1

    .line 510
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/PinnerService;->getHomeInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1

    .line 508
    :cond_c
    invoke-direct {p0, p2}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method private getNameForKey(I)Ljava/lang/String;
    .registers 3

    .line 520
    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    .line 526
    const/4 p1, 0x0

    return-object p1

    .line 524
    :cond_7
    const-string p1, "Home"

    return-object p1

    .line 522
    :cond_a
    const-string p1, "Camera"

    return-object p1
.end method

.method private getSizeLimitForKey(I)I
    .registers 3

    .line 534
    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    .line 540
    const/4 p1, 0x0

    return p1

    .line 538
    :cond_7
    const/high16 p1, 0x600000

    return p1

    .line 536
    :cond_a
    const/high16 p1, 0x5000000

    return p1
.end method

.method private getUidForKey(I)I
    .registers 3

    .line 491
    monitor-enter p0

    .line 492
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/PinnerService$PinnedApp;

    .line 493
    if-eqz p1, :cond_16

    iget-boolean v0, p1, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    if-eqz v0, :cond_16

    .line 494
    iget p1, p1, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    goto :goto_17

    .line 495
    :cond_16
    const/4 p1, -0x1

    :goto_17
    monitor-exit p0

    .line 493
    return p1

    .line 496
    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private handlePinOnStart()V
    .registers 8

    .line 239
    const-string v0, "dalvik.vm.boot-image"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    nop

    .line 241
    const-string v1, "apex.art"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 243
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 247
    :cond_1f
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_2c
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2f
    if-ge v3, v1, :cond_60

    aget-object v4, v0, v3

    .line 252
    const v5, 0x7fffffff

    invoke-static {v4, v5, v2}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v5

    .line 255
    if-nez v5, :cond_53

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to pin file = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PinnerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    goto :goto_5a

    .line 260
    :cond_53
    monitor-enter p0

    .line 261
    :try_start_54
    iget-object v4, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    monitor-exit p0

    .line 251
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 262
    :catchall_5d
    move-exception v0

    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_5d

    throw v0

    .line 264
    :cond_60
    return-void
.end method

.method private handleUidActive(I)V
    .registers 3

    .line 335
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    .line 336
    return-void
.end method

.method private handleUidGone(I)V
    .registers 7

    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    .line 322
    monitor-enter p0

    .line 325
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

    .line 326
    if-ne v1, v3, :cond_1e

    .line 327
    monitor-exit p0

    return-void

    .line 329
    :cond_1e
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_30

    .line 331
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    .line 332
    return-void

    .line 330
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method private isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 3

    .line 365
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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
    .registers 4

    .line 699
    const-string/jumbo v0, "pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 700
    nop

    .line 701
    if-eqz v0, :cond_21

    .line 703
    :try_start_a
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_f

    .line 709
    goto :goto_22

    .line 704
    :catch_f
    move-exception p0

    .line 705
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 706
    const-string p1, "error reading pin metadata \"%s\": pinning as blob"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 705
    const-string v0, "PinnerService"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    :cond_21
    const/4 p0, 0x0

    :goto_22
    return-object p0
.end method

.method private static maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .registers 4

    .line 679
    nop

    .line 681
    :try_start_1
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_7

    .line 688
    goto :goto_1a

    .line 682
    :catch_7
    move-exception v0

    .line 683
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 684
    const-string p0, "could not open \"%s\" as zip: pinning as blob"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 683
    const-string v1, "PinnerService"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 689
    :goto_1a
    return-object v0
.end method

.method private pinApp(IIZ)V
    .registers 5

    .line 468
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getUidForKey(I)I

    move-result v0

    .line 472
    if-nez p3, :cond_1c

    const/4 p3, -0x1

    if-eq v0, p3, :cond_1c

    .line 473
    monitor-enter p0

    .line 474
    :try_start_a
    iget-object p2, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    monitor-exit p0

    .line 476
    return-void

    .line 475
    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw p1

    .line 478
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->unpinApp(I)V

    .line 479
    invoke-direct {p0, p1, p2}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 480
    if-eqz p2, :cond_28

    .line 481
    invoke-direct {p0, p1, p2}, Lcom/android/server/PinnerService;->pinApp(ILandroid/content/pm/ApplicationInfo;)V

    .line 483
    :cond_28
    return-void
.end method

.method private pinApp(ILandroid/content/pm/ApplicationInfo;)V
    .registers 9

    .line 551
    if-nez p2, :cond_3

    .line 552
    return-void

    .line 555
    :cond_3
    new-instance v0, Lcom/android/server/PinnerService$PinnedApp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/PinnerService$PinnedApp;-><init>(Lcom/android/server/PinnerService;Landroid/content/pm/ApplicationInfo;Lcom/android/server/PinnerService$1;)V

    .line 556
    monitor-enter p0

    .line 557
    :try_start_a
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_a8

    .line 561
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getSizeLimitForKey(I)I

    move-result p1

    .line 562
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 563
    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v3

    .line 564
    if-nez v3, :cond_38

    .line 565
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to pin "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PinnerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void

    .line 571
    :cond_38
    monitor-enter p0

    .line 572
    :try_start_39
    iget-object v2, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_a5

    .line 576
    const-string v2, "arm"

    .line 577
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_60

    .line 578
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v3}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 579
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "64"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7b

    .line 582
    :cond_60
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-static {v3}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "64"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 588
    :cond_7b
    :goto_7b
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object p2

    .line 589
    nop

    .line 591
    :try_start_80
    invoke-static {p2, v2}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_84} :catch_85

    .line 592
    :goto_84
    goto :goto_87

    :catch_85
    move-exception p2

    goto :goto_84

    .line 593
    :goto_87
    if-nez v1, :cond_8a

    .line 594
    return-void

    .line 598
    :cond_8a
    array-length p2, v1

    move v2, v4

    :goto_8c
    if-ge v2, p2, :cond_a4

    aget-object v3, v1, v2

    .line 599
    invoke-static {v3, p1, v4}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v3

    .line 600
    if-eqz v3, :cond_a1

    .line 601
    monitor-enter p0

    .line 602
    :try_start_97
    iget-object v5, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    monitor-exit p0

    goto :goto_a1

    :catchall_9e
    move-exception p1

    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_97 .. :try_end_a0} :catchall_9e

    throw p1

    .line 598
    :cond_a1
    :goto_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    .line 609
    :cond_a4
    return-void

    .line 573
    :catchall_a5
    move-exception p1

    :try_start_a6
    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw p1

    .line 558
    :catchall_a8
    move-exception p1

    :try_start_a9
    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw p1
.end method

.method private pinApps(I)V
    .registers 5

    .line 447
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 448
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 449
    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    .line 447
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 451
    :cond_1c
    return-void
.end method

.method private static pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;
    .registers 7

    .line 651
    nop

    .line 652
    nop

    .line 654
    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 655
    :try_start_5
    invoke-static {p0}, Lcom/android/server/PinnerService;->maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object p2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    goto :goto_e

    .line 669
    :catchall_a
    move-exception p0

    move-object p2, v0

    goto :goto_48

    .line 654
    :cond_d
    move-object p2, v0

    .line 658
    :goto_e
    if-eqz p2, :cond_14

    .line 659
    :try_start_10
    invoke-static {p2, p0}, Lcom/android/server/PinnerService;->maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 662
    :cond_14
    const-string v1, "PinnerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pinRangeStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    if-eqz v0, :cond_33

    .line 665
    new-instance v1, Lcom/android/server/PinnerService$PinRangeSourceStream;

    invoke-direct {v1, v0}, Lcom/android/server/PinnerService$PinRangeSourceStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_3c

    .line 666
    :cond_33
    new-instance v1, Lcom/android/server/PinnerService$PinRangeSourceStatic;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    invoke-direct {v1, v2, v3}, Lcom/android/server/PinnerService$PinRangeSourceStatic;-><init>(II)V

    .line 667
    :goto_3c
    invoke-static {p0, p1, v1}, Lcom/android/server/PinnerService;->pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object p0
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_47

    .line 669
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 670
    invoke-static {p2}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 667
    return-object p0

    .line 669
    :catchall_47
    move-exception p0

    :goto_48
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 670
    invoke-static {p2}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;
    .registers 23

    .line 779
    move-object/from16 v7, p0

    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 780
    nop

    .line 781
    nop

    .line 784
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    :try_start_e
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sget v5, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v0, v5

    sget v5, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v0, v5

    .line 787
    invoke-static {v7, v0, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v19
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_1a} :catch_cf
    .catchall {:try_start_e .. :try_end_1a} :catchall_c9

    .line 788
    :try_start_1a
    invoke-static/range {v19 .. v19}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    const-wide/32 v5, 0x7fffffff

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_27
    .catch Landroid/system/ErrnoException; {:try_start_1a .. :try_end_27} :catch_c5
    .catchall {:try_start_1a .. :try_end_27} :catchall_c3

    long-to-int v6, v0

    .line 789
    const-wide/16 v10, 0x0

    int-to-long v12, v6

    :try_start_2b
    sget v14, Landroid/system/OsConstants;->PROT_READ:I

    sget v15, Landroid/system/OsConstants;->MAP_SHARED:I

    const-wide/16 v17, 0x0

    move-object/from16 v16, v19

    invoke-static/range {v10 .. v18}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v10
    :try_end_37
    .catch Landroid/system/ErrnoException; {:try_start_2b .. :try_end_37} :catch_bd
    .catchall {:try_start_2b .. :try_end_37} :catchall_ba

    .line 794
    :try_start_37
    new-instance v0, Lcom/android/server/PinnerService$PinRange;

    invoke-direct {v0}, Lcom/android/server/PinnerService$PinRange;-><init>()V

    .line 795
    nop

    .line 798
    sget v1, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v1, p1, v1
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_37 .. :try_end_41} :catch_b6
    .catchall {:try_start_37 .. :try_end_41} :catchall_b3

    if-eqz v1, :cond_53

    .line 799
    :try_start_43
    sget v1, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v1, p1, v1

    sub-int v1, p1, v1

    move v12, v2

    goto :goto_56

    .line 842
    :catchall_4b
    move-exception v0

    goto/16 :goto_f9

    .line 838
    :catch_4e
    move-exception v0

    move v2, v6

    move-wide v3, v10

    goto/16 :goto_c0

    .line 798
    :cond_53
    move/from16 v1, p1

    move v12, v2

    .line 802
    :goto_56
    if-ge v12, v1, :cond_9b

    move-object/from16 v3, p2

    invoke-virtual {v3, v0}, Lcom/android/server/PinnerService$PinRangeSource;->read(Lcom/android/server/PinnerService$PinRange;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 803
    iget v4, v0, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 804
    iget v5, v0, Lcom/android/server/PinnerService$PinRange;->length:I

    .line 805
    invoke-static {v2, v4, v6}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v4

    .line 806
    sub-int v13, v6, v4

    invoke-static {v2, v5, v13}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v5

    .line 807
    sub-int v13, v1, v12

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 816
    sget v14, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v14, v4, v14

    add-int/2addr v5, v14

    .line 817
    sget v14, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v14, v4, v14

    sub-int/2addr v4, v14

    .line 818
    sget v14, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v14, v5, v14

    if-eqz v14, :cond_8c

    .line 819
    sget v14, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    sget v15, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v15, v5, v15

    sub-int/2addr v14, v15

    add-int/2addr v5, v14

    .line 821
    :cond_8c
    invoke-static {v2, v5, v13}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v5

    .line 823
    if-lez v5, :cond_98

    .line 830
    int-to-long v13, v4

    add-long/2addr v13, v10

    int-to-long v2, v5

    invoke-static {v13, v14, v2, v3}, Landroid/system/Os;->mlock(JJ)V
    :try_end_98
    .catch Landroid/system/ErrnoException; {:try_start_43 .. :try_end_98} :catch_4e
    .catchall {:try_start_43 .. :try_end_98} :catchall_4b

    .line 832
    :cond_98
    add-int/2addr v12, v5

    .line 833
    const/4 v2, 0x0

    goto :goto_56

    .line 835
    :cond_9b
    :try_start_9b
    new-instance v0, Lcom/android/server/PinnerService$PinnedFile;
    :try_end_9d
    .catch Landroid/system/ErrnoException; {:try_start_9b .. :try_end_9d} :catch_b6
    .catchall {:try_start_9b .. :try_end_9d} :catchall_b3

    move-object v1, v0

    move-wide v2, v10

    move v4, v6

    move-object/from16 v5, p0

    move v13, v6

    move v6, v12

    :try_start_a4
    invoke-direct/range {v1 .. v6}, Lcom/android/server/PinnerService$PinnedFile;-><init>(JILjava/lang/String;I)V
    :try_end_a7
    .catch Landroid/system/ErrnoException; {:try_start_a4 .. :try_end_a7} :catch_b1
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_ae

    .line 836
    nop

    .line 837
    nop

    .line 842
    invoke-static/range {v19 .. v19}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 843
    nop

    .line 837
    return-object v0

    .line 842
    :catchall_ae
    move-exception v0

    move v6, v13

    goto :goto_f9

    .line 838
    :catch_b1
    move-exception v0

    goto :goto_b8

    .line 842
    :catchall_b3
    move-exception v0

    move v13, v6

    goto :goto_f9

    .line 838
    :catch_b6
    move-exception v0

    move v13, v6

    :goto_b8
    move-wide v3, v10

    goto :goto_bf

    .line 842
    :catchall_ba
    move-exception v0

    move v13, v6

    goto :goto_f8

    .line 838
    :catch_bd
    move-exception v0

    move v13, v6

    :goto_bf
    move v2, v13

    :goto_c0
    move-object/from16 v1, v19

    goto :goto_d1

    .line 842
    :catchall_c3
    move-exception v0

    goto :goto_cc

    .line 838
    :catch_c5
    move-exception v0

    move-object/from16 v1, v19

    goto :goto_d0

    .line 842
    :catchall_c9
    move-exception v0

    move-object/from16 v19, v1

    :goto_cc
    move-wide v10, v3

    const/4 v6, 0x0

    goto :goto_f9

    .line 838
    :catch_cf
    move-exception v0

    :goto_d0
    const/4 v2, 0x0

    .line 839
    :goto_d1
    :try_start_d1
    const-string v5, "PinnerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not pin file "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e7
    .catchall {:try_start_d1 .. :try_end_e7} :catchall_f4

    .line 840
    const/4 v0, 0x0

    .line 842
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 843
    cmp-long v1, v3, v8

    if-ltz v1, :cond_f3

    .line 844
    int-to-long v1, v2

    invoke-static {v3, v4, v1, v2}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 840
    :cond_f3
    return-object v0

    .line 842
    :catchall_f4
    move-exception v0

    move-object/from16 v19, v1

    move v6, v2

    :goto_f8
    move-wide v10, v3

    :goto_f9
    invoke-static/range {v19 .. v19}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 843
    cmp-long v1, v10, v8

    if-ltz v1, :cond_104

    .line 844
    int-to-long v1, v6

    invoke-static {v10, v11, v1, v2}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    :cond_104
    throw v0
.end method

.method private registerUidListener()V
    .registers 6

    .line 288
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

    .line 316
    goto :goto_19

    .line 314
    :catch_11
    move-exception v0

    .line 315
    const-string v1, "PinnerService"

    const-string v2, "Failed to register uid observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    :goto_19
    return-void
.end method

.method private registerUserSetupCompleteListener()V
    .registers 6

    .line 272
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/PinnerService$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/PinnerService$2;-><init>(Lcom/android/server/PinnerService;Landroid/os/Handler;Landroid/net/Uri;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 284
    return-void
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .registers 4

    .line 884
    if-eqz p0, :cond_1d

    .line 886
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 889
    goto :goto_1d

    .line 887
    :catch_6
    move-exception v0

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring error closing resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PinnerService"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 891
    :cond_1d
    :goto_1d
    return-void
.end method

.method private static safeClose(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 865
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 867
    :try_start_8
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_b} :catch_c

    .line 876
    goto :goto_1a

    .line 868
    :catch_c
    move-exception p0

    .line 873
    iget v0, p0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->EBADF:I

    if-eq v0, v1, :cond_14

    goto :goto_1a

    .line 874
    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 878
    :cond_1a
    :goto_1a
    return-void
.end method

.method private static safeMunmap(JJ)V
    .registers 4

    .line 855
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_3} :catch_4

    .line 858
    goto :goto_c

    .line 856
    :catch_4
    move-exception p0

    .line 857
    const-string p1, "PinnerService"

    const-string p2, "ignoring error in unmap"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 859
    :goto_c
    return-void
.end method

.method private sendPinAppMessage(IIZ)V
    .registers 6

    .line 457
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    sget-object v1, Lcom/android/server/-$$Lambda$PinnerService$6bekYOn4YXi0x7vYNWO40QyA-s8;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$6bekYOn4YXi0x7vYNWO40QyA-s8;

    .line 458
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 457
    invoke-static {v1, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 459
    return-void
.end method

.method private sendPinAppsMessage(I)V
    .registers 4

    .line 442
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    sget-object v1, Lcom/android/server/-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$GeEX-8XoHeV0LEszxat7jOSlrs4;

    .line 443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 442
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    return-void
.end method

.method private unpinApp(I)V
    .registers 4

    .line 351
    monitor-enter p0

    .line 352
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedApp;

    .line 353
    if-nez v0, :cond_11

    .line 354
    monitor-exit p0

    return-void

    .line 356
    :cond_11
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 358
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_37

    .line 359
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedFile;

    .line 360
    invoke-virtual {v0}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    .line 361
    goto :goto_26

    .line 362
    :cond_36
    return-void

    .line 358
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method

.method private updateActiveState(IZ)V
    .registers 6

    .line 339
    monitor-enter p0

    .line 340
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_1c

    .line 341
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PinnerService$PinnedApp;

    .line 342
    iget v2, v1, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    if-ne v2, p1, :cond_19

    .line 343
    iput-boolean p2, v1, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    .line 340
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 346
    :cond_1c
    monitor-exit p0

    .line 347
    return-void

    .line 346
    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw p1
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 190
    new-instance v0, Lcom/android/server/PinnerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$1;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    .line 191
    iget-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    const-string/jumbo v1, "pinner"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PinnerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 192
    const-class v0, Lcom/android/server/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/PinnerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 196
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 209
    :cond_b
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 214
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    .line 216
    :cond_b
    return-void
.end method

.method public update(Landroid/util/ArraySet;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 224
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_4e

    .line 226
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 227
    invoke-direct {p0, v2, v0}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 228
    if-eqz v3, :cond_4b

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating pinned files for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " force="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PinnerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0, v2, v0, p2}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    .line 225
    :cond_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 233
    :cond_4e
    return-void
.end method
