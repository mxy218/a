.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Lcom/android/server/wallpaper/IWallpaperManagerService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_LIVE:Z = true

.field private static final MAX_BITMAP_SIZE:I = 0x6400000

.field private static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field private static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper_orig"

.field static final WALLPAPER_CROP:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field static final WALLPAPER_LOCK_CROP:Ljava/lang/String; = "wallpaper_lock"

.field static final WALLPAPER_LOCK_ORIG:Ljava/lang/String; = "wallpaper_lock_orig"

.field private static final sPerUserFiles:[Ljava/lang/String;


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

.field private final mColorsChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDefaultWallpaperComponent:Landroid/content/ComponentName;

.field private mDisplayDatas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private final mImageWallpaper:Landroid/content/ComponentName;

.field private mInAmbientMode:Z

.field private mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

.field private mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field private final mLock:Ljava/lang/Object;

.field private final mLockWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field private mShuttingDown:Z

.field private final mUserRestorecon:Landroid/util/SparseBooleanArray;

.field private mWaitingForUnlock:Z

.field private mWallpaperId:I

.field private final mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 191
    const-string/jumbo v0, "wallpaper_orig"

    const-string/jumbo v1, "wallpaper"

    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    const-string/jumbo v4, "wallpaper_info.xml"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1635
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 176
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 798
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 872
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 873
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 875
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    .line 879
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    .line 880
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1637
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 1638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    .line 1639
    nop

    .line 1640
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040300

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1639
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1641
    invoke-static {p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 1642
    nop

    .line 1643
    const-string/jumbo p1, "window"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 1642
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1644
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1645
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1646
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1647
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1648
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1649
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 1650
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 1652
    const-class p1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$1;)V

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1653
    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .registers 1

    .line 131
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 6

    .line 131
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeDisplayData(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/wallpaper/WallpaperManagerService;I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/view/IWindowManager;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/hardware/display/DisplayManager;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .registers 1

    .line 131
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$2600(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .registers 4

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return p0
.end method

.method static synthetic access$2902(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .registers 2

    .line 131
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onDisplayReadyInternal(I)V

    return-void
.end method

.method static synthetic access$3400()[Ljava/lang/String;
    .registers 1

    .line 131
    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 1

    .line 131
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    return-object p0
.end method

.method private attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 4

    .line 2781
    new-instance v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$UhAlBGB5jhuZrLndUPRmIvoHRZc;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$UhAlBGB5jhuZrLndUPRmIvoHRZc;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2782
    return-void
.end method

.method private bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 23

    .line 2605
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    const/4 v3, 0x1

    if-nez p2, :cond_26

    invoke-direct {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 2609
    return v3

    .line 2613
    :cond_26
    const/4 v5, 0x0

    if-nez v1, :cond_34

    .line 2614
    :try_start_29
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 2615
    if-nez v1, :cond_34

    .line 2617
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 2620
    const-string v6, "No default component; using image wallpaper"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    :cond_34
    iget v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 2624
    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v8, 0x1080

    invoke-interface {v7, v1, v8, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 2626
    if-nez v7, :cond_5a

    .line 2628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted wallpaper "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is unavailable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    return v5

    .line 2631
    :cond_5a
    const-string v8, "android.permission.BIND_WALLPAPER"

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_81

    .line 2632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected service does not have android.permission.BIND_WALLPAPER: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2635
    if-nez p3, :cond_7b

    .line 2638
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    return v5

    .line 2636
    :cond_7b
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2642
    :cond_81
    const/4 v8, 0x0

    .line 2644
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.service.wallpaper.WallpaperService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2645
    if-eqz v1, :cond_117

    iget-object v10, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v1, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_117

    .line 2647
    iget-object v10, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v11, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 2649
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    .line 2648
    invoke-interface {v10, v9, v11, v12, v6}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    .line 2650
    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    .line 2651
    move v11, v5

    :goto_aa
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_f8

    .line 2652
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2653
    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f5

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v13, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2654
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_ca} :catch_1f2

    if-eqz v12, :cond_f5

    .line 2656
    :try_start_cc
    new-instance v7, Landroid/app/WallpaperInfo;

    iget-object v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    invoke-direct {v7, v8, v10}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cc .. :try_end_d9} :catch_e8
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d9} :catch_db
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_d9} :catch_1f2

    .line 2669
    move-object v8, v7

    goto :goto_f8

    .line 2663
    :catch_db
    move-exception v0

    .line 2664
    if-nez p3, :cond_e2

    .line 2667
    :try_start_de
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2668
    return v5

    .line 2665
    :cond_e2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2657
    :catch_e8
    move-exception v0

    .line 2658
    if-nez p3, :cond_ef

    .line 2661
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2662
    return v5

    .line 2659
    :cond_ef
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2651
    :cond_f5
    add-int/lit8 v11, v11, 0x1

    goto :goto_aa

    .line 2673
    :cond_f8
    :goto_f8
    if-nez v8, :cond_117

    .line 2674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected service is not a wallpaper: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2676
    if-nez p3, :cond_111

    .line 2679
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    return v5

    .line 2677
    :cond_111
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2684
    :cond_117
    if-eqz v8, :cond_14a

    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v7

    if-eqz v7, :cond_14a

    .line 2685
    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v10, "android.permission.AMBIENT_WALLPAPER"

    .line 2686
    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 2685
    invoke-interface {v7, v10, v11, v6}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 2688
    if-eqz v7, :cond_14a

    .line 2689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected service does not have android.permission.AMBIENT_WALLPAPER: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2692
    if-nez p3, :cond_144

    .line 2695
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    return v5

    .line 2693
    :cond_144
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2702
    :cond_14a
    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0x10000000

    iget v12, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-interface {v7, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v7

    .line 2704
    new-instance v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {v10, v0, v8, v2, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2705
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2706
    const-string v7, "android.intent.extra.client_label"

    const v8, 0x104074f

    invoke-virtual {v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2708
    const-string v7, "android.intent.extra.client_intent"

    iget-object v11, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v14, 0x104012d

    .line 2711
    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 2710
    invoke-static {v8, v13}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 2708
    move-object/from16 v16, v8

    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2713
    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v8, 0x22001001

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v9, v10, v8, v11}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_1be

    .line 2718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to bind service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2720
    if-nez p3, :cond_1b8

    .line 2723
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    return v5

    .line 2721
    :cond_1b8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2726
    :cond_1be
    iget v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v6, v7, :cond_1d5

    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v6, :cond_1d5

    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2727
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d5

    .line 2728
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {v0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2730
    :cond_1d5
    iput-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2731
    iput-object v10, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2732
    move-object/from16 v6, p5

    iput-object v6, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 2733
    iget v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v6, v7, :cond_1ed

    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1ed

    .line 2734
    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2736
    :cond_1ed
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateFallbackConnection()V
    :try_end_1f0
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_1f0} :catch_1f2

    .line 2744
    nop

    .line 2745
    return v3

    .line 2737
    :catch_1f2
    move-exception v0

    .line 2738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2739
    if-nez p3, :cond_212

    .line 2742
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    return v5

    .line 2740
    :cond_212
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 5

    .line 2586
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_15

    .line 2587
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 2588
    if-nez p1, :cond_15

    .line 2591
    return v1

    .line 2593
    :cond_c
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 2596
    return v1

    .line 2599
    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5

    .line 2802
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 2806
    return-void

    .line 2803
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3

    .line 2776
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2777
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2778
    return-void
.end method

.method private detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 6

    .line 2749
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_51

    .line 2750
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2752
    :try_start_b
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    .line 2754
    goto :goto_14

    .line 2753
    :catch_13
    move-exception v0

    .line 2755
    :goto_14
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 2759
    :cond_18
    :try_start_18
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v0, :cond_25

    .line 2760
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperService;->detach()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26

    .line 2764
    :cond_25
    goto :goto_2e

    .line 2762
    :catch_26
    move-exception v0

    .line 2763
    const-string v2, "WallpaperManagerService"

    const-string v3, "Failed detaching wallpaper service "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2765
    :goto_2e
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2766
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    sget-object v2, Lcom/android/server/wallpaper/-$$Lambda$havGP5uMdRgWQrLydPeIOu1qDGE;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$havGP5uMdRgWQrLydPeIOu1qDGE;

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2768
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 2769
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2770
    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2771
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-ne p1, v0, :cond_51

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2773
    :cond_51
    return-void
.end method

.method private static emptyCallbackList(Landroid/os/RemoteCallbackList;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/os/RemoteCallbackList<",
            "TT;>;)Z"
        }
    .end annotation

    .line 418
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 5

    .line 3175
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    .line 3177
    if-nez p2, :cond_20

    .line 3179
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-lez p2, :cond_16

    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 3180
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-gtz p2, :cond_20

    .line 3181
    :cond_16
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget p2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3184
    :cond_20
    return-void
.end method

.method private ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V
    .registers 4

    .line 996
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension(I)I

    move-result p2

    .line 997
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    if-ge v0, p2, :cond_a

    .line 998
    iput p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 1000
    :cond_a
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-ge v0, p2, :cond_10

    .line 1001
    iput p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 1003
    :cond_10
    return-void
.end method

.method private extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 8

    .line 476
    nop

    .line 477
    nop

    .line 480
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 481
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_d
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz p1, :cond_15

    monitor-exit v0

    return-void

    .line 483
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_26

    .line 484
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors()Landroid/app/WallpaperColors;

    move-result-object p1

    .line 485
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 486
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-object p1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 487
    monitor-exit v1

    .line 488
    return-void

    .line 487
    :catchall_23
    move-exception p1

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_23

    throw p1

    .line 483
    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1

    .line 491
    :cond_29
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3f

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_3d

    goto :goto_3f

    :cond_3d
    move v1, v3

    goto :goto_40

    :cond_3f
    :goto_3f
    move v1, v2

    .line 495
    :goto_40
    const/4 v4, 0x0

    if-eqz v1, :cond_56

    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz v5, :cond_56

    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 496
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_68

    .line 497
    :cond_56
    if-eqz v1, :cond_67

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v1

    if-nez v1, :cond_67

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v1

    if-nez v1, :cond_67

    .line 498
    move v3, v2

    move-object v1, v4

    goto :goto_68

    .line 500
    :cond_67
    move-object v1, v4

    :goto_68
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 501
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_2c .. :try_end_6b} :catchall_aa

    .line 503
    nop

    .line 504
    if-eqz v1, :cond_7d

    .line 505
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_84

    .line 507
    invoke-static {v0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v1

    .line 508
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v4, v1

    goto :goto_84

    .line 510
    :cond_7d
    if-eqz v3, :cond_84

    .line 512
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors()Landroid/app/WallpaperColors;

    move-result-object v4

    goto :goto_85

    .line 510
    :cond_84
    :goto_84
    nop

    .line 515
    :goto_85
    if-nez v4, :cond_8f

    .line 516
    const-string p1, "WallpaperManagerService"

    const-string v0, "Cannot extract colors because wallpaper could not be read."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-void

    .line 520
    :cond_8f
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 521
    :try_start_92
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-ne v0, v2, :cond_9e

    .line 522
    iput-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 525
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    goto :goto_a5

    .line 527
    :cond_9e
    const-string p1, "WallpaperManagerService"

    const-string v0, "Not setting primary colors since wallpaper changed"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_a5
    monitor-exit v1

    .line 530
    return-void

    .line 529
    :catchall_a7
    move-exception p1

    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_92 .. :try_end_a9} :catchall_a7

    throw p1

    .line 501
    :catchall_aa
    move-exception p1

    :try_start_ab
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw p1
.end method

.method private extractDefaultImageWallpaperColors()Landroid/app/WallpaperColors;
    .registers 5

    .line 535
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    monitor-exit v0

    return-object v1

    .line 537
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_6f

    .line 539
    nop

    .line 540
    const/4 v0, 0x0

    :try_start_e
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_15} :catch_52
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_49

    .line 541
    if-nez v1, :cond_25

    .line 542
    :try_start_17
    const-string v2, "WallpaperManagerService"

    const-string v3, "Can\'t open default wallpaper stream"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_3b

    .line 543
    nop

    .line 552
    if-eqz v1, :cond_24

    :try_start_21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_24} :catch_52
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_49

    .line 543
    :cond_24
    return-object v0

    .line 546
    :cond_25
    :try_start_25
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 547
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 548
    if-eqz v2, :cond_37

    .line 549
    invoke-static {v2}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v0

    .line 550
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_3b

    .line 552
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_37 .. :try_end_3a} :catch_52
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_49

    goto :goto_5a

    .line 540
    :catchall_3b
    move-exception v2

    :try_start_3c
    throw v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 552
    :catchall_3d
    move-exception v3

    if-eqz v1, :cond_48

    :try_start_40
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v1

    :try_start_45
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_48
    :goto_48
    throw v3
    :try_end_49
    .catch Ljava/lang/OutOfMemoryError; {:try_start_45 .. :try_end_49} :catch_52
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_49

    .line 554
    :catch_49
    move-exception v1

    .line 555
    const-string v2, "WallpaperManagerService"

    const-string v3, "Can\'t close default wallpaper stream"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    .line 552
    :catch_52
    move-exception v1

    .line 553
    const-string v2, "WallpaperManagerService"

    const-string v3, "Can\'t decode default wallpaper stream"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    :goto_5a
    nop

    .line 558
    :goto_5b
    if-nez v0, :cond_65

    .line 559
    const-string v1, "WallpaperManagerService"

    const-string v2, "Extract default image wallpaper colors failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 561
    :cond_65
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 562
    :try_start_68
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    .line 563
    monitor-exit v1

    .line 566
    :goto_6b
    return-object v0

    .line 563
    :catchall_6c
    move-exception v0

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_6c

    throw v0

    .line 537
    :catchall_6f
    move-exception v1

    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method private findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 4

    .line 2378
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2379
    invoke-virtual {v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 2380
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object p1

    .line 2382
    :cond_15
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object p1
.end method

.method private generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 16

    .line 574
    nop

    .line 577
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v1

    .line 578
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 579
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 580
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 591
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 592
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 593
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 594
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const-string v7, "WallpaperManagerService"

    if-lez v6, :cond_1e1

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v6, :cond_38

    goto/16 :goto_1e1

    .line 598
    :cond_38
    nop

    .line 599
    nop

    .line 602
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 603
    iput v0, v2, Landroid/graphics/Rect;->top:I

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 604
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 605
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    goto :goto_8c

    .line 608
    :cond_4e
    nop

    .line 609
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v6, v8, :cond_5b

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v8

    goto :goto_5c

    :cond_5b
    move v6, v0

    .line 610
    :goto_5c
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v8, v9, :cond_68

    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    goto :goto_69

    :cond_68
    move v8, v0

    .line 608
    :goto_69
    invoke-virtual {v2, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 613
    iget v6, v2, Landroid/graphics/Rect;->left:I

    if-gez v6, :cond_72

    .line 614
    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 616
    :cond_72
    iget v6, v2, Landroid/graphics/Rect;->top:I

    if-gez v6, :cond_78

    .line 617
    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 621
    :cond_78
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-gt v6, v8, :cond_8b

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 622
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v6, v8, :cond_89

    goto :goto_8b

    :cond_89
    move v6, v0

    goto :goto_8c

    :cond_8b
    :goto_8b
    move v6, v5

    .line 626
    :goto_8c
    iget v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ne v8, v9, :cond_ab

    .line 627
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v9

    if-gt v8, v9, :cond_ab

    .line 628
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v9

    if-le v8, v9, :cond_a9

    goto :goto_ab

    :cond_a9
    move v8, v0

    goto :goto_ac

    :cond_ab
    :goto_ab
    move v8, v5

    .line 631
    :goto_ac
    if-eqz v8, :cond_d3

    .line 632
    iget v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    int-to-float v9, v9

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 633
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v9, v10

    .line 634
    iget v10, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ge v9, v10, :cond_d3

    .line 635
    iget v6, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v6, v6

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 637
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 638
    move v6, v5

    .line 649
    :cond_d3
    if-nez v6, :cond_f7

    if-nez v8, :cond_f7

    .line 658
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    int-to-long v1, v1

    .line 662
    const-wide/32 v3, 0x6400000

    cmp-long v1, v1, v3

    if-gez v1, :cond_ee

    .line 663
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 666
    :cond_ee
    if-nez v0, :cond_f5

    .line 667
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 675
    :cond_f5
    goto/16 :goto_1e7

    .line 677
    :cond_f7
    nop

    .line 678
    nop

    .line 680
    const/4 v3, 0x0

    :try_start_fa
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 681
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 680
    invoke-static {v6, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v6

    .line 688
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    div-int/2addr v8, v9

    .line 689
    move v9, v5

    .line 690
    :goto_10c
    mul-int/lit8 v10, v9, 0x2

    if-gt v10, v8, :cond_112

    .line 691
    move v9, v10

    goto :goto_10c

    .line 693
    :cond_112
    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 694
    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 696
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 697
    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000  # 1.0f

    div-float v9, v10, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->scale(F)V

    .line 698
    iget v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v9, v11

    .line 699
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 700
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v9

    float-to-int v11, v11

    .line 703
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v12

    if-le v11, v12, :cond_177

    .line 704
    iget v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    int-to-float v11, v11

    div-float/2addr v11, v9

    float-to-int v11, v11

    .line 705
    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v9

    float-to-int v1, v1

    .line 711
    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 712
    iget v12, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v13, v1

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    iput v12, v8, Landroid/graphics/Rect;->left:I

    .line 713
    iget v12, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v13, v11

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    iput v12, v8, Landroid/graphics/Rect;->top:I

    .line 714
    iget v12, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v1

    iput v12, v8, Landroid/graphics/Rect;->right:I

    .line 715
    iget v1, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v11

    iput v1, v8, Landroid/graphics/Rect;->bottom:I

    .line 716
    invoke-virtual {v2, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 717
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v1, v1

    div-float/2addr v10, v1

    invoke-virtual {v8, v10}, Landroid/graphics/Rect;->scale(F)V

    .line 723
    :cond_177
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    float-to-int v1, v1

    .line 724
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 736
    invoke-virtual {v6, v2, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 737
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 739
    if-nez v2, :cond_195

    .line 740
    const-string v1, "Could not decode new wallpaper"

    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    goto :goto_1da

    .line 743
    :cond_195
    invoke-static {v2, v8, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 755
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    const/high16 v4, 0x6400000

    if-gt v2, v4, :cond_1c7

    .line 760
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_1a8} :catch_1d8
    .catchall {:try_start_fa .. :try_end_1a8} :catchall_1cf

    .line 761
    :try_start_1a8
    new-instance v4, Ljava/io/BufferedOutputStream;

    const v6, 0x8000

    invoke-direct {v4, v2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1b0} :catch_1c5
    .catchall {:try_start_1a8 .. :try_end_1b0} :catchall_1c3

    .line 762
    :try_start_1b0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v1, v3, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 763
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1ba} :catch_1c0
    .catchall {:try_start_1b0 .. :try_end_1ba} :catchall_1bd

    .line 764
    move-object v3, v4

    move v0, v5

    goto :goto_1da

    .line 771
    :catchall_1bd
    move-exception p1

    move-object v3, v4

    goto :goto_1d1

    .line 766
    :catch_1c0
    move-exception v1

    move-object v3, v4

    goto :goto_1da

    .line 771
    :catchall_1c3
    move-exception p1

    goto :goto_1d1

    .line 766
    :catch_1c5
    move-exception v1

    goto :goto_1da

    .line 756
    :cond_1c7
    :try_start_1c7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Too large bitmap, limit=104857600"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1cf} :catch_1d8
    .catchall {:try_start_1c7 .. :try_end_1cf} :catchall_1cf

    .line 771
    :catchall_1cf
    move-exception p1

    move-object v2, v3

    :goto_1d1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 772
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 766
    :catch_1d8
    move-exception v1

    move-object v2, v3

    .line 771
    :goto_1da
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 772
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 773
    goto :goto_1e7

    .line 595
    :cond_1e1
    :goto_1e1
    const-string v1, "Invalid wallpaper data"

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    nop

    .line 777
    :goto_1e7
    if-nez v0, :cond_1f3

    .line 778
    const-string v0, "Unable to apply new wallpaper"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 782
    :cond_1f3
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_204

    .line 783
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 788
    :cond_204
    return-void
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5

    .line 3000
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3001
    if-nez p1, :cond_8

    .line 3002
    return p3

    .line 3004
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .registers 4

    .line 985
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 986
    if-nez v0, :cond_17

    .line 987
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    invoke-direct {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;-><init>(I)V

    .line 988
    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    .line 989
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 991
    :cond_17
    return-object v0
.end method

.method private getMaximumSizeDimension(I)I
    .registers 4

    .line 1006
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1007
    if-nez v0, :cond_32

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WallpaperManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1011
    :cond_32
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result p1

    return p1
.end method

.method private getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation

    .line 371
    nop

    .line 372
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 373
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 374
    if-eqz p1, :cond_12

    .line 375
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallbackList;

    goto :goto_13

    .line 374
    :cond_12
    const/4 p1, 0x0

    .line 377
    :goto_13
    return-object p1
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .registers 1

    .line 1674
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 6

    .line 3024
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_8

    :cond_6
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 3025
    :goto_8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3026
    if-nez v2, :cond_4f

    .line 3029
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 3030
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3034
    if-nez v1, :cond_4d

    .line 3035
    if-ne p2, v0, :cond_32

    .line 3036
    new-instance p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v0, "wallpaper_lock_orig"

    const-string/jumbo v1, "wallpaper_lock"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3038
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3039
    invoke-direct {p0, p2, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    goto :goto_50

    .line 3043
    :cond_32
    const-string p2, "WallpaperManagerService"

    const-string v0, "Didn\'t find wallpaper in non-lock case!"

    invoke-static {p2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    new-instance p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v0, "wallpaper_orig"

    const-string/jumbo v1, "wallpaper"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3045
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3046
    invoke-direct {p0, p2, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    goto :goto_50

    .line 3034
    :cond_4d
    move-object p2, v1

    goto :goto_50

    .line 3026
    :cond_4f
    move-object p2, v2

    .line 3050
    :goto_50
    return-object p2
.end method

.method private initializeFallbackWallpaper()V
    .registers 9

    .line 3164
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v0, :cond_27

    .line 3166
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v1, 0x0

    const-string/jumbo v2, "wallpaper_orig"

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3168
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3169
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v1

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3170
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3172
    :cond_27
    return-void
.end method

.method private isValidDisplay(I)Z
    .registers 3

    .line 2041
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method static synthetic lambda$attachServiceLocked$5(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3

    .line 2781
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic lambda$dump$6(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;)V
    .registers 3

    .line 3380
    const-string v0, "  displayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3381
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3382
    const-string v0, "  mWidth="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3383
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3384
    const-string v0, "  mHeight="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3385
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3386
    const-string v0, "  mPadding="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3387
    return-void
.end method

.method static synthetic lambda$dump$7(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3

    .line 3402
    const-string v0, "     mDisplayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3403
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3404
    const-string v0, "     mToken="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3405
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3406
    const-string v0, "     mEngine="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3407
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3408
    return-void
.end method

.method static synthetic lambda$dump$8(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3

    .line 3440
    const-string v0, "     mDisplayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3441
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3442
    const-string v0, "     mToken="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3443
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3444
    const-string v0, "     mEngine="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3445
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3446
    return-void
.end method

.method static synthetic lambda$updateFallbackConnection$1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 2

    .line 1047
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_7

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->disconnectLocked()V

    .line 1050
    :cond_7
    return-void
.end method

.method static synthetic lambda$updateFallbackConnection$2(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .registers 3

    .line 1055
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$3600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1056
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_18

    .line 1057
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 1055
    :goto_19
    return p0
.end method

.method private loadSettingsLocked(IZ)V
    .registers 19

    .line 3054
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, " "

    const-string v4, "failed parsing "

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 3055
    nop

    .line 3056
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v5

    .line 3058
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3059
    const/4 v6, 0x1

    const-string v7, "WallpaperManagerService"

    if-nez v0, :cond_4d

    .line 3061
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    .line 3063
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v8, "wallpaper_orig"

    const-string/jumbo v9, "wallpaper"

    invoke-direct {v0, v2, v8, v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3064
    iput-boolean v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3065
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3066
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v8

    if-nez v8, :cond_48

    .line 3067
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v8

    if-eqz v8, :cond_43

    .line 3068
    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_48

    .line 3070
    :cond_43
    const-string v8, "No static wallpaper imagery; defaults will be shown"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    :cond_48
    :goto_48
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initializeFallbackWallpaper()V

    move-object v8, v0

    goto :goto_4e

    .line 3059
    :cond_4d
    move-object v8, v0

    .line 3075
    :goto_4e
    nop

    .line 3076
    const/4 v9, 0x0

    invoke-direct {v1, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v10

    .line 3078
    const/4 v11, 0x0

    :try_start_55
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_5a} :catch_171
    .catch Ljava/lang/NullPointerException; {:try_start_55 .. :try_end_5a} :catch_156
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_5a} :catch_13b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_5a} :catch_120
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5a} :catch_105
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_55 .. :try_end_5a} :catch_e8

    .line 3079
    :try_start_5a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 3080
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3084
    :goto_67
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .line 3085
    const/4 v14, 0x2

    if-ne v13, v14, :cond_d0

    .line 3086
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 3087
    const-string/jumbo v15, "wp"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a7

    .line 3089
    move/from16 v15, p2

    invoke-direct {v1, v0, v8, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 3092
    const-string v14, "component"

    invoke-interface {v0, v11, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3093
    if-eqz v14, :cond_8d

    .line 3094
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v14

    goto :goto_8e

    .line 3095
    :cond_8d
    move-object v14, v11

    :goto_8e
    iput-object v14, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 3096
    iget-object v14, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v14, :cond_a2

    const-string v14, "android"

    iget-object v11, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 3098
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 3097
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_cf

    .line 3099
    :cond_a2
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iput-object v11, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    goto :goto_cf

    .line 3111
    :cond_a7
    move/from16 v15, p2

    const-string v11, "kwp"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_cf

    .line 3113
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3114
    if-nez v11, :cond_cb

    .line 3115
    new-instance v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v14, "wallpaper_lock_orig"

    const-string/jumbo v6, "wallpaper_lock"

    invoke-direct {v11, v2, v14, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3117
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3119
    :cond_cb
    invoke-direct {v1, v0, v11, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    :try_end_ce
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_ce} :catch_e5
    .catch Ljava/lang/NullPointerException; {:try_start_5a .. :try_end_ce} :catch_e2
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_ce} :catch_e0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a .. :try_end_ce} :catch_de
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_ce} :catch_dc
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5a .. :try_end_ce} :catch_da

    goto :goto_d2

    .line 3111
    :cond_cf
    :goto_cf
    goto :goto_d2

    .line 3085
    :cond_d0
    move/from16 v15, p2

    .line 3122
    :goto_d2
    const/4 v6, 0x1

    if-ne v13, v6, :cond_d8

    .line 3123
    nop

    .line 3136
    goto/16 :goto_17a

    .line 3122
    :cond_d8
    const/4 v11, 0x0

    goto :goto_67

    .line 3134
    :catch_da
    move-exception v0

    goto :goto_ea

    .line 3132
    :catch_dc
    move-exception v0

    goto :goto_107

    .line 3130
    :catch_de
    move-exception v0

    goto :goto_122

    .line 3128
    :catch_e0
    move-exception v0

    goto :goto_13d

    .line 3126
    :catch_e2
    move-exception v0

    goto/16 :goto_158

    .line 3124
    :catch_e5
    move-exception v0

    goto/16 :goto_173

    .line 3134
    :catch_e8
    move-exception v0

    const/4 v12, 0x0

    .line 3135
    :goto_ea
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v9

    goto/16 :goto_17a

    .line 3132
    :catch_105
    move-exception v0

    const/4 v12, 0x0

    .line 3133
    :goto_107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_179

    .line 3130
    :catch_120
    move-exception v0

    const/4 v12, 0x0

    .line 3131
    :goto_122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_179

    .line 3128
    :catch_13b
    move-exception v0

    const/4 v12, 0x0

    .line 3129
    :goto_13d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_179

    .line 3126
    :catch_156
    move-exception v0

    const/4 v12, 0x0

    .line 3127
    :goto_158
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_179

    .line 3124
    :catch_171
    move-exception v0

    const/4 v12, 0x0

    .line 3125
    :goto_173
    const-string/jumbo v0, "no current wallpaper -- first boot?"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    :goto_179
    move v6, v9

    .line 3137
    :goto_17a
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3139
    if-nez v6, :cond_193

    .line 3140
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 3141
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 3142
    const-string v0, ""

    iput-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3144
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_19d

    .line 3146
    :cond_193
    iget v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-gtz v0, :cond_19d

    .line 3147
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3155
    :cond_19d
    :goto_19d
    invoke-direct {v1, v10, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    .line 3156
    invoke-direct {v1, v8, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3157
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3158
    if-eqz v0, :cond_1b0

    .line 3159
    invoke-direct {v1, v0, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3161
    :cond_1b0
    return-void
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 5

    .line 2872
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "wallpaper_info.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 2873
    new-instance v0, Lcom/android/internal/util/JournaledFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v0
.end method

.method private migrateFromOld()V
    .registers 8

    .line 2968
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2970
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2971
    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_orig"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2974
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 2975
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_58

    .line 2981
    invoke-static {v0, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_58

    .line 2983
    :cond_30
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 2988
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/wallpaper_info.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2989
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 2990
    new-instance v5, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v6, "wallpaper_info.xml"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2991
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2994
    :cond_52
    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 2995
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2997
    :cond_58
    :goto_58
    return-void
.end method

.method private migrateSystemToLockWallpaperLocked(I)V
    .registers 6

    .line 2449
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2450
    if-nez v0, :cond_b

    .line 2454
    return-void

    .line 2458
    :cond_b
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2460
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2461
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2462
    iget-boolean v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iput-boolean v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 2463
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2467
    :try_start_29
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/system/ErrnoException; {:try_start_29 .. :try_end_47} :catch_4e

    .line 2474
    nop

    .line 2476
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2477
    return-void

    .line 2469
    :catch_4e
    move-exception p1

    .line 2470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t migrate system wallpaper: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WallpaperManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 2472
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 2473
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 5

    .line 2785
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2786
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1d

    .line 2788
    :try_start_b
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v2}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 2793
    goto :goto_1a

    .line 2789
    :catch_19
    move-exception v2

    .line 2786
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2795
    :cond_1d
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2797
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2798
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2799
    return-void
.end method

.method private notifyColorListeners(Landroid/app/WallpaperColors;III)V
    .registers 14

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    nop

    .line 427
    :try_start_9
    invoke-direct {p0, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 428
    const/4 v3, -0x1

    .line 429
    invoke-direct {p0, v3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v3

    .line 430
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 432
    const/4 v5, 0x0

    if-eqz v2, :cond_2d

    .line 433
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 434
    move v7, v5

    :goto_1c
    if-ge v7, v6, :cond_2a

    .line 435
    invoke-virtual {v2, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 437
    :cond_2a
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 440
    :cond_2d
    if-eqz v3, :cond_45

    .line 441
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 442
    move v6, v5

    :goto_34
    if-ge v6, v2, :cond_42

    .line 443
    invoke-virtual {v3, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 445
    :cond_42
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 447
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_65

    .line 449
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 450
    nop

    :goto_4b
    if-ge v5, v1, :cond_5b

    .line 452
    :try_start_4d
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v2, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_56} :catch_57

    .line 456
    goto :goto_58

    .line 453
    :catch_57
    move-exception v2

    .line 450
    :goto_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 460
    :cond_5b
    if-eqz v4, :cond_64

    if-nez p4, :cond_64

    .line 462
    :try_start_5f
    invoke-interface {v4, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_62} :catch_63

    .line 465
    goto :goto_64

    .line 463
    :catch_63
    move-exception p1

    .line 467
    :cond_64
    :goto_64
    return-void

    .line 447
    :catchall_65
    move-exception p1

    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p1
.end method

.method private notifyLockWallpaperChanged()V
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 350
    if-eqz v0, :cond_9

    .line 352
    :try_start_4
    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 355
    goto :goto_9

    .line 353
    :catch_8
    move-exception v0

    .line 357
    :cond_9
    :goto_9
    return-void
.end method

.method private notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 5

    .line 360
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_f

    .line 361
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v1, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$la7x4YHA-l88Cd6HFTscnLBbKfI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$la7x4YHA-l88Cd6HFTscnLBbKfI;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    goto :goto_13

    .line 365
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    .line 367
    :goto_13
    return-void
.end method

.method private notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .registers 7

    .line 383
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_3
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 385
    invoke-direct {p0, v1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 386
    const/4 v2, -0x1

    .line 387
    invoke-direct {p0, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 389
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 390
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 391
    monitor-exit v0

    return-void

    .line 398
    :cond_1c
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 399
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_46

    .line 403
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v0, p2, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;III)V

    .line 405
    if-eqz v1, :cond_45

    .line 406
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 407
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_33
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v1, :cond_39

    .line 410
    monitor-exit v0

    return-void

    .line 412
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_42

    .line 413
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;III)V

    goto :goto_45

    .line 412
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1

    .line 415
    :cond_45
    :goto_45
    return-void

    .line 399
    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method private onDisplayReadyInternal(I)V
    .registers 5

    .line 2847
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2848
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_9

    .line 2849
    monitor-exit v0

    return-void

    .line 2851
    :cond_9
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2852
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2853
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object p1

    .line 2854
    if-nez p1, :cond_1f

    monitor-exit v0

    return-void

    .line 2855
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2856
    monitor-exit v0

    return-void

    .line 2860
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_44

    .line 2861
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2862
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object p1

    .line 2863
    if-nez p1, :cond_3a

    monitor-exit v0

    return-void

    .line 2864
    :cond_3a
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2865
    goto :goto_4b

    .line 2866
    :cond_44
    const-string p1, "WallpaperManagerService"

    const-string v1, "No wallpaper can be added to the new display"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    :goto_4b
    monitor-exit v0

    .line 2869
    return-void

    .line 2868
    :catchall_4d
    move-exception p1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method private parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .registers 12

    .line 3188
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3189
    if-eqz v1, :cond_16

    .line 3190
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3191
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-le v1, v2, :cond_15

    .line 3192
    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 3194
    :cond_15
    goto :goto_1c

    .line 3195
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v1

    iput v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3198
    :goto_1c
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v2

    .line 3200
    if-nez p3, :cond_3c

    .line 3201
    const-string/jumbo p3, "width"

    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 3202
    const-string p3, "height"

    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 3204
    :cond_3c
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropLeft"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->left:I

    .line 3205
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropTop"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->top:I

    .line 3206
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropRight"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->right:I

    .line 3207
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropBottom"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    .line 3208
    iget-object p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingLeft"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->left:I

    .line 3209
    iget-object p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingTop"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->top:I

    .line 3210
    iget-object p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingRight"

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->right:I

    .line 3211
    iget-object p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v2, "paddingBottom"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3212
    const-string p3, "colorsCount"

    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p3

    .line 3213
    if-lez p3, :cond_d5

    .line 3214
    nop

    .line 3215
    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move v2, v1

    :goto_9d
    if-ge v2, p3, :cond_c8

    .line 3216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v6

    .line 3217
    if-nez v2, :cond_bc

    .line 3218
    move-object v3, v6

    goto :goto_c5

    .line 3219
    :cond_bc
    const/4 v7, 0x1

    if-ne v2, v7, :cond_c1

    .line 3220
    move-object v4, v6

    goto :goto_c5

    .line 3221
    :cond_c1
    const/4 v7, 0x2

    if-ne v2, v7, :cond_c8

    .line 3222
    move-object v5, v6

    .line 3215
    :goto_c5
    add-int/lit8 v2, v2, 0x1

    goto :goto_9d

    .line 3227
    :cond_c8
    const-string p3, "colorHints"

    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p3

    .line 3228
    new-instance v1, Landroid/app/WallpaperColors;

    invoke-direct {v1, v3, v4, v5, p3}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    iput-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 3230
    :cond_d5
    const-string/jumbo p3, "name"

    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3231
    const-string p3, "backup"

    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "true"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3232
    return-void
.end method

.method private removeDisplayData(I)V
    .registers 3

    .line 981
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 982
    return-void
.end method

.method private restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 13

    .line 3293
    const-string v0, "WallpaperManagerService"

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-le v1, v2, :cond_1a3

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "res:"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a3

    .line 3294
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3296
    nop

    .line 3297
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 3298
    const/4 v5, 0x0

    if-lez v4, :cond_30

    .line 3299
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_31

    .line 3298
    :cond_30
    move-object v6, v5

    .line 3302
    :goto_31
    nop

    .line 3303
    const/16 v7, 0x2f

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 3304
    if-lez v7, :cond_41

    .line 3305
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_42

    .line 3304
    :cond_41
    move-object v8, v5

    .line 3308
    :goto_42
    nop

    .line 3309
    const/4 v9, 0x1

    if-lez v4, :cond_52

    if-lez v7, :cond_52

    sub-int v10, v7, v4

    if-le v10, v9, :cond_52

    .line 3310
    add-int/2addr v4, v9

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_53

    .line 3313
    :cond_52
    move-object v4, v5

    :goto_53
    if-eqz v6, :cond_1a3

    if-eqz v8, :cond_1a3

    if-eqz v4, :cond_1a3

    .line 3314
    const/4 v7, -0x1

    .line 3315
    nop

    .line 3316
    nop

    .line 3317
    nop

    .line 3319
    :try_start_5d
    iget-object v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 3320
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3321
    invoke-virtual {v2, v1, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 3322
    if-nez v7, :cond_9e

    .line 3323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t resolve identifier pkg="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ident="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d .. :try_end_91} :catch_167
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5d .. :try_end_91} :catch_145
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_91} :catch_129
    .catchall {:try_start_5d .. :try_end_91} :catchall_124

    .line 3325
    nop

    .line 3353
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3354
    nop

    .line 3357
    nop

    .line 3360
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3361
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3325
    return v3

    .line 3328
    :cond_9e
    :try_start_9e
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2
    :try_end_a2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9e .. :try_end_a2} :catch_167
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9e .. :try_end_a2} :catch_145
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a2} :catch_129
    .catchall {:try_start_9e .. :try_end_a2} :catchall_124

    .line 3329
    :try_start_a2
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 3330
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3331
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3333
    :cond_b4
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v8, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_bb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a2 .. :try_end_bb} :catch_11f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a2 .. :try_end_bb} :catch_11a
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_bb} :catch_115
    .catchall {:try_start_a2 .. :try_end_bb} :catchall_10f

    .line 3334
    :try_start_bb
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bb .. :try_end_c2} :catch_10c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_bb .. :try_end_c2} :catch_109
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c2} :catch_106
    .catchall {:try_start_bb .. :try_end_c2} :catchall_103

    .line 3336
    const p1, 0x8000

    :try_start_c5
    new-array p1, p1, [B

    .line 3338
    :goto_c7
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_d4

    .line 3339
    invoke-virtual {v4, p1, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3340
    invoke-virtual {v8, p1, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_c7

    .line 3344
    :cond_d4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restored wallpaper: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c5 .. :try_end_e8} :catch_101
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c5 .. :try_end_e8} :catch_ff
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_e8} :catch_fd
    .catchall {:try_start_c5 .. :try_end_e8} :catchall_fb

    .line 3345
    nop

    .line 3353
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3354
    nop

    .line 3355
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3357
    nop

    .line 3358
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3360
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3361
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3345
    return v9

    .line 3353
    :catchall_fb
    move-exception p1

    goto :goto_112

    .line 3350
    :catch_fd
    move-exception p1

    goto :goto_118

    .line 3348
    :catch_ff
    move-exception p1

    goto :goto_11d

    .line 3346
    :catch_101
    move-exception p1

    goto :goto_122

    .line 3353
    :catchall_103
    move-exception p1

    move-object v8, v5

    goto :goto_112

    .line 3350
    :catch_106
    move-exception p1

    move-object v8, v5

    goto :goto_118

    .line 3348
    :catch_109
    move-exception p1

    move-object v8, v5

    goto :goto_11d

    .line 3346
    :catch_10c
    move-exception p1

    move-object v8, v5

    goto :goto_122

    .line 3353
    :catchall_10f
    move-exception p1

    move-object v4, v5

    move-object v8, v4

    :goto_112
    move-object v5, v2

    goto/16 :goto_18f

    .line 3350
    :catch_115
    move-exception p1

    move-object v4, v5

    move-object v8, v4

    :goto_118
    move-object v5, v2

    goto :goto_12c

    .line 3348
    :catch_11a
    move-exception p1

    move-object v4, v5

    move-object v8, v4

    :goto_11d
    move-object v5, v2

    goto :goto_148

    .line 3346
    :catch_11f
    move-exception p1

    move-object v4, v5

    move-object v8, v4

    :goto_122
    move-object v5, v2

    goto :goto_16a

    .line 3353
    :catchall_124
    move-exception p1

    move-object v4, v5

    move-object v8, v4

    goto/16 :goto_18f

    .line 3350
    :catch_129
    move-exception p1

    move-object v4, v5

    move-object v8, v4

    .line 3351
    :goto_12c
    :try_start_12c
    const-string v1, "IOException while restoring wallpaper "

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_131
    .catchall {:try_start_12c .. :try_end_131} :catchall_18e

    .line 3353
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3354
    if-eqz v4, :cond_139

    .line 3355
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3357
    :cond_139
    if-eqz v8, :cond_13e

    .line 3358
    :goto_13b
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3360
    :cond_13e
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3361
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3362
    goto :goto_1a3

    .line 3348
    :catch_145
    move-exception p1

    move-object v4, v5

    move-object v8, v4

    .line 3349
    :goto_148
    :try_start_148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource not found: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15c
    .catchall {:try_start_148 .. :try_end_15c} :catchall_18e

    .line 3353
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3354
    if-eqz v4, :cond_164

    .line 3355
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3357
    :cond_164
    if-eqz v8, :cond_13e

    .line 3358
    goto :goto_13b

    .line 3346
    :catch_167
    move-exception p1

    move-object v4, v5

    move-object v8, v4

    .line 3347
    :goto_16a
    :try_start_16a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183
    .catchall {:try_start_16a .. :try_end_183} :catchall_18e

    .line 3353
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3354
    if-eqz v4, :cond_18b

    .line 3355
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3357
    :cond_18b
    if-eqz v8, :cond_13e

    .line 3358
    goto :goto_13b

    .line 3353
    :catchall_18e
    move-exception p1

    :goto_18f
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3354
    if-eqz v4, :cond_197

    .line 3355
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3357
    :cond_197
    if-eqz v8, :cond_19c

    .line 3358
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3360
    :cond_19c
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3361
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 3365
    :cond_1a3
    :goto_1a3
    return v3
.end method

.method private saveSettingsLocked(I)V
    .registers 8

    .line 2877
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 2878
    nop

    .line 2879
    nop

    .line 2881
    const/4 v1, 0x0

    :try_start_7
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2882
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2883
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1b} :catch_5d

    .line 2884
    :try_start_1b
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2885
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2889
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2890
    if-eqz v1, :cond_3c

    .line 2891
    const-string/jumbo v5, "wp"

    invoke-direct {p0, v2, v5, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2893
    :cond_3c
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2894
    if-eqz p1, :cond_4b

    .line 2895
    const-string v1, "kwp"

    invoke-direct {p0, v2, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2898
    :cond_4b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2900
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2901
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2902
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 2903
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_5a} :catch_5b

    .line 2907
    goto :goto_65

    .line 2904
    :catch_5b
    move-exception p1

    goto :goto_5f

    :catch_5d
    move-exception p1

    move-object v4, v1

    .line 2905
    :goto_5f
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2906
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2908
    :goto_65
    return-void
.end method

.method private setWallpaperComponent(Landroid/content/ComponentName;I)V
    .registers 16

    .line 2530
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "changing live wallpaper"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2532
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2534
    nop

    .line 2535
    nop

    .line 2538
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2540
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2541
    if-eqz v1, :cond_82

    .line 2544
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2550
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2551
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3f

    .line 2554
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    .line 2559
    :cond_3f
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_99

    const/4 v10, 0x1

    if-nez p2, :cond_4a

    .line 2560
    const/4 p2, 0x3

    goto :goto_4b

    .line 2559
    :cond_4a
    move p2, v10

    .line 2564
    :goto_4b
    const/4 v11, 0x0

    :try_start_4c
    iput-boolean v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2565
    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v12

    .line 2566
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 2567
    if-nez v12, :cond_63

    .line 2568
    const/4 p1, 0x0

    iput-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2570
    :cond_63
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result p1

    iput p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2571
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_6c
    .catchall {:try_start_4c .. :try_end_6c} :catchall_7d

    .line 2572
    move v11, v10

    .line 2575
    :cond_6d
    :try_start_6d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2576
    nop

    .line 2577
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_99

    .line 2579
    if-eqz v11, :cond_7c

    .line 2580
    invoke-direct {p0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2581
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {p0, p1, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2583
    :cond_7c
    return-void

    .line 2575
    :catchall_7d
    move-exception p1

    :try_start_7e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2542
    :cond_82
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2577
    :catchall_99
    move-exception p1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_7e .. :try_end_9b} :catchall_99

    throw p1
.end method

.method private supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .registers 4

    .line 1029
    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 1030
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v1, :cond_f

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 1031
    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->supportsMultipleDisplays()Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    const/4 v0, 0x1

    .line 1030
    :cond_10
    return v0

    .line 1033
    :cond_11
    return v0
.end method

.method private updateFallbackConnection()V
    .registers 3

    .line 1037
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_47

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_9

    goto :goto_47

    .line 1038
    :cond_9
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1039
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1040
    if-nez v1, :cond_19

    .line 1041
    const-string v0, "WallpaperManagerService"

    const-string v1, "Fallback wallpaper connection has not been created yet!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    return-void

    .line 1044
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1045
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_46

    .line 1046
    sget-object v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$pVmree9DyIpBSg0s3RDK3MDesvs;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$pVmree9DyIpBSg0s3RDK3MDesvs;

    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 1051
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_46

    .line 1054
    :cond_36
    new-instance v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$SxaUJpgTTfzUoz6u3AWuAOQdoNw;

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$SxaUJpgTTfzUoz6u3AWuAOQdoNw;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-static {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Ljava/util/function/Predicate;)V

    .line 1058
    new-instance v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$tRb4SPHGj0pcxb3p7arcqKFqs08;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$tRb4SPHGj0pcxb3p7arcqKFqs08;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 1064
    :cond_46
    :goto_46
    return-void

    .line 1037
    :cond_47
    :goto_47
    return-void
.end method

.method private writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2915
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v1

    .line 2916
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2917
    iget v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2918
    iget v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "width"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2919
    iget v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "height"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2921
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cropLeft"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2922
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cropTop"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2923
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cropRight"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2924
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cropBottom"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2926
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_73

    .line 2927
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "paddingLeft"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2929
    :cond_73
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eqz v3, :cond_87

    .line 2930
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "paddingTop"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2932
    :cond_87
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-eqz v3, :cond_9b

    .line 2933
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "paddingRight"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2935
    :cond_9b
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v3, :cond_af

    .line 2936
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "paddingBottom"

    invoke-interface {p1, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2939
    :cond_af
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_105

    .line 2940
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2941
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "colorsCount"

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2942
    if-lez v1, :cond_f6

    .line 2943
    nop

    :goto_c9
    if-ge v0, v1, :cond_f6

    .line 2944
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v3}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Color;

    .line 2945
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "colorValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Color;->toArgb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2943
    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    .line 2948
    :cond_f6
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2949
    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2948
    const-string v1, "colorHints"

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2952
    :cond_105
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const-string/jumbo v1, "name"

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2953
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_126

    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 2954
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_126

    .line 2955
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2956
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 2955
    const-string v1, "component"

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2959
    :cond_126
    iget-boolean p3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    if-eqz p3, :cond_132

    .line 2960
    const-string p3, "backup"

    const-string/jumbo v0, "true"

    invoke-interface {p1, v2, p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2963
    :cond_132
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2964
    return-void
.end method


# virtual methods
.method public clearWallpaper(Ljava/lang/String;II)V
    .registers 11

    .line 1905
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1906
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_56

    .line 1909
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1910
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1909
    const-string v5, "clearWallpaper"

    move v2, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1912
    nop

    .line 1913
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1914
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2a
    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1916
    const/4 v0, 0x2

    if-ne p2, v0, :cond_39

    .line 1917
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1919
    :cond_39
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3e

    if-nez v1, :cond_47

    .line 1920
    :cond_3e
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1922
    :cond_47
    monitor-exit p3
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_53

    .line 1925
    if-eqz v1, :cond_52

    .line 1926
    invoke-direct {p0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1927
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1929
    :cond_52
    return-void

    .line 1922
    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit p3
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1

    .line 1907
    :cond_56
    :goto_56
    return-void
.end method

.method clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    .registers 16

    .line 1932
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_f

    if-ne p2, v0, :cond_7

    goto :goto_f

    .line 1933
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must specify exactly one kind of wallpaper to clear"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1936
    :cond_f
    :goto_f
    nop

    .line 1937
    const/4 v1, 0x0

    if-ne p2, v0, :cond_1e

    .line 1938
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1939
    if-nez v2, :cond_33

    .line 1944
    return-void

    .line 1947
    :cond_1e
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1948
    if-nez v2, :cond_33

    .line 1950
    invoke-direct {p0, p3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1951
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1954
    :cond_33
    if-nez v2, :cond_36

    .line 1955
    return-void

    .line 1958
    :cond_36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1960
    :try_start_3a
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1961
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1962
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1963
    if-ne p2, v0, :cond_63

    .line 1964
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 1965
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;
    :try_end_55
    .catchall {:try_start_3a .. :try_end_55} :catchall_a1

    .line 1966
    if-eqz p1, :cond_5c

    .line 1971
    :try_start_57
    invoke-interface {p1}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5a} :catch_5b
    .catchall {:try_start_57 .. :try_end_5a} :catchall_a1

    .line 1974
    goto :goto_5c

    .line 1972
    :catch_5b
    move-exception p1

    .line 1976
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_a1

    .line 2008
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1977
    return-void

    .line 1981
    :cond_63
    nop

    .line 1983
    const/4 p2, 0x0

    :try_start_65
    iput-object p2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 1984
    iput-boolean v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1985
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_6b} :catch_89
    .catchall {:try_start_65 .. :try_end_6b} :catchall_a1

    if-eq p3, v0, :cond_71

    .line 2008
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1985
    return-void

    .line 1986
    :cond_71
    if-eqz p1, :cond_77

    .line 1987
    :try_start_73
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object v4, p1

    goto :goto_78

    .line 1988
    :cond_77
    move-object v4, p2

    :goto_78
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1986
    move-object v3, p0

    move-object v7, v2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result p1
    :try_end_81
    .catch Ljava/lang/IllegalArgumentException; {:try_start_73 .. :try_end_81} :catch_89
    .catchall {:try_start_73 .. :try_end_81} :catchall_a1

    if-eqz p1, :cond_87

    .line 2008
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1989
    return-void

    .line 1993
    :cond_87
    move-object p1, p2

    goto :goto_8b

    .line 1991
    :catch_89
    move-exception p1

    .line 1992
    nop

    .line 1999
    :goto_8b
    :try_start_8b
    const-string p3, "WallpaperManagerService"

    const-string v0, "Default wallpaper component not found!"

    invoke-static {p3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2000
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_95
    .catchall {:try_start_8b .. :try_end_95} :catchall_a1

    .line 2001
    if-eqz p4, :cond_9c

    .line 2003
    :try_start_97
    invoke-interface {p4, p2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9a} :catch_9b
    .catchall {:try_start_97 .. :try_end_9a} :catchall_a1

    .line 2005
    goto :goto_9c

    .line 2004
    :catch_9b
    move-exception p1

    .line 2008
    :cond_9c
    :goto_9c
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2009
    nop

    .line 2010
    return-void

    .line 2008
    :catchall_a1
    move-exception p1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 3370
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string p3, "WallpaperManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 3372
    :cond_b
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3373
    :try_start_e
    const-string p3, "System wallpaper state:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3374
    const/4 p3, 0x0

    move v0, p3

    :goto_15
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_b8

    .line 3375
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3376
    const-string v2, " User "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3377
    const-string v2, ": id="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3378
    const-string v2, " Display state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3379
    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$VlOcXJ2BasDkYqNidSTRvw-HBpM;

    invoke-direct {v2, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$VlOcXJ2BasDkYqNidSTRvw-HBpM;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->forEachDisplayData(Ljava/util/function/Consumer;)V

    .line 3388
    const-string v2, "  mCropHint="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3389
    const-string v2, "  mName="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3390
    const-string v2, "  mAllowBackup="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3391
    const-string v2, "  mWallpaperComponent="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3392
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_b4

    .line 3393
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3394
    const-string v3, "  Wallpaper connection "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3395
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3396
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3397
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_93

    .line 3398
    const-string v3, "    mInfo.component="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3399
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3401
    :cond_93
    new-instance v3, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$fLM_YLhVBfWS7QM0ta-qHXvJ4Uc;

    invoke-direct {v3, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$fLM_YLhVBfWS7QM0ta-qHXvJ4Uc;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3409
    const-string v3, "    mService="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3410
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3411
    const-string v2, "    mLastDiedTime="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3412
    iget-wide v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 3374
    :cond_b4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15

    .line 3415
    :cond_b8
    const-string v0, "Lock wallpaper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3416
    nop

    :goto_be
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p3, v0, :cond_103

    .line 3417
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3418
    const-string v1, " User "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3419
    const-string v1, ": id="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3420
    const-string v1, "  mCropHint="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3421
    const-string v1, "  mName="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3422
    const-string v1, "  mAllowBackup="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3416
    add-int/lit8 p3, p3, 0x1

    goto :goto_be

    .line 3424
    :cond_103
    const-string p3, "Fallback wallpaper state:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3425
    const-string p3, " User "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget p3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 3426
    const-string p3, ": id="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget p3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 3427
    const-string p3, "  mCropHint="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3428
    const-string p3, "  mName="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3429
    const-string p3, "  mAllowBackup="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean p3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3430
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz p3, :cond_190

    .line 3431
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3432
    const-string v0, "  Fallback Wallpaper connection "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3433
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3434
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3435
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v0, :cond_16d

    .line 3436
    const-string v0, "    mInfo.component="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3437
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3439
    :cond_16d
    new-instance v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$VUhQWq8Flr0dsQqeVHhHT8jU7qY;

    invoke-direct {v0, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$VUhQWq8Flr0dsQqeVHhHT8jU7qY;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p3, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3447
    const-string v0, "    mService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3448
    iget-object p3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3449
    const-string p3, "    mLastDiedTime="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3450
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 3452
    :cond_190
    monitor-exit p1

    .line 3453
    return-void

    .line 3452
    :catchall_192
    move-exception p2

    monitor-exit p1
    :try_end_194
    .catchall {:try_start_e .. :try_end_194} :catchall_192

    throw p2
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1679
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1680
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 1681
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1682
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1680
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1684
    :cond_1c
    return-void
.end method

.method forEachDisplayData(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;",
            ">;)V"
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1016
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 1017
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1015
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1019
    :cond_18
    return-void
.end method

.method public getHeightHint(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2119
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2120
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2123
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2124
    if-eqz v1, :cond_1f

    .line 2125
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object p1

    .line 2126
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    monitor-exit v0

    return p1

    .line 2128
    :cond_1f
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 2121
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2130
    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 1758
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1b

    .line 1761
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1762
    :try_start_b
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1763
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1

    .line 1759
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .registers 21

    .line 2180
    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 2182
    const/4 v5, 0x1

    if-eqz v4, :cond_29

    .line 2183
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 2184
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2183
    move-object/from16 v8, p1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/storage/StorageManager;->checkPermissionReadImages(ZIILjava/lang/String;)Z

    .line 2187
    :cond_29
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2188
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    .line 2187
    const-string v13, "getWallpaper"

    move/from16 v10, p5

    invoke-static/range {v8 .. v14}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2190
    const/4 v6, 0x2

    if-eq v2, v5, :cond_4a

    if-ne v2, v6, :cond_42

    goto :goto_4a

    .line 2191
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2194
    :cond_4a
    :goto_4a
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2196
    if-ne v2, v6, :cond_52

    :try_start_4f
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_54

    :cond_52
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 2197
    :goto_54
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2198
    const/4 v4, 0x0

    if-nez v2, :cond_5f

    .line 2202
    monitor-exit v5

    return-object v4

    .line 2205
    :cond_5f
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0
    :try_end_64
    .catchall {:try_start_4f .. :try_end_64} :catchall_9e

    .line 2207
    if-eqz v3, :cond_78

    .line 2208
    :try_start_66
    const-string/jumbo v6, "width"

    iget v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2209
    const-string v6, "height"

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_78

    .line 2218
    :catch_76
    move-exception v0

    goto :goto_95

    .line 2211
    :cond_78
    :goto_78
    if-eqz v1, :cond_81

    .line 2212
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2214
    :cond_81
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_87
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_87} :catch_76
    .catchall {:try_start_66 .. :try_end_87} :catchall_9e

    if-nez v0, :cond_8b

    .line 2215
    :try_start_89
    monitor-exit v5
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_9e

    return-object v4

    .line 2217
    :cond_8b
    :try_start_8b
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_93
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_93} :catch_76
    .catchall {:try_start_8b .. :try_end_93} :catchall_9e

    :try_start_93
    monitor-exit v5

    return-object v0

    .line 2220
    :goto_95
    const-string v1, "WallpaperManagerService"

    const-string v2, "Error getting wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2222
    monitor-exit v5

    return-object v4

    .line 2223
    :catchall_9e
    move-exception v0

    monitor-exit v5
    :try_end_a0
    .catchall {:try_start_93 .. :try_end_a0} :catchall_9e

    throw v0
.end method

.method public getWallpaperColors(III)Landroid/app/WallpaperColors;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2342
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    if-ne p1, v0, :cond_7

    goto :goto_10

    .line 2343
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2345
    :cond_10
    :goto_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string v7, "getWallpaperColors"

    move v4, p2

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2348
    nop

    .line 2351
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2352
    const/4 v3, 0x0

    if-ne p1, v1, :cond_34

    .line 2353
    :try_start_29
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_35

    .line 2366
    :catchall_32
    move-exception p1

    goto :goto_55

    .line 2352
    :cond_34
    move-object p1, v3

    .line 2358
    :goto_35
    if-nez p1, :cond_3b

    .line 2359
    invoke-direct {p0, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p1

    .line 2362
    :cond_3b
    if-nez p1, :cond_3f

    .line 2363
    monitor-exit v2

    return-object v3

    .line 2365
    :cond_3f
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez p2, :cond_44

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    .line 2366
    :goto_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_32

    .line 2368
    if-eqz v0, :cond_4b

    .line 2369
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2372
    :cond_4b
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2373
    :try_start_4e
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    monitor-exit p2

    return-object p1

    .line 2374
    :catchall_52
    move-exception p1

    monitor-exit p2
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_52

    throw p1

    .line 2366
    :goto_55
    :try_start_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_32

    throw p1
.end method

.method public getWallpaperIdForUser(II)I
    .registers 10

    .line 2241
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2241
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getWallpaperIdForUser"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2244
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_21

    if-ne p1, v0, :cond_19

    goto :goto_21

    .line 2245
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must specify exactly one kind of wallpaper"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2249
    :cond_21
    :goto_21
    if-ne p1, v0, :cond_26

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_28

    :cond_26
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 2250
    :goto_28
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2251
    :try_start_2b
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2252
    if-eqz p1, :cond_37

    .line 2253
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    monitor-exit v0

    return p1

    .line 2255
    :cond_37
    monitor-exit v0

    .line 2256
    const/4 p1, -0x1

    return p1

    .line 2255
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 9

    .line 2228
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2228
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getWallpaperInfo"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2230
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2231
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2232
    if-eqz p1, :cond_29

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_29

    .line 2233
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v0

    return-object p1

    .line 2235
    :cond_29
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 2236
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public getWidthHint(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2101
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2102
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2105
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2106
    if-eqz v1, :cond_1f

    .line 2107
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object p1

    .line 2108
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    monitor-exit v0

    return p1

    .line 2110
    :cond_1f
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 2103
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2112
    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .registers 8

    .line 2013
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2015
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_63

    .line 2017
    :try_start_7
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_5e

    .line 2019
    :try_start_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2020
    nop

    .line 2021
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2023
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2024
    goto :goto_1e

    .line 2026
    :cond_32
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2027
    if-nez v4, :cond_4e

    .line 2029
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 2030
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2032
    :cond_4e
    if-eqz v4, :cond_5b

    iget-object v2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 2033
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 2035
    :cond_5b
    goto :goto_1e

    .line 2036
    :cond_5c
    monitor-exit v0

    .line 2037
    return v3

    .line 2019
    :catchall_5e
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2036
    :catchall_63
    move-exception p1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_16 .. :try_end_65} :catchall_63

    throw p1
.end method

.method initialize()V
    .registers 6

    .line 1663
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1664
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1669
    invoke-direct {p0, v0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1670
    invoke-direct {p0, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1671
    return-void
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .registers 5

    .line 2819
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2820
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 2821
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2822
    if-nez v0, :cond_1a

    .line 2823
    const/4 p1, 0x0

    return p1

    .line 2826
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 2827
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_46

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_46

    .line 2830
    :cond_32
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 2831
    const-string/jumbo v0, "no_set_wallpaper"

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 2828
    :cond_46
    :goto_46
    return v2
.end method

.method public isWallpaperBackupEligible(II)Z
    .registers 5

    .line 2836
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_23

    .line 2840
    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    .line 2841
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_1c

    .line 2842
    :cond_14
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2843
    :goto_1c
    if-eqz p1, :cond_21

    iget-boolean p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    return p1

    .line 2837
    :cond_23
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Only the system may call isWallpaperBackupEligible"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .registers 5

    .line 2813
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public synthetic lambda$notifyWallpaperColorsChanged$0$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 4

    .line 362
    iget p3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    .line 363
    return-void
.end method

.method public synthetic lambda$switchUser$4$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 4

    .line 1862
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1863
    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1864
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1865
    return-void
.end method

.method public synthetic lambda$updateFallbackConnection$3$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 4

    .line 1059
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez v0, :cond_9

    .line 1060
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1062
    :cond_9
    return-void
.end method

.method makeWallpaperIdLocked()I
    .registers 2

    .line 1023
    :goto_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 1024
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-eqz v0, :cond_b

    .line 1025
    return v0

    .line 1024
    :cond_b
    goto :goto_0
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 1784
    const/16 v0, 0x226

    if-ne p1, v0, :cond_8

    .line 1785
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V

    goto :goto_11

    .line 1786
    :cond_8
    const/16 v0, 0x258

    if-ne p1, v0, :cond_11

    .line 1787
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    .line 1789
    :cond_11
    :goto_11
    return-void
.end method

.method onRemoveUser(I)V
    .registers 9

    .line 1828
    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-void

    .line 1830
    :cond_4
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1831
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1832
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    .line 1833
    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_21

    aget-object v5, v2, v4

    .line 1834
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1833
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1836
    :cond_21
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1837
    monitor-exit v1

    .line 1838
    return-void

    .line 1837
    :catchall_28
    move-exception p1

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public onUnlockUser(I)V
    .registers 6

    .line 1793
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1794
    :try_start_3
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_31

    .line 1795
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 1797
    nop

    .line 1798
    invoke-direct {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 1799
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1800
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1807
    :cond_18
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1808
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1809
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 1821
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1824
    :cond_31
    monitor-exit v0

    .line 1825
    return-void

    .line 1824
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .registers 11

    .line 2262
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "registerWallpaperColorsCallback"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2264
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2266
    :try_start_16
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2267
    if-nez v1, :cond_2a

    .line 2268
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2269
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2271
    :cond_2a
    nop

    .line 2272
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/RemoteCallbackList;

    .line 2273
    if-nez p2, :cond_3b

    .line 2274
    new-instance p2, Landroid/os/RemoteCallbackList;

    invoke-direct {p2}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 2275
    invoke-virtual {v1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2277
    :cond_3b
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2278
    monitor-exit v0

    .line 2279
    return-void

    .line 2278
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public setDimensionHints(IILjava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2050
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_c

    .line 2052
    return-void

    .line 2056
    :cond_c
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2057
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2059
    iget-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 2060
    :try_start_1f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2061
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 2062
    if-lez p1, :cond_8b

    if-lez p2, :cond_8b

    .line 2066
    invoke-direct {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 2070
    invoke-direct {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v3

    .line 2071
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    if-ne p1, v4, :cond_3e

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-eq p2, v4, :cond_72

    .line 2072
    :cond_3e
    iput p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 2073
    iput p2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 2074
    if-nez p4, :cond_47

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2075
    :cond_47
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v3, v0, :cond_4d

    monitor-exit p3

    return-void

    .line 2076
    :cond_4d
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_72

    .line 2077
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2078
    invoke-virtual {v0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object p4

    .line 2079
    if-eqz p4, :cond_5c

    iget-object v0, p4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_5b
    .catchall {:try_start_1f .. :try_end_5b} :catchall_94

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    .line 2080
    :goto_5d
    if-eqz v0, :cond_68

    .line 2082
    :try_start_5f
    invoke-interface {v0, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_62} :catch_63
    .catchall {:try_start_5f .. :try_end_62} :catchall_94

    .line 2084
    goto :goto_64

    .line 2083
    :catch_63
    move-exception p1

    .line 2085
    :goto_64
    :try_start_64
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_72

    .line 2086
    :cond_68
    iget-object p1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz p1, :cond_72

    if-eqz p4, :cond_72

    .line 2090
    iput-boolean v1, p4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDimensionsChanged:Z

    .line 2094
    :cond_72
    :goto_72
    monitor-exit p3

    .line 2095
    return-void

    .line 2067
    :cond_74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find display with id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2063
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width and height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2094
    :catchall_94
    move-exception p1

    monitor-exit p3
    :try_end_96
    .catchall {:try_start_64 .. :try_end_96} :catchall_94

    throw p1
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V
    .registers 9

    .line 2137
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2138
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 2139
    return-void

    .line 2141
    :cond_c
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2142
    :try_start_f
    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 2145
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2146
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 2147
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_71

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_71

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ltz v3, :cond_71

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v3, :cond_71

    .line 2151
    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v3

    .line 2152
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 2153
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2154
    if-nez p3, :cond_44

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2155
    :cond_44
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v3, v0, :cond_4a

    monitor-exit p2

    return-void

    .line 2156
    :cond_4a
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_6f

    .line 2157
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2158
    invoke-virtual {v0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object p3

    .line 2159
    if-eqz p3, :cond_59

    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_58
    .catchall {:try_start_f .. :try_end_58} :catchall_a0

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    .line 2160
    :goto_5a
    if-eqz v0, :cond_65

    .line 2162
    :try_start_5c
    invoke-interface {v0, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_5f} :catch_60
    .catchall {:try_start_5c .. :try_end_5f} :catchall_a0

    .line 2164
    goto :goto_61

    .line 2163
    :catch_60
    move-exception p1

    .line 2165
    :goto_61
    :try_start_61
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_6f

    .line 2166
    :cond_65
    iget-object p1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz p1, :cond_6f

    if-eqz p3, :cond_6f

    .line 2170
    iput-boolean v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mPaddingChanged:Z

    .line 2174
    :cond_6f
    :goto_6f
    monitor-exit p2

    .line 2175
    return-void

    .line 2148
    :cond_71
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "padding must be positive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2143
    :cond_89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find display with id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2174
    :catchall_a0
    move-exception p1

    monitor-exit p2
    :try_end_a2
    .catchall {:try_start_61 .. :try_end_a2} :catchall_a0

    throw p1
.end method

.method public setInAmbientMode(ZJ)V
    .registers 7

    .line 2308
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2309
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    .line 2310
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2312
    if-eqz v1, :cond_2f

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_2f

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 2313
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2315
    :cond_25
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    goto :goto_30

    .line 2317
    :cond_2f
    const/4 v1, 0x0

    .line 2319
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_39

    .line 2321
    if-eqz v1, :cond_38

    .line 2323
    :try_start_33
    invoke-interface {v1, p1, p2, p3}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZJ)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    .line 2326
    goto :goto_38

    .line 2324
    :catch_37
    move-exception p1

    .line 2328
    :cond_38
    :goto_38
    return-void

    .line 2319
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .registers 3

    .line 2332
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2333
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2334
    :try_start_8
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 2335
    monitor-exit v0

    .line 2336
    const/4 p1, 0x1

    return p1

    .line 2335
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    .registers 16

    .line 2390
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "changing wallpaper"

    const/4 v6, 0x0

    move v2, p8

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p8

    .line 2392
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2394
    and-int/lit8 v0, p6, 0x3

    if-eqz v0, :cond_92

    .line 2400
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_28

    goto :goto_90

    .line 2405
    :cond_28
    if-nez p3, :cond_31

    .line 2406
    new-instance p3, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p3, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3f

    .line 2408
    :cond_31
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_79

    iget p2, p3, Landroid/graphics/Rect;->left:I

    if-ltz p2, :cond_79

    iget p2, p3, Landroid/graphics/Rect;->top:I

    if-ltz p2, :cond_79

    .line 2415
    :goto_3f
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2423
    const/4 v0, 0x1

    if-ne p6, v0, :cond_50

    :try_start_45
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_50

    .line 2427
    invoke-direct {p0, p8}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    .line 2430
    :cond_50
    invoke-direct {p0, p8, p6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object p8

    .line 2431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_76

    .line 2433
    :try_start_58
    invoke-virtual {p0, p1, p8, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 2434
    if-eqz p1, :cond_6b

    .line 2435
    iput-boolean v0, p8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2436
    iput p6, p8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 2437
    iput-object p7, p8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 2438
    iget-object p5, p8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p5, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2439
    iput-boolean p4, p8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z
    :try_end_6b
    .catchall {:try_start_58 .. :try_end_6b} :catchall_71

    .line 2441
    :cond_6b
    nop

    .line 2443
    :try_start_6c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p2

    .line 2441
    return-object p1

    .line 2443
    :catchall_71
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2445
    :catchall_76
    move-exception p1

    monitor-exit p2
    :try_end_78
    .catchall {:try_start_6c .. :try_end_78} :catchall_76

    throw p1

    .line 2411
    :cond_79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid crop rect supplied: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2401
    :cond_90
    :goto_90
    const/4 p1, 0x0

    return-object p1

    .line 2396
    :cond_92
    const-string p1, "WallpaperManagerService"

    const-string p2, "Must specify a valid wallpaper category to set"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must specify a valid wallpaper category to set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 3

    .line 2526
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    .line 2527
    return-void
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 5

    .line 2518
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 2519
    invoke-direct {p0, p1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    .line 2521
    :cond_f
    return-void
.end method

.method public settingsRestored()V
    .registers 11

    .line 3237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9e

    .line 3243
    nop

    .line 3244
    nop

    .line 3245
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3246
    const/4 v1, 0x0

    :try_start_e
    invoke-direct {p0, v1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 3247
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3248
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v3

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3249
    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3250
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_47

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 3251
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 3252
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 3257
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3259
    :cond_46
    goto :goto_65

    .line 3263
    :cond_47
    const-string v3, ""

    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 3265
    goto :goto_56

    .line 3268
    :cond_52
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v9

    .line 3272
    :goto_56
    if-eqz v9, :cond_65

    .line 3273
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3274
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3278
    :cond_65
    :goto_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_e .. :try_end_66} :catchall_9b

    .line 3280
    if-nez v9, :cond_90

    .line 3281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore wallpaper: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    const-string v0, ""

    iput-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3283
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3286
    :cond_90
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3287
    :try_start_93
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 3288
    monitor-exit v2

    .line 3289
    return-void

    .line 3288
    :catchall_98
    move-exception v0

    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_98

    throw v0

    .line 3278
    :catchall_9b
    move-exception v1

    :try_start_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v1

    .line 3238
    :cond_9e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "settingsRestored() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3

    .line 1767
    if-eqz p1, :cond_e

    .line 1768
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v0, :cond_e

    .line 1769
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1770
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1773
    :cond_e
    return-void
.end method

.method stopObserversLocked(I)V
    .registers 3

    .line 1776
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1777
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1778
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1779
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1780
    return-void
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .registers 6

    .line 1843
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1844
    :try_start_3
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_9

    .line 1845
    monitor-exit v0

    return-void

    .line 1847
    :cond_9
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1848
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 1849
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1850
    if-nez p1, :cond_1b

    move-object p1, v1

    .line 1852
    :cond_1b
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v2, :cond_2b

    .line 1853
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1854
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 1856
    :cond_2b
    invoke-virtual {p0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1857
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_3c

    .line 1861
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$xeJGAwCI8tssclwKFf8jMsYdoKQ;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$xeJGAwCI8tssclwKFf8jMsYdoKQ;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1866
    return-void

    .line 1857
    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .registers 13

    .line 1869
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1870
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    .line 1871
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_d

    .line 1872
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    goto :goto_f

    :cond_d
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1873
    :goto_f
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, v2

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v3
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_60

    if-nez v3, :cond_5e

    .line 1876
    const/4 v3, 0x0

    .line 1878
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/high16 v5, 0x40000

    iget v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-interface {v4, v2, v5, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v3
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_26} :catch_27
    .catchall {:try_start_1c .. :try_end_26} :catchall_60

    .line 1881
    goto :goto_28

    .line 1880
    :catch_27
    move-exception v2

    .line 1883
    :goto_28
    const/4 v2, 0x1

    if-nez v3, :cond_38

    .line 1884
    :try_start_2b
    const-string v3, "WallpaperManagerService"

    const-string v4, "Failure starting previous wallpaper; clearing"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    goto :goto_5e

    .line 1887
    :cond_38
    const-string v3, "WallpaperManagerService"

    const-string v4, "Wallpaper isn\'t direct boot aware; using fallback until unlocked"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iput-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1892
    new-instance v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const-string/jumbo v3, "wallpaper_lock_orig"

    const-string/jumbo v4, "wallpaper_lock"

    invoke-direct {v8, p1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1894
    invoke-direct {p0, v8, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1895
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p0

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1896
    iput-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    .line 1899
    :cond_5e
    :goto_5e
    monitor-exit v0

    .line 1900
    return-void

    .line 1899
    :catchall_60
    move-exception p1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_2b .. :try_end_62} :catchall_60

    throw p1
.end method

.method systemReady()V
    .registers 5

    .line 1688
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initialize()V

    .line 1690
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1693
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1695
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1699
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1702
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1706
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1714
    :cond_2a
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1715
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1716
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1727
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1728
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1743
    :try_start_4f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    const-string v2, "WallpaperManagerService"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_5d} :catch_5e

    .line 1752
    goto :goto_62

    .line 1750
    :catch_5e
    move-exception v0

    .line 1751
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1753
    :goto_62
    return-void
.end method

.method public unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .registers 11

    .line 2284
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "unregisterWallpaperColorsCallback"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2286
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2288
    :try_start_16
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseArray;

    .line 2289
    if-eqz p2, :cond_2c

    .line 2290
    nop

    .line 2291
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/RemoteCallbackList;

    .line 2292
    if-eqz p2, :cond_2c

    .line 2293
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2296
    :cond_2c
    monitor-exit v0

    .line 2297
    return-void

    .line 2296
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 8

    .line 2481
    if-nez p1, :cond_4

    const-string p1, ""

    .line 2483
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    iget v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 2484
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2485
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 2486
    nop

    .line 2487
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    .line 2486
    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2491
    :cond_1f
    iget-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    const/high16 v2, 0x3c000000  # 0.0078125f

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2493
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 2494
    return-object v0

    .line 2496
    :cond_30
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2497
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result p1

    iput p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2498
    if-eqz p3, :cond_41

    .line 2499
    const-string p1, "android.service.wallpaper.extra.ID"

    iget v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p3, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2502
    :cond_41
    iput-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_43} :catch_44

    .line 2507
    return-object v1

    .line 2508
    :catch_44
    move-exception p1

    .line 2509
    const-string p2, "WallpaperManagerService"

    const-string p3, "Error setting wallpaper"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2511
    return-object v0
.end method
