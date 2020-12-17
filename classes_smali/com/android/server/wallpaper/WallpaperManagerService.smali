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

.field static final NIGHT_MODE_LAUNCHER_WALLPAPER:Ljava/lang/String; = "wallpaper_night_orig"

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

.field mFlymeWallpaperService:Lcom/android/server/wallpaper/FlymeWallpaperService;

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

.field private mRestoredwallpaperComponent:Landroid/content/ComponentName;

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

    .line 206
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
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 1644
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 823
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 897
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 898
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 900
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    .line 904
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    .line 905
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 2931
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mRestoredwallpaperComponent:Landroid/content/ComponentName;

    .line 1646
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 1647
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    .line 1648
    nop

    .line 1649
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1648
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1650
    invoke-static {p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 1651
    nop

    .line 1652
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1651
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1653
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1654
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1655
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1656
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1657
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1658
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 1659
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 1661
    const-class v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1662
    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .registers 2
    .param p0, "x0"  # I

    .line 139
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 7
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"  # Landroid/content/ComponentName;
    .param p2, "x2"  # Z
    .param p3, "x3"  # Z
    .param p4, "x4"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "x5"  # Landroid/os/IRemoteCallback;

    .line 139
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeDisplayData(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wallpaper/WallpaperManagerService;I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/view/IWindowManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/hardware/display/DisplayManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "x2"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"  # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onDisplayReadyInternal(I)V

    return-void
.end method

.method static synthetic access$3400()[Ljava/lang/String;
    .registers 1

    .line 139
    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "x2"  # I

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    return-object v0
.end method

.method private attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 4
    .param p1, "conn"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2802
    new-instance v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$UhAlBGB5jhuZrLndUPRmIvoHRZc;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$UhAlBGB5jhuZrLndUPRmIvoHRZc;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2803
    return-void
.end method

.method private bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 25
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "force"  # Z
    .param p3, "fromUser"  # Z
    .param p4, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"  # Landroid/os/IRemoteCallback;

    .line 2626
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    const/4 v0, 0x1

    if-nez p2, :cond_26

    invoke-direct {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 2630
    return v0

    .line 2634
    :cond_26
    const/4 v5, 0x0

    if-nez v2, :cond_3c

    .line 2635
    :try_start_29
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2b} :catch_37

    move-object v2, v6

    .line 2636
    .end local p1  # "componentName":Landroid/content/ComponentName;
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_3c

    .line 2638
    :try_start_2e
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object v2, v6

    .line 2641
    const-string v6, "No default component; using image wallpaper"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 2758
    .end local v2  # "componentName":Landroid/content/ComponentName;
    .restart local p1  # "componentName":Landroid/content/ComponentName;
    :catch_37
    move-exception v0

    move-object/from16 v5, p5

    goto/16 :goto_203

    .line 2644
    .end local p1  # "componentName":Landroid/content/ComponentName;
    .restart local v2  # "componentName":Landroid/content/ComponentName;
    :cond_3c
    :goto_3c
    iget v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 2645
    .local v6, "serviceUserId":I
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v8, 0x1080

    invoke-interface {v7, v2, v8, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 2647
    .local v7, "si":Landroid/content/pm/ServiceInfo;
    if-nez v7, :cond_62

    .line 2649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted wallpaper "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is unavailable"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    return v5

    .line 2652
    :cond_62
    const-string v8, "android.permission.BIND_WALLPAPER"

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_89

    .line 2653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Selected service does not have android.permission.BIND_WALLPAPER: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2656
    .local v0, "msg":Ljava/lang/String;
    if-nez p3, :cond_83

    .line 2659
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    return v5

    .line 2657
    :cond_83
    new-instance v8, Ljava/lang/SecurityException;

    invoke-direct {v8, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2  # "componentName":Landroid/content/ComponentName;
    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2  # "force":Z
    .end local p3  # "fromUser":Z
    .end local p4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5  # "reply":Landroid/os/IRemoteCallback;
    throw v8

    .line 2663
    .end local v0  # "msg":Ljava/lang/String;
    .restart local v2  # "componentName":Landroid/content/ComponentName;
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2  # "force":Z
    .restart local p3  # "fromUser":Z
    .restart local p4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5  # "reply":Landroid/os/IRemoteCallback;
    :cond_89
    const/4 v8, 0x0

    .line 2665
    .local v8, "wi":Landroid/app/WallpaperInfo;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.service.wallpaper.WallpaperService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2666
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_11f

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11f

    .line 2668
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 2670
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    .line 2669
    invoke-interface {v10, v9, v11, v12, v6}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    .line 2671
    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    .line 2672
    .local v10, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move v11, v5

    .local v11, "i":I
    :goto_b2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_100

    .line 2673
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2674
    .local v12, "rsi":Landroid/content/pm/ServiceInfo;
    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_fd

    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2675
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_d2} :catch_200

    if-eqz v13, :cond_fd

    .line 2677
    :try_start_d4
    new-instance v13, Landroid/app/WallpaperInfo;

    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    invoke-direct {v13, v14, v15}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_e1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d4 .. :try_end_e1} :catch_f0
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_e1} :catch_e3
    .catch Landroid/os/RemoteException; {:try_start_d4 .. :try_end_e1} :catch_200

    move-object v8, v13

    .line 2690
    goto :goto_100

    .line 2684
    :catch_e3
    move-exception v0

    .line 2685
    .local v0, "e":Ljava/io/IOException;
    if-nez p3, :cond_ea

    .line 2688
    :try_start_e6
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2689
    return v5

    .line 2686
    :cond_ea
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v2  # "componentName":Landroid/content/ComponentName;
    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2  # "force":Z
    .end local p3  # "fromUser":Z
    .end local p4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5  # "reply":Landroid/os/IRemoteCallback;
    throw v13

    .line 2678
    .end local v0  # "e":Ljava/io/IOException;
    .restart local v2  # "componentName":Landroid/content/ComponentName;
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2  # "force":Z
    .restart local p3  # "fromUser":Z
    .restart local p4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5  # "reply":Landroid/os/IRemoteCallback;
    :catch_f0
    move-exception v0

    .line 2679
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez p3, :cond_f7

    .line 2682
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2683
    return v5

    .line 2680
    :cond_f7
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v2  # "componentName":Landroid/content/ComponentName;
    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2  # "force":Z
    .end local p3  # "fromUser":Z
    .end local p4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5  # "reply":Landroid/os/IRemoteCallback;
    throw v13

    .line 2672
    .end local v0  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v12  # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v2  # "componentName":Landroid/content/ComponentName;
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2  # "force":Z
    .restart local p3  # "fromUser":Z
    .restart local p4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5  # "reply":Landroid/os/IRemoteCallback;
    :cond_fd
    add-int/lit8 v11, v11, 0x1

    goto :goto_b2

    .line 2694
    .end local v11  # "i":I
    :cond_100
    :goto_100
    if-nez v8, :cond_11f

    .line 2695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Selected service is not a wallpaper: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2697
    .local v0, "msg":Ljava/lang/String;
    if-nez p3, :cond_119

    .line 2700
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    return v5

    .line 2698
    :cond_119
    new-instance v11, Ljava/lang/SecurityException;

    invoke-direct {v11, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2  # "componentName":Landroid/content/ComponentName;
    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2  # "force":Z
    .end local p3  # "fromUser":Z
    .end local p4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5  # "reply":Landroid/os/IRemoteCallback;
    throw v11

    .line 2705
    .end local v0  # "msg":Ljava/lang/String;
    .end local v10  # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2  # "componentName":Landroid/content/ComponentName;
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2  # "force":Z
    .restart local p3  # "fromUser":Z
    .restart local p4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5  # "reply":Landroid/os/IRemoteCallback;
    :cond_11f
    if-eqz v8, :cond_152

    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v10

    if-eqz v10, :cond_152

    .line 2706
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v11, "android.permission.AMBIENT_WALLPAPER"

    .line 2707
    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2706
    invoke-interface {v10, v11, v12, v6}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 2709
    .local v10, "hasPrivilege":I
    if-eqz v10, :cond_152

    .line 2710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Selected service does not have android.permission.AMBIENT_WALLPAPER: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2713
    .restart local v0  # "msg":Ljava/lang/String;
    if-nez p3, :cond_14c

    .line 2716
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    return v5

    .line 2714
    :cond_14c
    new-instance v11, Ljava/lang/SecurityException;

    invoke-direct {v11, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2  # "componentName":Landroid/content/ComponentName;
    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2  # "force":Z
    .end local p3  # "fromUser":Z
    .end local p4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5  # "reply":Landroid/os/IRemoteCallback;
    throw v11

    .line 2723
    .end local v0  # "msg":Ljava/lang/String;
    .end local v10  # "hasPrivilege":I
    .restart local v2  # "componentName":Landroid/content/ComponentName;
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2  # "force":Z
    .restart local p3  # "fromUser":Z
    .restart local p4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5  # "reply":Landroid/os/IRemoteCallback;
    :cond_152
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/high16 v12, 0x10000000

    iget v13, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-interface {v10, v11, v12, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v10

    .line 2725
    .local v10, "componentUid":I
    new-instance v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {v11, v1, v8, v3, v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2726
    .local v11, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    invoke-virtual {v9, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2727
    const-string v12, "android.intent.extra.client_label"

    const v13, 0x104074f

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2729
    const-string v12, "android.intent.extra.client_intent"

    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040129

    .line 2732
    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2731
    invoke-static {v15, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 2729
    move-object/from16 v18, v0

    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2734
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v5, 0x22001001

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v9, v11, v5, v12}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1c9

    .line 2739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind service: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2741
    .restart local v0  # "msg":Ljava/lang/String;
    if-nez p3, :cond_1c3

    .line 2744
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    const/4 v4, 0x0

    return v4

    .line 2742
    :cond_1c3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2  # "componentName":Landroid/content/ComponentName;
    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2  # "force":Z
    .end local p3  # "fromUser":Z
    .end local p4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5  # "reply":Landroid/os/IRemoteCallback;
    throw v5

    .line 2747
    .end local v0  # "msg":Ljava/lang/String;
    .restart local v2  # "componentName":Landroid/content/ComponentName;
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2  # "force":Z
    .restart local p3  # "fromUser":Z
    .restart local p4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5  # "reply":Landroid/os/IRemoteCallback;
    :cond_1c9
    iget v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v5, :cond_1e0

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_1e0

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2748
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e0

    .line 2749
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2751
    :cond_1e0
    iput-object v2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2752
    iput-object v11, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :try_end_1e4
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_1e4} :catch_200

    .line 2753
    move-object/from16 v5, p5

    :try_start_1e6
    iput-object v5, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 2754
    iget v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v12, :cond_1f8

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f8

    .line 2755
    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2757
    :cond_1f8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateFallbackConnection()V
    :try_end_1fb
    .catch Landroid/os/RemoteException; {:try_start_1e6 .. :try_end_1fb} :catch_1fe

    .line 2765
    .end local v6  # "serviceUserId":I
    .end local v7  # "si":Landroid/content/pm/ServiceInfo;
    .end local v8  # "wi":Landroid/app/WallpaperInfo;
    .end local v9  # "intent":Landroid/content/Intent;
    .end local v10  # "componentUid":I
    .end local v11  # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    nop

    .line 2766
    const/4 v0, 0x1

    return v0

    .line 2758
    :catch_1fe
    move-exception v0

    goto :goto_203

    :catch_200
    move-exception v0

    move-object/from16 v5, p5

    .line 2759
    .local v0, "e":Landroid/os/RemoteException;
    :goto_203
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2760
    .local v6, "msg":Ljava/lang/String;
    if-nez p3, :cond_223

    .line 2763
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    const/4 v4, 0x0

    return v4

    .line 2761
    :cond_223
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 5
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2607
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_15

    .line 2608
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 2609
    if-nez p1, :cond_15

    .line 2612
    return v1

    .line 2614
    :cond_c
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2617
    return v1

    .line 2620
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"  # Ljava/lang/String;

    .line 2823
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 2827
    return-void

    .line 2824
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

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2797
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2798
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2799
    return-void
.end method

.method private detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 6
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2770
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_51

    .line 2771
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2773
    :try_start_b
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    .line 2775
    goto :goto_14

    .line 2774
    :catch_13
    move-exception v0

    .line 2776
    :goto_14
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 2780
    :cond_18
    :try_start_18
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v0, :cond_25

    .line 2781
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperService;->detach()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26

    .line 2785
    :cond_25
    goto :goto_2e

    .line 2783
    :catch_26
    move-exception v0

    .line 2784
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WallpaperManagerService"

    const-string v3, "Failed detaching wallpaper service "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2786
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_2e
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2787
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    sget-object v2, Lcom/android/server/wallpaper/-$$Lambda$havGP5uMdRgWQrLydPeIOu1qDGE;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$havGP5uMdRgWQrLydPeIOu1qDGE;

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2789
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 2790
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2791
    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2792
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-ne p1, v0, :cond_51

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2794
    :cond_51
    return-void
.end method

.method private static emptyCallbackList(Landroid/os/RemoteCallbackList;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/os/RemoteCallbackList<",
            "TT;>;)Z"
        }
    .end annotation

    .line 443
    .local p0, "list":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TT;>;"
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_9

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

.method private ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 8
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "displayId"  # I

    .line 3212
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    .line 3214
    .local v0, "size":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    if-nez p2, :cond_20

    .line 3216
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_16

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 3217
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_20

    .line 3218
    :cond_16
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3221
    :cond_20
    return-void
.end method

.method private ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V
    .registers 5
    .param p1, "wpdData"  # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .param p2, "displayId"  # I

    .line 1026
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension(I)I

    move-result v0

    .line 1027
    .local v0, "baseSize":I
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    if-ge v1, v0, :cond_a

    .line 1028
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 1030
    :cond_a
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-ge v1, v0, :cond_10

    .line 1031
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 1033
    :cond_10
    return-void
.end method

.method private extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 9
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "cropFile":Ljava/lang/String;
    const/4 v1, 0x0

    .line 505
    .local v1, "defaultImageWallpaper":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 506
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 507
    :try_start_d
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v3, :cond_15

    monitor-exit v2

    return-void

    .line 508
    :cond_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_26

    .line 509
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors()Landroid/app/WallpaperColors;

    move-result-object v3

    .line 510
    .local v3, "colors":Landroid/app/WallpaperColors;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 511
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 512
    monitor-exit v4

    .line 513
    return-void

    .line 512
    :catchall_23
    move-exception v2

    monitor-exit v4
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_23

    throw v2

    .line 508
    .end local v3  # "colors":Landroid/app/WallpaperColors;
    :catchall_26
    move-exception v3

    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v3

    .line 516
    :cond_29
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 518
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v3, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v3, 0x1

    .line 520
    .local v3, "imageWallpaper":Z
    :goto_3e
    if-eqz v3, :cond_54

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz v4, :cond_54

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 521
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_63

    .line 522
    :cond_54
    if-eqz v3, :cond_63

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v4

    if-nez v4, :cond_63

    .line 523
    const/4 v1, 0x1

    .line 525
    :cond_63
    :goto_63
    iget v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    move v3, v4

    .line 526
    .local v3, "wallpaperId":I
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_2c .. :try_end_67} :catchall_a6

    .line 528
    const/4 v2, 0x0

    .line 529
    .local v2, "colors":Landroid/app/WallpaperColors;
    if-eqz v0, :cond_78

    .line 530
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 531
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_80

    .line 532
    invoke-static {v4}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v2

    .line 533
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_80

    .line 535
    .end local v4  # "bitmap":Landroid/graphics/Bitmap;
    :cond_78
    if-eqz v1, :cond_80

    .line 537
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors()Landroid/app/WallpaperColors;

    move-result-object v2

    move-object v4, v2

    goto :goto_81

    .line 535
    :cond_80
    :goto_80
    move-object v4, v2

    .line 540
    .end local v2  # "colors":Landroid/app/WallpaperColors;
    .local v4, "colors":Landroid/app/WallpaperColors;
    :goto_81
    if-nez v4, :cond_8b

    .line 541
    const-string v2, "WallpaperManagerService"

    const-string v5, "Cannot extract colors because wallpaper could not be read."

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void

    .line 545
    :cond_8b
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 546
    :try_start_8e
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-ne v2, v3, :cond_9a

    .line 547
    iput-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 550
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    goto :goto_a1

    .line 552
    :cond_9a
    const-string v2, "WallpaperManagerService"

    const-string v6, "Not setting primary colors since wallpaper changed"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :goto_a1
    monitor-exit v5

    .line 555
    return-void

    .line 554
    :catchall_a3
    move-exception v2

    monitor-exit v5
    :try_end_a5
    .catchall {:try_start_8e .. :try_end_a5} :catchall_a3

    throw v2

    .line 526
    .end local v3  # "wallpaperId":I
    .end local v4  # "colors":Landroid/app/WallpaperColors;
    :catchall_a6
    move-exception v3

    :try_start_a7
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v3
.end method

.method private extractDefaultImageWallpaperColors()Landroid/app/WallpaperColors;
    .registers 6

    .line 560
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    monitor-exit v0

    return-object v1

    .line 562
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_71

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "colors":Landroid/app/WallpaperColors;
    :try_start_d
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_14} :catch_54
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_4a

    .line 566
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    if-nez v1, :cond_25

    .line 567
    :try_start_17
    const-string v3, "WallpaperManagerService"

    const-string v4, "Can\'t open default wallpaper stream"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_3c

    .line 568
    nop

    .line 577
    if-eqz v1, :cond_24

    :try_start_21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_24} :catch_54
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_4a

    .line 568
    :cond_24
    return-object v2

    .line 571
    :cond_25
    :try_start_25
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 572
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 573
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_38

    .line 574
    invoke-static {v2}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v4

    move-object v0, v4

    .line 575
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_3c

    .line 577
    .end local v2  # "bitmap":Landroid/graphics/Bitmap;
    .end local v3  # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_38 .. :try_end_3b} :catch_54
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_4a

    goto :goto_5c

    .line 565
    :catchall_3c
    move-exception v2

    .end local v0  # "colors":Landroid/app/WallpaperColors;
    .end local v1  # "is":Ljava/io/InputStream;
    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_3d
    throw v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 577
    .restart local v0  # "colors":Landroid/app/WallpaperColors;
    .restart local v1  # "is":Ljava/io/InputStream;
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catchall_3e
    move-exception v3

    if-eqz v1, :cond_49

    :try_start_41
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v4

    :try_start_46
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0  # "colors":Landroid/app/WallpaperColors;
    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_49
    :goto_49
    throw v3
    :try_end_4a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_46 .. :try_end_4a} :catch_54
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4a} :catch_4a

    .line 579
    .end local v1  # "is":Ljava/io/InputStream;
    .restart local v0  # "colors":Landroid/app/WallpaperColors;
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4a
    move-exception v1

    .line 580
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "WallpaperManagerService"

    const-string v3, "Can\'t close default wallpaper stream"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    goto :goto_5d

    .line 577
    .end local v1  # "e":Ljava/io/IOException;
    :catch_54
    move-exception v1

    .line 578
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "WallpaperManagerService"

    const-string v3, "Can\'t decode default wallpaper stream"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    .end local v1  # "e":Ljava/lang/OutOfMemoryError;
    :goto_5c
    move-object v1, v0

    .line 583
    .end local v0  # "colors":Landroid/app/WallpaperColors;
    .local v1, "colors":Landroid/app/WallpaperColors;
    :goto_5d
    if-nez v1, :cond_67

    .line 584
    const-string v0, "WallpaperManagerService"

    const-string v2, "Extract default image wallpaper colors failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 586
    :cond_67
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 587
    :try_start_6a
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    .line 588
    monitor-exit v2

    .line 591
    :goto_6d
    return-object v1

    .line 588
    :catchall_6e
    move-exception v0

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_6e

    throw v0

    .line 562
    .end local v1  # "colors":Landroid/app/WallpaperColors;
    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v1
.end method

.method private findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 4
    .param p1, "userId"  # I
    .param p2, "displayId"  # I

    .line 2399
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2400
    invoke-virtual {v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2401
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0

    .line 2403
    :cond_15
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0
.end method

.method private generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 26
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 599
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 602
    .local v3, "success":Z
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v4

    .line 603
    .local v4, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 604
    .local v5, "cropHint":Landroid/graphics/Rect;
    new-instance v6, Landroid/view/DisplayInfo;

    invoke-direct {v6}, Landroid/view/DisplayInfo;-><init>()V

    .line 605
    .local v6, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 616
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 617
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 618
    iget-object v9, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 619
    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const-string v10, "WallpaperManagerService"

    if-lez v9, :cond_236

    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v9, :cond_42

    move/from16 v18, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    goto/16 :goto_23c

    .line 623
    :cond_42
    const/4 v9, 0x0

    .line 624
    .local v9, "needCrop":Z
    const/4 v11, 0x0

    .line 627
    .local v11, "needScale":Z
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_57

    .line 628
    iput v0, v5, Landroid/graphics/Rect;->top:I

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 629
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v12, v5, Landroid/graphics/Rect;->right:I

    .line 630
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v12, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_96

    .line 633
    :cond_57
    nop

    .line 634
    iget v12, v5, Landroid/graphics/Rect;->right:I

    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v12, v13, :cond_64

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    goto :goto_65

    :cond_64
    move v12, v0

    .line 635
    :goto_65
    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v13, v14, :cond_71

    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    goto :goto_72

    :cond_71
    move v13, v0

    .line 633
    :goto_72
    invoke-virtual {v5, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 638
    iget v12, v5, Landroid/graphics/Rect;->left:I

    if-gez v12, :cond_7b

    .line 639
    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 641
    :cond_7b
    iget v12, v5, Landroid/graphics/Rect;->top:I

    if-gez v12, :cond_81

    .line 642
    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 646
    :cond_81
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-gt v12, v13, :cond_94

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 647
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v12, v13, :cond_92

    goto :goto_94

    :cond_92
    move v12, v0

    goto :goto_95

    :cond_94
    :goto_94
    move v12, v8

    :goto_95
    move v9, v12

    .line 651
    :goto_96
    iget v12, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-ne v12, v13, :cond_b5

    .line 652
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v13

    if-gt v12, v13, :cond_b5

    .line 653
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v13

    if-le v12, v13, :cond_b3

    goto :goto_b5

    :cond_b3
    move v12, v0

    goto :goto_b6

    :cond_b5
    :goto_b5
    move v12, v8

    :goto_b6
    move v11, v12

    .line 656
    if-eqz v11, :cond_de

    .line 657
    iget v12, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    int-to-float v12, v12

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 658
    .local v12, "scaleByHeight":F
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v12

    float-to-int v13, v13

    .line 659
    .local v13, "newWidth":I
    iget v14, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ge v13, v14, :cond_de

    .line 660
    iget v14, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v14, v14

    iget v15, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 662
    .local v14, "screenAspectRatio":F
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-int v15, v15

    iput v15, v5, Landroid/graphics/Rect;->bottom:I

    .line 663
    const/4 v9, 0x1

    .line 674
    .end local v12  # "scaleByHeight":F
    .end local v13  # "newWidth":I
    .end local v14  # "screenAspectRatio":F
    :cond_de
    if-nez v9, :cond_106

    if-nez v11, :cond_106

    .line 683
    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v0, v8

    mul-int/lit8 v0, v0, 0x4

    int-to-long v12, v0

    .line 687
    .local v12, "estimateSize":J
    const-wide/32 v14, 0x6400000

    cmp-long v0, v12, v14

    if-gez v0, :cond_f9

    .line 688
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    iget-object v8, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-static {v0, v8}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    .line 691
    :cond_f9
    if-nez v3, :cond_100

    .line 692
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 700
    .end local v12  # "estimateSize":J
    :cond_100
    move-object/from16 v22, v4

    move-object/from16 v20, v6

    goto/16 :goto_242

    .line 702
    :cond_106
    const/4 v12, 0x0

    .line 703
    .local v12, "f":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 705
    .local v13, "bos":Ljava/io/BufferedOutputStream;
    :try_start_108
    iget-object v14, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 706
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 705
    invoke-static {v14, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v14

    .line 713
    .local v14, "decoder":Landroid/graphics/BitmapRegionDecoder;
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v15

    iget v8, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    div-int/2addr v15, v8

    move v8, v15

    .line 714
    .local v8, "actualScale":I
    const/4 v15, 0x1

    .line 715
    .local v15, "scale":I
    :goto_11b
    mul-int/lit8 v0, v15, 0x2

    if-gt v0, v8, :cond_123

    .line 716
    mul-int/lit8 v15, v15, 0x2

    const/4 v0, 0x0

    goto :goto_11b

    .line 718
    :cond_123
    iput v15, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 719
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 721
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 722
    .local v0, "estimateCrop":Landroid/graphics/Rect;
    iget v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v1, v1

    const/high16 v17, 0x3f800000  # 1.0f

    div-float v1, v17, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 723
    iget v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_139} :catch_226
    .catchall {:try_start_108 .. :try_end_139} :catchall_218

    int-to-float v1, v1

    move/from16 v18, v3

    .end local v3  # "success":Z
    .local v18, "success":Z
    :try_start_13c
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 724
    .local v1, "hRatio":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 725
    .local v3, "destHeight":I
    move/from16 v19, v3

    .end local v3  # "destHeight":I
    .local v19, "destHeight":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_14f} :catch_212
    .catchall {:try_start_13c .. :try_end_14f} :catchall_20c

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 728
    .local v3, "destWidth":I
    move-object/from16 v20, v6

    .end local v6  # "displayInfo":Landroid/view/DisplayInfo;
    .local v20, "displayInfo":Landroid/view/DisplayInfo;
    :try_start_154
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v6

    if-le v3, v6, :cond_19d

    .line 729
    iget v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v6, v6

    .line 730
    .local v6, "newHeight":I
    move/from16 v21, v3

    .end local v3  # "destWidth":I
    .local v21, "destWidth":I
    iget v3, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    .line 736
    .local v3, "newWidth":I
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_169} :catch_208
    .catchall {:try_start_154 .. :try_end_169} :catchall_204

    .line 737
    move-object/from16 v22, v4

    .end local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v22, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :try_start_16b
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v23

    sub-int v23, v23, v3

    div-int/lit8 v23, v23, 0x2

    add-int v4, v4, v23

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 738
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v23

    sub-int v23, v23, v6

    div-int/lit8 v23, v23, 0x2

    add-int v4, v4, v23

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 739
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 740
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v6

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 741
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 742
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v4, v4

    div-float v4, v17, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->scale(F)V

    goto :goto_1a1

    .line 728
    .end local v6  # "newHeight":I
    .end local v21  # "destWidth":I
    .end local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v3, "destWidth":I
    .restart local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :cond_19d
    move/from16 v21, v3

    move-object/from16 v22, v4

    .line 748
    .end local v3  # "destWidth":I
    .end local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v21  # "destWidth":I
    .restart local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :goto_1a1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 749
    .local v3, "safeHeight":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 761
    .local v4, "safeWidth":I
    invoke-virtual {v14, v5, v7}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 762
    .local v6, "cropped":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 764
    if-nez v6, :cond_1c2

    .line 765
    move-object/from16 v17, v0

    .end local v0  # "estimateCrop":Landroid/graphics/Rect;
    .local v17, "estimateCrop":Landroid/graphics/Rect;
    const-string v0, "Could not decode new wallpaper"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, v18

    goto :goto_1f1

    .line 768
    .end local v17  # "estimateCrop":Landroid/graphics/Rect;
    .restart local v0  # "estimateCrop":Landroid/graphics/Rect;
    :cond_1c2
    move-object/from16 v17, v0

    .end local v0  # "estimateCrop":Landroid/graphics/Rect;
    .restart local v17  # "estimateCrop":Landroid/graphics/Rect;
    const/4 v0, 0x1

    invoke-static {v6, v4, v3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 780
    .local v0, "finalCrop":Landroid/graphics/Bitmap;
    move/from16 v16, v1

    .end local v1  # "hRatio":F
    .local v16, "hRatio":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    move/from16 v23, v3

    .end local v3  # "safeHeight":I
    .local v23, "safeHeight":I
    const/high16 v3, 0x6400000

    if-gt v1, v3, :cond_1f8

    .line 785
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v12, v1

    .line 786
    new-instance v1, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v1, v12, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v13, v1

    .line 787
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 788
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_1f0} :catch_202
    .catchall {:try_start_16b .. :try_end_1f0} :catchall_200

    .line 789
    const/4 v3, 0x1

    .line 796
    .end local v0  # "finalCrop":Landroid/graphics/Bitmap;
    .end local v4  # "safeWidth":I
    .end local v6  # "cropped":Landroid/graphics/Bitmap;
    .end local v8  # "actualScale":I
    .end local v14  # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v15  # "scale":I
    .end local v16  # "hRatio":F
    .end local v17  # "estimateCrop":Landroid/graphics/Rect;
    .end local v18  # "success":Z
    .end local v19  # "destHeight":I
    .end local v21  # "destWidth":I
    .end local v23  # "safeHeight":I
    .local v3, "success":Z
    :goto_1f1
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 797
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 798
    goto :goto_242

    .line 781
    .end local v3  # "success":Z
    .restart local v0  # "finalCrop":Landroid/graphics/Bitmap;
    .restart local v4  # "safeWidth":I
    .restart local v6  # "cropped":Landroid/graphics/Bitmap;
    .restart local v8  # "actualScale":I
    .restart local v14  # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v15  # "scale":I
    .restart local v16  # "hRatio":F
    .restart local v17  # "estimateCrop":Landroid/graphics/Rect;
    .restart local v18  # "success":Z
    .restart local v19  # "destHeight":I
    .restart local v21  # "destWidth":I
    .restart local v23  # "safeHeight":I
    :cond_1f8
    :try_start_1f8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Too large bitmap, limit=104857600"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v5  # "cropHint":Landroid/graphics/Rect;
    .end local v7  # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v9  # "needCrop":Z
    .end local v11  # "needScale":Z
    .end local v12  # "f":Ljava/io/FileOutputStream;
    .end local v13  # "bos":Ljava/io/BufferedOutputStream;
    .end local v18  # "success":Z
    .end local v20  # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    throw v1
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_200} :catch_202
    .catchall {:try_start_1f8 .. :try_end_200} :catchall_200

    .line 796
    .end local v0  # "finalCrop":Landroid/graphics/Bitmap;
    .end local v4  # "safeWidth":I
    .end local v6  # "cropped":Landroid/graphics/Bitmap;
    .end local v8  # "actualScale":I
    .end local v14  # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v15  # "scale":I
    .end local v16  # "hRatio":F
    .end local v17  # "estimateCrop":Landroid/graphics/Rect;
    .end local v19  # "destHeight":I
    .end local v21  # "destWidth":I
    .end local v23  # "safeHeight":I
    .restart local v5  # "cropHint":Landroid/graphics/Rect;
    .restart local v7  # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v9  # "needCrop":Z
    .restart local v11  # "needScale":Z
    .restart local v12  # "f":Ljava/io/FileOutputStream;
    .restart local v13  # "bos":Ljava/io/BufferedOutputStream;
    .restart local v18  # "success":Z
    .restart local v20  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_200
    move-exception v0

    goto :goto_21f

    .line 791
    :catch_202
    move-exception v0

    goto :goto_22d

    .line 796
    .end local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v4, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :catchall_204
    move-exception v0

    move-object/from16 v22, v4

    .end local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_21f

    .line 791
    .end local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :catch_208
    move-exception v0

    move-object/from16 v22, v4

    .end local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_22d

    .line 796
    .end local v20  # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v6, "displayInfo":Landroid/view/DisplayInfo;
    :catchall_20c
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    .end local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v6  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v20  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_21f

    .line 791
    .end local v20  # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v6  # "displayInfo":Landroid/view/DisplayInfo;
    :catch_212
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    .end local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v6  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v20  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_22d

    .line 796
    .end local v18  # "success":Z
    .end local v20  # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v3  # "success":Z
    .restart local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v6  # "displayInfo":Landroid/view/DisplayInfo;
    :catchall_218
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    .end local v3  # "success":Z
    .end local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v6  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v18  # "success":Z
    .restart local v20  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :goto_21f
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 797
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 791
    .end local v18  # "success":Z
    .end local v20  # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v3  # "success":Z
    .restart local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v6  # "displayInfo":Landroid/view/DisplayInfo;
    :catch_226
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    .line 796
    .end local v3  # "success":Z
    .end local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v6  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v18  # "success":Z
    .restart local v20  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :goto_22d
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 797
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 798
    move/from16 v3, v18

    goto :goto_242

    .line 619
    .end local v9  # "needCrop":Z
    .end local v11  # "needScale":Z
    .end local v12  # "f":Ljava/io/FileOutputStream;
    .end local v13  # "bos":Ljava/io/BufferedOutputStream;
    .end local v18  # "success":Z
    .end local v20  # "displayInfo":Landroid/view/DisplayInfo;
    .end local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v3  # "success":Z
    .restart local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v6  # "displayInfo":Landroid/view/DisplayInfo;
    :cond_236
    move/from16 v18, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    .line 620
    .end local v3  # "success":Z
    .end local v4  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v6  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v18  # "success":Z
    .restart local v20  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v22  # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :goto_23c
    const-string v0, "Invalid wallpaper data"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v3, 0x0

    .line 802
    .end local v18  # "success":Z
    .restart local v3  # "success":Z
    :goto_242
    if-nez v3, :cond_24e

    .line 803
    const-string v0, "Unable to apply new wallpaper"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 807
    :cond_24e
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25f

    .line 808
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 813
    :cond_25f
    return-void
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "defValue"  # I

    .line 3037
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3038
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 3039
    return p3

    .line 3041
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .registers 4
    .param p1, "displayId"  # I

    .line 1015
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 1016
    .local v0, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    if-nez v0, :cond_18

    .line 1017
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    invoke-direct {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;-><init>(I)V

    move-object v0, v1

    .line 1018
    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    .line 1019
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1021
    :cond_18
    return-object v0
.end method

.method private getMaximumSizeDimension(I)I
    .registers 5
    .param p1, "displayId"  # I

    .line 1036
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1037
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_32

    .line 1038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1041
    :cond_32
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    return v1
.end method

.method private getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;
    .registers 6
    .param p1, "userId"  # I
    .param p2, "displayId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 398
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 399
    .local v1, "displayListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-eqz v1, :cond_12

    .line 400
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 402
    :cond_12
    return-object v0
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .registers 2
    .param p0, "userId"  # I

    .line 1683
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 9
    .param p1, "userId"  # I
    .param p2, "which"  # I

    .line 3061
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_8

    :cond_6
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 3062
    .local v1, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3063
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_4f

    .line 3066
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 3067
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3071
    if-nez v2, :cond_4f

    .line 3072
    if-ne p2, v0, :cond_34

    .line 3073
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v4, "wallpaper_lock_orig"

    const-string/jumbo v5, "wallpaper_lock"

    invoke-direct {v0, p1, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 3075
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3076
    invoke-direct {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    goto :goto_4f

    .line 3080
    :cond_34
    const-string v0, "WallpaperManagerService"

    const-string v4, "Didn\'t find wallpaper in non-lock case!"

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v4, "wallpaper_orig"

    const-string/jumbo v5, "wallpaper"

    invoke-direct {v0, p1, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 3082
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3083
    invoke-direct {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3087
    :cond_4f
    :goto_4f
    return-object v2
.end method

.method private isNightMode()Z
    .registers 4

    .line 3557
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "flymelab_flyme_night_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v1, v2

    :cond_11
    return v1
.end method

.method private isValidDisplay(I)Z
    .registers 3
    .param p1, "displayId"  # I

    .line 2050
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$attachServiceLocked$5(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3
    .param p0, "conn"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "connector"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 2802
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic lambda$dump$6(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;)V
    .registers 3
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "wpSize"  # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 3417
    const-string v0, "  displayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3418
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3419
    const-string v0, "  mWidth="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3420
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3421
    const-string v0, "  mHeight="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3422
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3423
    const-string v0, "  mPadding="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3424
    return-void
.end method

.method static synthetic lambda$dump$7(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "connector"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 3439
    const-string v0, "     mDisplayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3440
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3441
    const-string v0, "     mToken="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3442
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3443
    const-string v0, "     mEngine="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3444
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3445
    return-void
.end method

.method static synthetic lambda$dump$8(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "connector"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 3477
    const-string v0, "     mDisplayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3478
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3479
    const-string v0, "     mToken="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3480
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3481
    const-string v0, "     mEngine="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3482
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3483
    return-void
.end method

.method static synthetic lambda$updateFallbackConnection$1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 2
    .param p0, "connector"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1077
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_7

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->disconnectLocked()V

    .line 1080
    :cond_7
    return-void
.end method

.method static synthetic lambda$updateFallbackConnection$2(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .registers 3
    .param p0, "fallbackConnection"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p1, "display"  # Landroid/view/Display;

    .line 1085
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$3600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1086
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_18

    .line 1087
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1085
    :goto_19
    return v0
.end method

.method private loadSettingsLocked(IZ)V
    .registers 22
    .param p1, "userId"  # I
    .param p2, "keepDimensionHints"  # Z

    .line 3091
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, " "

    const-string v4, "failed parsing "

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v5

    .line 3092
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v6, 0x0

    .line 3093
    .local v6, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    .line 3095
    .local v7, "file":Ljava/io/File;
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3096
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v8, 0x1

    const-string v9, "WallpaperManagerService"

    if-nez v0, :cond_4e

    .line 3098
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    .line 3100
    new-instance v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v11, "wallpaper_orig"

    const-string/jumbo v12, "wallpaper"

    invoke-direct {v10, v2, v11, v12}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 3101
    iput-boolean v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3102
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3103
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v10

    if-nez v10, :cond_49

    .line 3104
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v10

    if-eqz v10, :cond_44

    .line 3105
    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_49

    .line 3107
    :cond_44
    const-string v10, "No static wallpaper imagery; defaults will be shown"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    :cond_49
    :goto_49
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initializeFallbackWallpaper()V

    move-object v10, v0

    goto :goto_4f

    .line 3096
    :cond_4e
    move-object v10, v0

    .line 3112
    .end local v0  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v10, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_4f
    const/4 v11, 0x0

    .line 3113
    .local v11, "success":Z
    const/4 v12, 0x0

    invoke-direct {v1, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v13

    .line 3115
    .local v13, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :try_start_55
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_5a} :catch_226
    .catch Ljava/lang/NullPointerException; {:try_start_55 .. :try_end_5a} :catch_208
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_5a} :catch_1ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_5a} :catch_1cc
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5a} :catch_1ae
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_55 .. :try_end_5a} :catch_18f

    move-object v6, v0

    .line 3116
    :try_start_5b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 3117
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3121
    :goto_68
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .line 3122
    .local v14, "type":I
    const/4 v15, 0x2

    if-ne v14, v15, :cond_146

    .line 3123
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 3124
    .local v15, "tag":Ljava/lang/String;
    const-string/jumbo v8, "wp"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_7a} :catch_186
    .catch Ljava/lang/NullPointerException; {:try_start_5b .. :try_end_7a} :catch_17d
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_7a} :catch_174
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5b .. :try_end_7a} :catch_16c
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_7a} :catch_164
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5b .. :try_end_7a} :catch_15c

    if-eqz v8, :cond_f3

    .line 3126
    move/from16 v8, p2

    :try_start_7e
    invoke-direct {v1, v0, v10, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 3129
    const-string v12, "component"
    :try_end_83
    .catch Ljava/io/FileNotFoundException; {:try_start_7e .. :try_end_83} :catch_f0
    .catch Ljava/lang/NullPointerException; {:try_start_7e .. :try_end_83} :catch_ed
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_83} :catch_ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e .. :try_end_83} :catch_e7
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_83} :catch_e4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7e .. :try_end_83} :catch_e1

    move-object/from16 v16, v5

    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .local v16, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v5, 0x0

    :try_start_86
    invoke-interface {v0, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_8a} :catch_dc
    .catch Ljava/lang/NullPointerException; {:try_start_86 .. :try_end_8a} :catch_d7
    .catch Ljava/lang/NumberFormatException; {:try_start_86 .. :try_end_8a} :catch_d2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_86 .. :try_end_8a} :catch_cd
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8a} :catch_c8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_86 .. :try_end_8a} :catch_c3

    .line 3130
    .local v12, "comp":Ljava/lang/String;
    if-eqz v12, :cond_a3

    .line 3131
    :try_start_8c
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_90} :catch_a0
    .catch Ljava/lang/NullPointerException; {:try_start_8c .. :try_end_90} :catch_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_8c .. :try_end_90} :catch_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8c .. :try_end_90} :catch_97
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_90} :catch_94
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8c .. :try_end_90} :catch_91

    goto :goto_a4

    .line 3171
    .end local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12  # "comp":Ljava/lang/String;
    .end local v14  # "type":I
    .end local v15  # "tag":Ljava/lang/String;
    :catch_91
    move-exception v0

    goto/16 :goto_194

    .line 3169
    :catch_94
    move-exception v0

    goto/16 :goto_1b3

    .line 3167
    :catch_97
    move-exception v0

    goto/16 :goto_1d1

    .line 3165
    :catch_9a
    move-exception v0

    goto/16 :goto_1ef

    .line 3163
    :catch_9d
    move-exception v0

    goto/16 :goto_20d

    .line 3161
    :catch_a0
    move-exception v0

    goto/16 :goto_22b

    .line 3132
    .restart local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12  # "comp":Ljava/lang/String;
    .restart local v14  # "type":I
    .restart local v15  # "tag":Ljava/lang/String;
    :cond_a3
    nop

    :goto_a4
    :try_start_a4
    iput-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 3133
    iget-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_bb

    const-string v5, "android"
    :try_end_ac
    .catch Ljava/io/FileNotFoundException; {:try_start_a4 .. :try_end_ac} :catch_dc
    .catch Ljava/lang/NullPointerException; {:try_start_a4 .. :try_end_ac} :catch_d7
    .catch Ljava/lang/NumberFormatException; {:try_start_a4 .. :try_end_ac} :catch_d2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a4 .. :try_end_ac} :catch_cd
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_ac} :catch_c8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a4 .. :try_end_ac} :catch_c3

    move-object/from16 v17, v6

    .end local v6  # "stream":Ljava/io/FileInputStream;
    .local v17, "stream":Ljava/io/FileInputStream;
    :try_start_ae
    iget-object v6, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 3135
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3134
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_127

    goto :goto_bd

    .line 3133
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :cond_bb
    move-object/from16 v17, v6

    .line 3136
    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    :goto_bd
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iput-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    goto/16 :goto_127

    .line 3171
    .end local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12  # "comp":Ljava/lang/String;
    .end local v14  # "type":I
    .end local v15  # "tag":Ljava/lang/String;
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :catch_c3
    move-exception v0

    move-object/from16 v17, v6

    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_194

    .line 3169
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :catch_c8
    move-exception v0

    move-object/from16 v17, v6

    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1b3

    .line 3167
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :catch_cd
    move-exception v0

    move-object/from16 v17, v6

    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1d1

    .line 3165
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :catch_d2
    move-exception v0

    move-object/from16 v17, v6

    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1ef

    .line 3163
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :catch_d7
    move-exception v0

    move-object/from16 v17, v6

    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_20d

    .line 3161
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :catch_dc
    move-exception v0

    move-object/from16 v17, v6

    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_22b

    .line 3171
    .end local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :catch_e1
    move-exception v0

    goto/16 :goto_15f

    .line 3169
    :catch_e4
    move-exception v0

    goto/16 :goto_167

    .line 3167
    :catch_e7
    move-exception v0

    goto/16 :goto_16f

    .line 3165
    :catch_ea
    move-exception v0

    goto/16 :goto_177

    .line 3163
    :catch_ed
    move-exception v0

    goto/16 :goto_180

    .line 3161
    :catch_f0
    move-exception v0

    goto/16 :goto_189

    .line 3148
    .restart local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14  # "type":I
    .restart local v15  # "tag":Ljava/lang/String;
    :cond_f3
    move/from16 v8, p2

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    const-string/jumbo v5, "kwp"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_127

    .line 3150
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3151
    .local v5, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_120

    .line 3152
    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v12, "wallpaper_lock_orig"

    move-object/from16 v18, v5

    .end local v5  # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v18, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v5, "wallpaper_lock"

    invoke-direct {v6, v2, v12, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 3154
    .end local v18  # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v5  # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_122

    .line 3151
    :cond_120
    move-object/from16 v18, v5

    .line 3156
    :goto_122
    const/4 v6, 0x0

    invoke-direct {v1, v0, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    :try_end_126
    .catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_126} :catch_141
    .catch Ljava/lang/NullPointerException; {:try_start_ae .. :try_end_126} :catch_13c
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_126} :catch_137
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ae .. :try_end_126} :catch_132
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_126} :catch_12d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ae .. :try_end_126} :catch_128

    goto :goto_14c

    .line 3148
    .end local v5  # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_127
    :goto_127
    goto :goto_14c

    .line 3171
    .end local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14  # "type":I
    .end local v15  # "tag":Ljava/lang/String;
    :catch_128
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_194

    .line 3169
    :catch_12d
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_1b3

    .line 3167
    :catch_132
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_1d1

    .line 3165
    :catch_137
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_1ef

    .line 3163
    :catch_13c
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_20d

    .line 3161
    :catch_141
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_22b

    .line 3122
    .end local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v14  # "type":I
    :cond_146
    move/from16 v8, p2

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 3159
    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    :goto_14c
    const/4 v5, 0x1

    if-ne v14, v5, :cond_154

    .line 3160
    const/4 v11, 0x1

    .line 3173
    .end local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14  # "type":I
    move-object/from16 v6, v17

    goto/16 :goto_232

    .line 3159
    .restart local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14  # "type":I
    :cond_154
    move v8, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    const/4 v12, 0x0

    goto/16 :goto_68

    .line 3171
    .end local v0  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14  # "type":I
    .end local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :catch_15c
    move-exception v0

    move/from16 v8, p2

    :goto_15f
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    goto :goto_194

    .line 3169
    .end local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :catch_164
    move-exception v0

    move/from16 v8, p2

    :goto_167
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    goto :goto_1b3

    .line 3167
    .end local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :catch_16c
    move-exception v0

    move/from16 v8, p2

    :goto_16f
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    goto :goto_1d1

    .line 3165
    .end local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :catch_174
    move-exception v0

    move/from16 v8, p2

    :goto_177
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1ef

    .line 3163
    .end local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :catch_17d
    move-exception v0

    move/from16 v8, p2

    :goto_180
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_20d

    .line 3161
    .end local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :catch_186
    move-exception v0

    move/from16 v8, p2

    :goto_189
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6  # "stream":Ljava/io/FileInputStream;
    .restart local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17  # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_22b

    .line 3171
    .end local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17  # "stream":Ljava/io/FileInputStream;
    .restart local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6  # "stream":Ljava/io/FileInputStream;
    :catch_18f
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    .line 3172
    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_232

    .line 3169
    .end local v0  # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_1ae
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    .line 3170
    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_1b3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0  # "e":Ljava/io/IOException;
    goto :goto_231

    .line 3167
    .end local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_1cc
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    .line 3168
    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_1d1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_231

    .line 3165
    .end local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_1ea
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    .line 3166
    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_1ef
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0  # "e":Ljava/lang/NumberFormatException;
    goto :goto_231

    .line 3163
    .end local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_208
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    .line 3164
    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_20d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0  # "e":Ljava/lang/NullPointerException;
    goto :goto_231

    .line 3161
    .end local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_226
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    .line 3162
    .end local v5  # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v16  # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_22b
    const-string/jumbo v3, "no current wallpaper -- first boot?"

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    .end local v0  # "e":Ljava/io/FileNotFoundException;
    :goto_231
    nop

    .line 3174
    :goto_232
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3176
    if-nez v11, :cond_24c

    .line 3177
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3178
    iget-object v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3179
    const-string v0, ""

    iput-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3181
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_256

    .line 3183
    :cond_24c
    iget v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-gtz v0, :cond_256

    .line 3184
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3192
    :cond_256
    :goto_256
    const/4 v3, 0x0

    invoke-direct {v1, v13, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    .line 3193
    invoke-direct {v1, v10, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3194
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3195
    .local v0, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_26a

    .line 3196
    invoke-direct {v1, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3198
    :cond_26a
    return-void
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7
    .param p0, "userId"  # I

    .line 2893
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_info.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2894
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .registers 8

    .line 3005
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3007
    .local v0, "preNWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3008
    .local v2, "originalWallpaper":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_orig"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3011
    .local v3, "newWallpaper":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 3012
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_59

    .line 3018
    invoke-static {v0, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_59

    .line 3020
    :cond_30
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 3025
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/wallpaper_info.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3026
    .local v4, "oldInfo":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 3027
    new-instance v5, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v6, "wallpaper_info.xml"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v5

    .line 3028
    .local v1, "newInfo":Ljava/io/File;
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3031
    .end local v1  # "newInfo":Ljava/io/File;
    :cond_53
    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 3032
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3034
    .end local v4  # "oldInfo":Ljava/io/File;
    :cond_59
    :goto_59
    return-void
.end method

.method private migrateSystemToLockWallpaperLocked(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 2470
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2471
    .local v0, "sysWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_b

    .line 2475
    return-void

    .line 2479
    :cond_b
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2481
    .local v1, "lockWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2482
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2483
    iget-boolean v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iput-boolean v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 2484
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2488
    :try_start_29
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/system/ErrnoException; {:try_start_29 .. :try_end_47} :catch_4e

    .line 2495
    nop

    .line 2497
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2498
    return-void

    .line 2490
    :catch_4e
    move-exception v2

    .line 2491
    .local v2, "e":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t migrate system wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2493
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2494
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 7
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2806
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2807
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1d

    .line 2809
    :try_start_b
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v2}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 2814
    goto :goto_1a

    .line 2810
    :catch_19
    move-exception v2

    .line 2807
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2816
    .end local v1  # "i":I
    :cond_1d
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2818
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2819
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2820
    return-void
.end method

.method private notifyColorListeners(Landroid/app/WallpaperColors;III)V
    .registers 13
    .param p1, "wallpaperColors"  # Landroid/app/WallpaperColors;
    .param p2, "which"  # I
    .param p3, "userId"  # I
    .param p4, "displayId"  # I

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v0, "colorListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 451
    nop

    .line 452
    :try_start_9
    invoke-direct {p0, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 453
    .local v2, "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    const/4 v3, -0x1

    .line 454
    invoke-direct {p0, v3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v3

    .line 455
    .local v3, "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 457
    .local v4, "keyguardListener":Landroid/app/IWallpaperManagerCallback;
    if-eqz v2, :cond_2c

    .line 458
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 459
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1b
    if-ge v6, v5, :cond_29

    .line 460
    invoke-virtual {v2, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 462
    .end local v6  # "i":I
    :cond_29
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 465
    .end local v5  # "count":I
    :cond_2c
    if-eqz v3, :cond_44

    .line 466
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 467
    .restart local v5  # "count":I
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_33
    if-ge v6, v5, :cond_41

    .line 468
    invoke-virtual {v3, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 470
    .end local v6  # "i":I
    :cond_41
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 472
    .end local v2  # "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v3  # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v5  # "count":I
    :cond_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_64

    .line 474
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 475
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4a
    if-ge v2, v1, :cond_5a

    .line 477
    :try_start_4c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_55} :catch_56

    .line 481
    goto :goto_57

    .line 478
    :catch_56
    move-exception v3

    .line 475
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 485
    .end local v2  # "i":I
    :cond_5a
    if-eqz v4, :cond_63

    if-nez p4, :cond_63

    .line 487
    :try_start_5e
    invoke-interface {v4, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_61} :catch_62

    .line 490
    goto :goto_63

    .line 488
    :catch_62
    move-exception v2

    .line 492
    :cond_63
    :goto_63
    return-void

    .line 472
    .end local v1  # "count":I
    .end local v4  # "keyguardListener":Landroid/app/IWallpaperManagerCallback;
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v2
.end method

.method private notifyLockWallpaperChanged()V
    .registers 3

    .line 374
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 375
    .local v0, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v0, :cond_9

    .line 377
    :try_start_4
    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 380
    goto :goto_9

    .line 378
    :catch_8
    move-exception v1

    .line 382
    :cond_9
    :goto_9
    return-void
.end method

.method private notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 5
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "which"  # I

    .line 385
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_f

    .line 386
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v1, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$la7x4YHA-l88Cd6HFTscnLBbKfI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$la7x4YHA-l88Cd6HFTscnLBbKfI;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    goto :goto_13

    .line 390
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    .line 392
    :goto_13
    return-void
.end method

.method private notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .registers 8
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "which"  # I
    .param p3, "displayId"  # I

    .line 408
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_3
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 410
    invoke-direct {p0, v1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 411
    .local v1, "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    const/4 v2, -0x1

    .line 412
    invoke-direct {p0, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 414
    .local v2, "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 415
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 416
    monitor-exit v0

    return-void

    .line 423
    :cond_1c
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v3, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    move v1, v3

    .line 424
    .end local v2  # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .local v1, "needsExtraction":Z
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_47

    .line 428
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v0, p2, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;III)V

    .line 430
    if-eqz v1, :cond_46

    .line 431
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 432
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_34
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v2, :cond_3a

    .line 435
    monitor-exit v0

    return-void

    .line 437
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_43

    .line 438
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v0, p2, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;III)V

    goto :goto_46

    .line 437
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2

    .line 440
    :cond_46
    :goto_46
    return-void

    .line 424
    .end local v1  # "needsExtraction":Z
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1
.end method

.method private onDisplayReadyInternal(I)V
    .registers 6
    .param p1, "displayId"  # I

    .line 2868
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2869
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_9

    .line 2870
    monitor-exit v0

    return-void

    .line 2872
    :cond_9
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2873
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2874
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v1

    .line 2875
    .local v1, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-nez v1, :cond_1f

    monitor-exit v0

    return-void

    .line 2876
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2877
    monitor-exit v0

    return-void

    .line 2881
    .end local v1  # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_44

    .line 2882
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2883
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v1

    .line 2884
    .restart local v1  # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-nez v1, :cond_3a

    monitor-exit v0

    return-void

    .line 2885
    :cond_3a
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2886
    .end local v1  # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    goto :goto_4b

    .line 2887
    :cond_44
    const-string v1, "WallpaperManagerService"

    const-string v2, "No wallpaper can be added to the new display"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    :goto_4b
    monitor-exit v0

    .line 2890
    return-void

    .line 2889
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method private parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .registers 15
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "keepDimensionHints"  # Z

    .line 3225
    const/4 v0, 0x0

    const-string/jumbo v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3226
    .local v1, "idString":Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 3227
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3228
    .local v2, "id":I
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-le v2, v3, :cond_16

    .line 3229
    iput v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 3231
    .end local v2  # "id":I
    :cond_16
    goto :goto_1d

    .line 3232
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3235
    :goto_1d
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v3

    .line 3237
    .local v3, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    if-nez p3, :cond_3d

    .line 3238
    const-string/jumbo v4, "width"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 3239
    const-string v4, "height"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 3241
    :cond_3d
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropLeft"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3242
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropTop"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3243
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropRight"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3244
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropBottom"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3245
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v5, "paddingLeft"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3246
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v5, "paddingTop"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3247
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v5, "paddingRight"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3248
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v5, "paddingBottom"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3249
    const-string v4, "colorsCount"

    invoke-direct {p0, p1, v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 3250
    .local v4, "colorsCount":I
    if-lez v4, :cond_d5

    .line 3251
    const/4 v5, 0x0

    .local v5, "primary":Landroid/graphics/Color;
    const/4 v6, 0x0

    .local v6, "secondary":Landroid/graphics/Color;
    const/4 v7, 0x0

    .line 3252
    .local v7, "tertiary":Landroid/graphics/Color;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9d
    if-ge v8, v4, :cond_c8

    .line 3253
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "colorValue"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v9

    .line 3254
    .local v9, "color":Landroid/graphics/Color;
    if-nez v8, :cond_bc

    .line 3255
    move-object v5, v9

    goto :goto_c5

    .line 3256
    :cond_bc
    const/4 v10, 0x1

    if-ne v8, v10, :cond_c1

    .line 3257
    move-object v6, v9

    goto :goto_c5

    .line 3258
    :cond_c1
    const/4 v10, 0x2

    if-ne v8, v10, :cond_c8

    .line 3259
    move-object v7, v9

    .line 3252
    .end local v9  # "color":Landroid/graphics/Color;
    :goto_c5
    add-int/lit8 v8, v8, 0x1

    goto :goto_9d

    .line 3264
    .end local v8  # "i":I
    :cond_c8
    const-string v8, "colorHints"

    invoke-direct {p0, p1, v8, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 3265
    .local v2, "colorHints":I
    new-instance v8, Landroid/app/WallpaperColors;

    invoke-direct {v8, v5, v6, v7, v2}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    iput-object v8, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 3267
    .end local v2  # "colorHints":I
    .end local v5  # "primary":Landroid/graphics/Color;
    .end local v6  # "secondary":Landroid/graphics/Color;
    .end local v7  # "tertiary":Landroid/graphics/Color;
    :cond_d5
    const-string/jumbo v2, "name"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3268
    const-string v2, "backup"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3269
    return-void
.end method

.method private removeDisplayData(I)V
    .registers 3
    .param p1, "displayId"  # I

    .line 1011
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1012
    return-void
.end method

.method private restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 20
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3330
    move-object/from16 v1, p1

    const-string v2, "WallpaperManagerService"

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-le v0, v3, :cond_19b

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "res:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 3331
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3333
    .local v5, "resName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3334
    .local v0, "pkg":Ljava/lang/String;
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 3335
    .local v6, "colon":I
    if-lez v6, :cond_32

    .line 3336
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_33

    .line 3335
    :cond_32
    move-object v7, v0

    .line 3339
    .end local v0  # "pkg":Ljava/lang/String;
    .local v7, "pkg":Ljava/lang/String;
    :goto_33
    const/4 v0, 0x0

    .line 3340
    .local v0, "ident":Ljava/lang/String;
    const/16 v8, 0x2f

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 3341
    .local v8, "slash":I
    if-lez v8, :cond_44

    .line 3342
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_45

    .line 3341
    :cond_44
    move-object v9, v0

    .line 3345
    .end local v0  # "ident":Ljava/lang/String;
    .local v9, "ident":Ljava/lang/String;
    :goto_45
    const/4 v0, 0x0

    .line 3346
    .local v0, "type":Ljava/lang/String;
    const/4 v10, 0x1

    if-lez v6, :cond_57

    if-lez v8, :cond_57

    sub-int v11, v8, v6

    if-le v11, v10, :cond_57

    .line 3347
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_58

    .line 3350
    :cond_57
    move-object v11, v0

    .end local v0  # "type":Ljava/lang/String;
    .local v11, "type":Ljava/lang/String;
    :goto_58
    if-eqz v7, :cond_198

    if-eqz v9, :cond_198

    if-eqz v11, :cond_198

    .line 3351
    const/4 v12, -0x1

    .line 3352
    .local v12, "resId":I
    const/4 v13, 0x0

    .line 3353
    .local v13, "res":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 3354
    .local v14, "fos":Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 3356
    .local v15, "cos":Ljava/io/FileOutputStream;
    move-object/from16 v10, p0

    :try_start_64
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 3357
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3358
    .local v3, "r":Landroid/content/res/Resources;
    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v12, v4

    .line 3359
    if-nez v12, :cond_b2

    .line 3360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0  # "c":Landroid/content/Context;
    .local v16, "c":Landroid/content/Context;
    const-string v0, "couldn\'t resolve identifier pkg="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ident="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_64 .. :try_end_9c} :catch_15e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_64 .. :try_end_9c} :catch_13d
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_9c} :catch_122
    .catchall {:try_start_64 .. :try_end_9c} :catchall_120

    .line 3362
    nop

    .line 3390
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3391
    if-eqz v14, :cond_a5

    .line 3392
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3394
    :cond_a5
    if-eqz v15, :cond_aa

    .line 3395
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3397
    :cond_aa
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3398
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3362
    const/4 v2, 0x0

    return v2

    .line 3365
    .end local v16  # "c":Landroid/content/Context;
    .restart local v0  # "c":Landroid/content/Context;
    :cond_b2
    move-object/from16 v16, v0

    .end local v0  # "c":Landroid/content/Context;
    .restart local v16  # "c":Landroid/content/Context;
    :try_start_b4
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    move-object v13, v0

    .line 3366
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 3367
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3368
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3370
    :cond_cb
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v14, v0

    .line 3371
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v15, v0

    .line 3373
    const v0, 0x8000

    new-array v0, v0, [B

    .line 3375
    .local v0, "buffer":[B
    :goto_e0
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move/from16 v17, v4

    .local v17, "amt":I
    if-lez v4, :cond_f4

    .line 3376
    move/from16 v4, v17

    const/4 v1, 0x0

    .end local v17  # "amt":I
    .local v4, "amt":I
    invoke-virtual {v14, v0, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3377
    invoke-virtual {v15, v0, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v1, p1

    goto :goto_e0

    .line 3381
    .end local v4  # "amt":I
    .restart local v17  # "amt":I
    :cond_f4
    move/from16 v4, v17

    .end local v17  # "amt":I
    .restart local v4  # "amt":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0  # "buffer":[B
    .local v17, "buffer":[B
    const-string v0, "Restored wallpaper: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b4 .. :try_end_10c} :catch_15e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b4 .. :try_end_10c} :catch_13d
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_10c} :catch_122
    .catchall {:try_start_b4 .. :try_end_10c} :catchall_120

    .line 3382
    nop

    .line 3390
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3391
    nop

    .line 3392
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3394
    nop

    .line 3395
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3397
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3398
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3382
    const/4 v0, 0x1

    return v0

    .line 3390
    .end local v3  # "r":Landroid/content/res/Resources;
    .end local v4  # "amt":I
    .end local v16  # "c":Landroid/content/Context;
    .end local v17  # "buffer":[B
    :catchall_120
    move-exception v0

    goto :goto_184

    .line 3387
    :catch_122
    move-exception v0

    .line 3388
    .local v0, "e":Ljava/io/IOException;
    :try_start_123
    const-string v1, "IOException while restoring wallpaper "

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_128
    .catchall {:try_start_123 .. :try_end_128} :catchall_120

    .line 3390
    nop

    .end local v0  # "e":Ljava/io/IOException;
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3391
    if-eqz v14, :cond_131

    .line 3392
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3394
    :cond_131
    if-eqz v15, :cond_136

    .line 3395
    :goto_133
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3397
    :cond_136
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3398
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3399
    goto :goto_19d

    .line 3385
    :catch_13d
    move-exception v0

    .line 3386
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_13e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_152
    .catchall {:try_start_13e .. :try_end_152} :catchall_120

    .line 3390
    nop

    .end local v0  # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3391
    if-eqz v14, :cond_15b

    .line 3392
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3394
    :cond_15b
    if-eqz v15, :cond_136

    .line 3395
    goto :goto_133

    .line 3383
    :catch_15e
    move-exception v0

    .line 3384
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_15f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_178
    .catchall {:try_start_15f .. :try_end_178} :catchall_120

    .line 3390
    nop

    .end local v0  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3391
    if-eqz v14, :cond_181

    .line 3392
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3394
    :cond_181
    if-eqz v15, :cond_136

    .line 3395
    goto :goto_133

    .line 3390
    :goto_184
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3391
    if-eqz v14, :cond_18c

    .line 3392
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3394
    :cond_18c
    if-eqz v15, :cond_191

    .line 3395
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3397
    :cond_191
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3398
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 3350
    .end local v12  # "resId":I
    .end local v13  # "res":Ljava/io/InputStream;
    .end local v14  # "fos":Ljava/io/FileOutputStream;
    .end local v15  # "cos":Ljava/io/FileOutputStream;
    :cond_198
    move-object/from16 v10, p0

    goto :goto_19d

    .line 3330
    .end local v5  # "resName":Ljava/lang/String;
    .end local v6  # "colon":I
    .end local v7  # "pkg":Ljava/lang/String;
    .end local v8  # "slash":I
    .end local v9  # "ident":Ljava/lang/String;
    .end local v11  # "type":Ljava/lang/String;
    :cond_19b
    move-object/from16 v10, p0

    .line 3402
    :goto_19d
    const/4 v1, 0x0

    return v1
.end method

.method private saveSettingsLocked(I)V
    .registers 9
    .param p1, "userId"  # I

    .line 2898
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 2899
    .local v0, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v1, 0x0

    .line 2900
    .local v1, "fstream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 2902
    .local v2, "stream":Ljava/io/BufferedOutputStream;
    :try_start_6
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2903
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v1, v4

    .line 2904
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 2905
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2906
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2910
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2911
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v4, :cond_3e

    .line 2912
    const-string/jumbo v5, "wp"

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2914
    :cond_3e
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v4, v5

    .line 2915
    if-eqz v4, :cond_4f

    .line 2916
    const-string/jumbo v5, "kwp"

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2919
    :cond_4f
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2921
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2922
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2923
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 2924
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_5e} :catch_5f

    .line 2928
    .end local v3  # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_66

    .line 2925
    :catch_5f
    move-exception v3

    .line 2926
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2927
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2929
    .end local v3  # "e":Ljava/io/IOException;
    :goto_66
    return-void
.end method

.method private setWallpaperComponent(Landroid/content/ComponentName;I)V
    .registers 16
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I

    .line 2551
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

    .line 2553
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2555
    const/4 v0, 0x1

    .line 2556
    .local v0, "which":I
    const/4 v1, 0x0

    .line 2559
    .local v1, "shouldNotifyColors":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2561
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2562
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v3, :cond_83

    .line 2565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v10, v4

    .line 2571
    .local v10, "ident":J
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2572
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_40

    .line 2575
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    .line 2580
    :cond_40
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_46
    .catchall {:try_start_1c .. :try_end_46} :catchall_9a

    if-nez v4, :cond_4a

    .line 2581
    or-int/lit8 v0, v0, 0x2

    .line 2585
    :cond_4a
    const/4 v4, 0x0

    :try_start_4b
    iput-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2586
    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    move v12, v4

    .line 2587
    .local v12, "same":Z
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 2588
    if-nez v12, :cond_63

    .line 2589
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2591
    :cond_63
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2592
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_6c
    .catchall {:try_start_4b .. :try_end_6c} :catchall_7e

    .line 2593
    const/4 v1, 0x1

    .line 2596
    .end local v12  # "same":Z
    :cond_6d
    :try_start_6d
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2597
    nop

    .line 2598
    .end local v10  # "ident":J
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_9a

    .line 2600
    if-eqz v1, :cond_7d

    .line 2601
    invoke-direct {p0, v3, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2602
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2604
    :cond_7d
    return-void

    .line 2596
    .restart local v10  # "ident":J
    :catchall_7e
    move-exception v4

    :try_start_7f
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "which":I
    .end local v1  # "shouldNotifyColors":Z
    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1  # "name":Landroid/content/ComponentName;
    .end local p2  # "userId":I
    throw v4

    .line 2563
    .end local v10  # "ident":J
    .restart local v0  # "which":I
    .restart local v1  # "shouldNotifyColors":Z
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1  # "name":Landroid/content/ComponentName;
    .restart local p2  # "userId":I
    :cond_83
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper not yet initialized for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0  # "which":I
    .end local v1  # "shouldNotifyColors":Z
    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1  # "name":Landroid/content/ComponentName;
    .end local p2  # "userId":I
    throw v4

    .line 2598
    .end local v3  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v0  # "which":I
    .restart local v1  # "shouldNotifyColors":Z
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1  # "name":Landroid/content/ComponentName;
    .restart local p2  # "userId":I
    :catchall_9a
    move-exception v3

    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_7f .. :try_end_9c} :catchall_9a

    throw v3
.end method

.method private supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .registers 4
    .param p1, "connection"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1059
    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 1060
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v1, :cond_f

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 1061
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->supportsMultipleDisplays()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v0, 0x1

    .line 1060
    :cond_10
    return v0

    .line 1063
    :cond_11
    return v0
.end method

.method private updateFallbackConnection()V
    .registers 5

    .line 1067
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_47

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_9

    goto :goto_47

    .line 1068
    :cond_9
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1069
    .local v0, "systemConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1070
    .local v1, "fallbackConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    if-nez v1, :cond_19

    .line 1071
    const-string v2, "WallpaperManagerService"

    const-string v3, "Fallback wallpaper connection has not been created yet!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    return-void

    .line 1074
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1075
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_46

    .line 1076
    sget-object v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$pVmree9DyIpBSg0s3RDK3MDesvs;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$pVmree9DyIpBSg0s3RDK3MDesvs;

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 1081
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    goto :goto_46

    .line 1084
    :cond_36
    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$SxaUJpgTTfzUoz6u3AWuAOQdoNw;

    invoke-direct {v2, v1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$SxaUJpgTTfzUoz6u3AWuAOQdoNw;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-static {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Ljava/util/function/Predicate;)V

    .line 1088
    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$tRb4SPHGj0pcxb3p7arcqKFqs08;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$tRb4SPHGj0pcxb3p7arcqKFqs08;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 1094
    :cond_46
    :goto_46
    return-void

    .line 1067
    .end local v0  # "systemConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v1  # "fallbackConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_47
    :goto_47
    return-void
.end method

.method private writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 11
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2939
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    .line 2940
    .local v0, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2941
    iget v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2942
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "width"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2943
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "height"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2945
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropLeft"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2946
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropTop"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2947
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropRight"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2948
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropBottom"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2950
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_74

    .line 2951
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "paddingLeft"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2953
    :cond_74
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_88

    .line 2954
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "paddingTop"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2956
    :cond_88
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_9c

    .line 2957
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "paddingRight"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2959
    :cond_9c
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_b0

    .line 2960
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "paddingBottom"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2963
    :cond_b0
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v2, :cond_106

    .line 2964
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v2}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 2965
    .local v2, "colorsCount":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "colorsCount"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2966
    if-lez v2, :cond_f7

    .line 2967
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ca
    if-ge v3, v2, :cond_f7

    .line 2968
    iget-object v4, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v4}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Color;

    .line 2969
    .local v4, "wc":Landroid/graphics/Color;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorValue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Color;->toArgb()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2967
    .end local v4  # "wc":Landroid/graphics/Color;
    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    .line 2972
    .end local v3  # "i":I
    :cond_f7
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2973
    invoke-virtual {v3}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 2972
    const-string v4, "colorHints"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2976
    .end local v2  # "colorsCount":I
    :cond_106
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2977
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const-string v3, "component"

    if-eqz v2, :cond_127

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 2978
    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_127

    .line 2979
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2980
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 2979
    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2983
    :cond_127
    iget-boolean v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    if-eqz v2, :cond_133

    .line 2984
    const-string v2, "backup"

    const-string/jumbo v4, "true"

    invoke-interface {p1, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2987
    :cond_133
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_16c

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 2988
    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16c

    .line 2989
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2990
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 2989
    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2992
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mRestoredwallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16e

    .line 2993
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mRestoredwallpaperComponent:Landroid/content/ComponentName;

    .line 2994
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2995
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2996
    .end local v2  # "intent":Landroid/content/Intent;
    goto :goto_16e

    .line 2998
    :cond_16c
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mRestoredwallpaperComponent:Landroid/content/ComponentName;

    .line 3000
    :cond_16e
    :goto_16e
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3001
    return-void
.end method


# virtual methods
.method public clearWallpaper(Ljava/lang/String;II)V
    .registers 12
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "which"  # I
    .param p3, "userId"  # I

    .line 1914
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1915
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_56

    .line 1918
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1919
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1918
    const-string v6, "clearWallpaper"

    move v3, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1921
    .end local p3  # "userId":I
    .local v0, "userId":I
    const/4 p3, 0x0

    .line 1922
    .local p3, "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1923
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2a
    invoke-virtual {p0, v2, p2, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1925
    const/4 v2, 0x2

    if-ne p2, v2, :cond_39

    .line 1926
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v2

    .line 1928
    :cond_39
    const/4 v2, 0x1

    if-eq p2, v2, :cond_3e

    if-nez p3, :cond_47

    .line 1929
    :cond_3e
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v3

    .line 1931
    :cond_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_53

    .line 1934
    if-eqz p3, :cond_52

    .line 1935
    invoke-direct {p0, p3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1936
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1938
    :cond_52
    return-void

    .line 1931
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2

    .line 1916
    .end local v0  # "userId":I
    .local p3, "userId":I
    :cond_56
    :goto_56
    return-void
.end method

.method clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    .registers 21
    .param p1, "defaultFailed"  # Z
    .param p2, "which"  # I
    .param p3, "userId"  # I
    .param p4, "reply"  # Landroid/os/IRemoteCallback;

    .line 1941
    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq v8, v1, :cond_17

    if-ne v8, v0, :cond_f

    goto :goto_17

    .line 1942
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper to clear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1945
    :cond_17
    :goto_17
    const/4 v1, 0x0

    .line 1946
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v2, 0x0

    if-ne v8, v0, :cond_29

    .line 1947
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1948
    if-nez v1, :cond_27

    .line 1953
    return-void

    .line 1948
    :cond_27
    move-object v11, v1

    goto :goto_43

    .line 1956
    :cond_29
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1957
    if-nez v1, :cond_42

    .line 1959
    invoke-direct {v7, v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1960
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v11, v1

    goto :goto_43

    .line 1957
    :cond_42
    move-object v11, v1

    .line 1963
    .end local v1  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v11, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_43
    if-nez v11, :cond_46

    .line 1964
    return-void

    .line 1967
    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1969
    .local v12, "ident":J
    :try_start_4a
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1970
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1971
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1972
    if-ne v8, v0, :cond_74

    .line 1973
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 1974
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;
    :try_end_65
    .catchall {:try_start_4a .. :try_end_65} :catchall_b3

    move-object v1, v0

    .line 1975
    .local v1, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v1, :cond_6d

    .line 1980
    :try_start_68
    invoke-interface {v1}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6b} :catch_6c
    .catchall {:try_start_68 .. :try_end_6b} :catchall_b3

    .line 1983
    goto :goto_6d

    .line 1981
    :catch_6c
    move-exception v0

    .line 1985
    :cond_6d
    :goto_6d
    :try_start_6d
    invoke-direct {v7, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_b3

    .line 2017
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1986
    return-void

    .line 1990
    .end local v1  # "cb":Landroid/app/IWallpaperManagerCallback;
    :cond_74
    const/4 v14, 0x0

    .line 1992
    .local v14, "e":Ljava/lang/RuntimeException;
    const/4 v15, 0x0

    :try_start_76
    iput-object v15, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 1993
    iput-boolean v2, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1994
    iget v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_76 .. :try_end_7c} :catch_9b
    .catchall {:try_start_76 .. :try_end_7c} :catchall_b3

    if-eq v9, v0, :cond_82

    .line 2017
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1994
    return-void

    .line 1995
    :cond_82
    if-eqz p1, :cond_88

    .line 1996
    :try_start_84
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object v2, v0

    goto :goto_89

    .line 1997
    :cond_88
    move-object v2, v15

    :goto_89
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1995
    move-object/from16 v1, p0

    move-object v5, v11

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_94} :catch_9b
    .catchall {:try_start_84 .. :try_end_94} :catchall_b3

    if-eqz v0, :cond_9a

    .line 2017
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1998
    return-void

    .line 2002
    :cond_9a
    goto :goto_9d

    .line 2000
    :catch_9b
    move-exception v0

    .line 2001
    .local v0, "e1":Ljava/lang/IllegalArgumentException;
    move-object v14, v0

    .line 2008
    .end local v0  # "e1":Ljava/lang/IllegalArgumentException;
    :goto_9d
    :try_start_9d
    const-string v0, "WallpaperManagerService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2009
    invoke-direct {v7, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_a7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_b3

    .line 2010
    if-eqz v10, :cond_ae

    .line 2012
    :try_start_a9
    invoke-interface {v10, v15}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ac} :catch_ad
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_b3

    .line 2014
    goto :goto_ae

    .line 2013
    :catch_ad
    move-exception v0

    .line 2017
    .end local v14  # "e":Ljava/lang/RuntimeException;
    :cond_ae
    :goto_ae
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2018
    nop

    .line 2019
    return-void

    .line 2017
    :catchall_b3
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 3407
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WallpaperManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3409
    :cond_b
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3410
    :try_start_e
    const-string v1, "System wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3411
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_b8

    .line 3412
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3413
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v4, " User "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 3414
    const-string v4, ": id="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 3415
    const-string v4, " Display state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3416
    new-instance v4, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$VlOcXJ2BasDkYqNidSTRvw-HBpM;

    invoke-direct {v4, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$VlOcXJ2BasDkYqNidSTRvw-HBpM;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->forEachDisplayData(Ljava/util/function/Consumer;)V

    .line 3425
    const-string v4, "  mCropHint="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3426
    const-string v4, "  mName="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3427
    const-string v4, "  mAllowBackup="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 3428
    const-string v4, "  mWallpaperComponent="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3429
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_b4

    .line 3430
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3431
    .local v4, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v5, "  Wallpaper connection "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3432
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3433
    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3434
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v5, :cond_93

    .line 3435
    const-string v5, "    mInfo.component="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3436
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v5}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3438
    :cond_93
    new-instance v5, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$fLM_YLhVBfWS7QM0ta-qHXvJ4Uc;

    invoke-direct {v5, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$fLM_YLhVBfWS7QM0ta-qHXvJ4Uc;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3446
    const-string v5, "    mService="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3447
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3448
    const-string v5, "    mLastDiedTime="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3449
    iget-wide v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    .line 3411
    .end local v3  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4  # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_b4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15

    .line 3452
    .end local v2  # "i":I
    :cond_b8
    const-string v2, "Lock wallpaper state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3453
    nop

    .local v1, "i":I
    :goto_be
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_103

    .line 3454
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3455
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v3, " User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3456
    const-string v3, ": id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3457
    const-string v3, "  mCropHint="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3458
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3459
    const-string v3, "  mAllowBackup="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3453
    .end local v2  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_be

    .line 3461
    .end local v1  # "i":I
    :cond_103
    const-string v1, "Fallback wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3462
    const-string v1, " User "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3463
    const-string v1, ": id="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3464
    const-string v1, "  mCropHint="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3465
    const-string v1, "  mName="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3466
    const-string v1, "  mAllowBackup="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3467
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_190

    .line 3468
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3469
    .local v1, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v2, "  Fallback Wallpaper connection "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3470
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3471
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3472
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_16d

    .line 3473
    const-string v2, "    mInfo.component="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3474
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3476
    :cond_16d
    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$VUhQWq8Flr0dsQqeVHhHT8jU7qY;

    invoke-direct {v2, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$VUhQWq8Flr0dsQqeVHhHT8jU7qY;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3484
    const-string v2, "    mService="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3485
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3486
    const-string v2, "    mLastDiedTime="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3487
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 3489
    .end local v1  # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_190
    monitor-exit v0

    .line 3490
    return-void

    .line 3489
    :catchall_192
    move-exception v1

    monitor-exit v0
    :try_end_194
    .catchall {:try_start_e .. :try_end_194} :catchall_192

    throw v1
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1688
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1689
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 1690
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1691
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1689
    .end local v1  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1693
    .end local v0  # "i":I
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

    .line 1045
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;>;"
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1046
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 1047
    .local v1, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1045
    .end local v1  # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1049
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method public getHeightHint(I)I
    .registers 6
    .param p1, "displayId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2128
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2129
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2132
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2133
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_1f

    .line 2134
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v2

    .line 2135
    .local v2, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    monitor-exit v0

    return v3

    .line 2137
    .end local v2  # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :cond_1f
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2130
    .end local v1  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1  # "displayId":I
    throw v1

    .line 2139
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1  # "displayId":I
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 1767
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1b

    .line 1770
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1771
    :try_start_b
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1772
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1

    .line 1768
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNightModeLauncherWallPaperFD()Landroid/os/ParcelFileDescriptor;
    .registers 9

    .line 3529
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3530
    .local v0, "ident":J
    const/4 v2, 0x0

    .line 3532
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_7
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    .line 3533
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 3534
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 3535
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3538
    :cond_1e
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "wallpaper_night_orig"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3539
    .local v5, "file":Ljava/io/File;
    const/high16 v6, 0x3c000000  # 0.0078125f

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    move-object v2, v6

    .line 3541
    invoke-static {v5}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v6
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_31} :catch_3f
    .catchall {:try_start_7 .. :try_end_31} :catchall_3d

    if-nez v6, :cond_38

    .line 3542
    nop

    .line 3548
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3542
    return-object v4

    .line 3544
    :cond_38
    nop

    .line 3548
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3544
    return-object v2

    .line 3548
    .end local v3  # "dir":Ljava/io/File;
    .end local v5  # "file":Ljava/io/File;
    :catchall_3d
    move-exception v3

    goto :goto_4d

    .line 3545
    :catch_3f
    move-exception v3

    .line 3546
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_40
    const-string v5, "WallpaperManagerService"

    const-string v6, "Error getNightModeLauncherWallPaperFD"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_3d

    .line 3548
    nop

    .end local v3  # "e":Ljava/io/FileNotFoundException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3549
    nop

    .line 3550
    return-object v4

    .line 3548
    :goto_4d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .registers 23
    .param p1, "callingPkg"  # Ljava/lang/String;
    .param p2, "cb"  # Landroid/app/IWallpaperManagerCallback;
    .param p3, "which"  # I
    .param p4, "outParams"  # Landroid/os/Bundle;
    .param p5, "wallpaperUserId"  # I

    .line 2189
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    .line 2191
    .local v5, "hasPrivilege":I
    const/4 v0, 0x1

    if-eqz v5, :cond_2b

    .line 2192
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 2193
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2192
    move-object/from16 v9, p1

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/os/storage/StorageManager;->checkPermissionReadImages(ZIILjava/lang/String;)Z

    goto :goto_2d

    .line 2191
    :cond_2b
    move-object/from16 v9, p1

    .line 2196
    :goto_2d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    .line 2196
    const-string v15, "getWallpaper"

    move/from16 v12, p5

    invoke-static/range {v10 .. v16}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2199
    .end local p5  # "wallpaperUserId":I
    .local v6, "wallpaperUserId":I
    const/4 v7, 0x2

    if-eq v3, v0, :cond_4f

    if-ne v3, v7, :cond_47

    goto :goto_4f

    .line 2200
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2203
    :cond_4f
    :goto_4f
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2205
    if-ne v3, v7, :cond_57

    :try_start_54
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_59

    :cond_57
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_59
    move-object v7, v0

    .line 2206
    .local v7, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v10, v0

    .line 2207
    .local v10, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v11, 0x0

    if-nez v10, :cond_66

    .line 2211
    monitor-exit v8

    return-object v11

    .line 2214
    :cond_66
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v12
    :try_end_6b
    .catchall {:try_start_54 .. :try_end_6b} :catchall_d0

    .line 2216
    .local v12, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    if-eqz v4, :cond_7f

    .line 2217
    :try_start_6d
    const-string/jumbo v13, "width"

    iget v14, v12, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2218
    const-string v13, "height"

    iget v14, v12, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7f

    .line 2239
    :catch_7d
    move-exception v0

    goto :goto_c6

    .line 2220
    :cond_7f
    :goto_7f
    if-eqz v2, :cond_88

    .line 2221
    invoke-static {v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2223
    :cond_88
    iget-object v13, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_8e} :catch_7d
    .catchall {:try_start_6d .. :try_end_8e} :catchall_d0

    if-nez v13, :cond_92

    .line 2224
    :try_start_90
    monitor-exit v8
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_d0

    return-object v11

    .line 2227
    :cond_92
    :try_start_92
    iget-object v13, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    .line 2228
    .local v13, "file":Ljava/io/File;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isNightMode()Z

    move-result v14

    if-eqz v14, :cond_be

    .line 2229
    const-string v14, "WallpaperManagerService"

    const-string v15, "getWallpaper nightMode"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    new-instance v14, Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v15, "wallpaper_night_orig"

    invoke-direct {v14, v0, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v14

    .line 2231
    .local v0, "nightModeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_bd

    .line 2232
    const-string v14, "WallpaperManagerService"

    const-string/jumbo v15, "nightMode wallpaper no exists"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 2234
    :cond_bd
    move-object v13, v0

    .line 2237
    .end local v0  # "nightModeFile":Ljava/io/File;
    :cond_be
    :goto_be
    const/high16 v0, 0x10000000

    invoke-static {v13, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_c4
    .catch Ljava/io/FileNotFoundException; {:try_start_92 .. :try_end_c4} :catch_7d
    .catchall {:try_start_92 .. :try_end_c4} :catchall_d0

    :try_start_c4
    monitor-exit v8

    return-object v0

    .line 2241
    .end local v13  # "file":Ljava/io/File;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_c6
    const-string v13, "WallpaperManagerService"

    const-string v14, "Error getting wallpaper"

    invoke-static {v13, v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2243
    nop

    .end local v0  # "e":Ljava/io/FileNotFoundException;
    monitor-exit v8

    return-object v11

    .line 2244
    .end local v7  # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    .end local v10  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v12  # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :catchall_d0
    move-exception v0

    monitor-exit v8
    :try_end_d2
    .catchall {:try_start_c4 .. :try_end_d2} :catchall_d0

    throw v0
.end method

.method public getWallpaperColors(III)Landroid/app/WallpaperColors;
    .registers 13
    .param p1, "which"  # I
    .param p2, "userId"  # I
    .param p3, "displayId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2363
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    if-ne p1, v0, :cond_7

    goto :goto_10

    .line 2364
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2366
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

    .line 2369
    const/4 v2, 0x0

    .line 2372
    .local v2, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2373
    if-ne p1, v1, :cond_34

    .line 2374
    :try_start_28
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v2, v1

    goto :goto_34

    .line 2387
    :catchall_32
    move-exception v0

    goto :goto_56

    .line 2379
    :cond_34
    :goto_34
    if-nez v2, :cond_3b

    .line 2380
    invoke-direct {p0, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    move-object v2, v1

    .line 2383
    :cond_3b
    if-nez v2, :cond_40

    .line 2384
    const/4 v0, 0x0

    monitor-exit v3

    return-object v0

    .line 2386
    :cond_40
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    .line 2387
    .local v0, "shouldExtract":Z
    :goto_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_32

    .line 2389
    if-eqz v0, :cond_4c

    .line 2390
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2393
    :cond_4c
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2394
    :try_start_4f
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    monitor-exit v1

    return-object v3

    .line 2395
    :catchall_53
    move-exception v3

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_53

    throw v3

    .line 2387
    .end local v0  # "shouldExtract":Z
    :goto_56
    :try_start_56
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_32

    throw v0
.end method

.method public getWallpaperIdForUser(II)I
    .registers 10
    .param p1, "which"  # I
    .param p2, "userId"  # I

    .line 2262
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2262
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getWallpaperIdForUser"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2265
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_21

    if-ne p1, v0, :cond_19

    goto :goto_21

    .line 2266
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2270
    :cond_21
    :goto_21
    if-ne p1, v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_28

    :cond_26
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 2271
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_28
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2272
    :try_start_2b
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2273
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v2, :cond_37

    .line 2274
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    monitor-exit v1

    return v3

    .line 2276
    .end local v2  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_37
    monitor-exit v1

    .line 2277
    const/4 v1, -0x1

    return v1

    .line 2276
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 9
    .param p1, "userId"  # I

    .line 2249
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2249
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getWallpaperInfo"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2251
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2252
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2253
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_29

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_29

    .line 2254
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v0

    return-object v2

    .line 2256
    :cond_29
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2257
    .end local v1  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public getWidthHint(I)I
    .registers 6
    .param p1, "displayId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2110
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2111
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2114
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2115
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_1f

    .line 2116
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v2

    .line 2117
    .local v2, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    monitor-exit v0

    return v3

    .line 2119
    .end local v2  # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :cond_1f
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2112
    .end local v1  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1  # "displayId":I
    throw v1

    .line 2121
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1  # "displayId":I
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .registers 11
    .param p1, "name"  # Ljava/lang/String;

    .line 2022
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2024
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_63

    .line 2026
    .local v1, "ident":J
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

    .line 2028
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2029
    nop

    .line 2030
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2032
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 2033
    goto :goto_1e

    .line 2035
    :cond_32
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2036
    .local v7, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v7, :cond_4e

    .line 2038
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 2039
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v7, v6

    .line 2041
    :cond_4e
    if-eqz v7, :cond_5b

    iget-object v6, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 2042
    const/4 v4, 0x1

    monitor-exit v0

    return v4

    .line 2044
    .end local v5  # "user":Landroid/content/pm/UserInfo;
    .end local v7  # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_5b
    goto :goto_1e

    .line 2045
    .end local v1  # "ident":J
    .end local v3  # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5c
    monitor-exit v0

    .line 2046
    return v6

    .line 2028
    .restart local v1  # "ident":J
    :catchall_5e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1  # "name":Ljava/lang/String;
    throw v3

    .line 2045
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1  # "name":Ljava/lang/String;
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_16 .. :try_end_65} :catchall_63

    throw v1
.end method

.method initialize()V
    .registers 6

    .line 1672
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1673
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1678
    invoke-direct {p0, v0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1679
    invoke-direct {p0, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1680
    return-void
.end method

.method public initializeFallbackWallpaper()V
    .registers 9

    .line 3201
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v0, :cond_27

    .line 3203
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v1, 0x0

    const-string/jumbo v2, "wallpaper_orig"

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3205
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3206
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v1

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3207
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3209
    :cond_27
    return-void
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .registers 9
    .param p1, "callingPackage"  # Ljava/lang/String;

    .line 2840
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2841
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2842
    .local v1, "uidPackages":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2843
    .local v2, "uidMatchPackage":Z
    if-nez v2, :cond_1a

    .line 2844
    const/4 v3, 0x0

    return v3

    .line 2847
    :cond_1a
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 2848
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_46

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_46

    .line 2851
    :cond_32
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 2852
    .local v4, "um":Landroid/os/UserManager;
    const-string/jumbo v6, "no_set_wallpaper"

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v5, v6

    return v5

    .line 2849
    .end local v4  # "um":Landroid/os/UserManager;
    :cond_46
    :goto_46
    return v5
.end method

.method public isWallpaperBackupEligible(II)Z
    .registers 5
    .param p1, "which"  # I
    .param p2, "userId"  # I

    .line 2857
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_24

    .line 2861
    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    .line 2862
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_1c

    .line 2863
    :cond_14
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_1c
    nop

    .line 2864
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_22

    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1

    .line 2858
    .end local v0  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_24
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system may call isWallpaperBackupEligible"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .registers 5
    .param p1, "callingPackage"  # Ljava/lang/String;

    .line 2834
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public synthetic lambda$notifyWallpaperColorsChanged$0$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 5
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "which"  # I
    .param p3, "connector"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 387
    iget v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    .line 388
    return-void
.end method

.method public synthetic lambda$switchUser$4$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 5
    .param p1, "systemWallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "lockWallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1871
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1872
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1873
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1874
    return-void
.end method

.method public synthetic lambda$updateFallbackConnection$3$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 4
    .param p1, "fallbackConnection"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "connector"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1089
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez v0, :cond_9

    .line 1090
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1092
    :cond_9
    return-void
.end method

.method makeWallpaperIdLocked()I
    .registers 2

    .line 1053
    :goto_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 1054
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-eqz v0, :cond_b

    .line 1055
    return v0

    .line 1054
    :cond_b
    goto :goto_0
.end method

.method public mzGetCurrentUserId()I
    .registers 2

    .line 3511
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    return v0
.end method

.method public mzGetSyncObject()Ljava/lang/Object;
    .registers 2

    .line 3507
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public mzGetWallpaperMap()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation

    .line 3503
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public notifyWallpaperChange()V
    .registers 8

    .line 3518
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3519
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3521
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3522
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"  # I

    .line 1793
    const/16 v0, 0x226

    if-ne p1, v0, :cond_8

    .line 1794
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V

    goto :goto_11

    .line 1795
    :cond_8
    const/16 v0, 0x258

    if-ne p1, v0, :cond_11

    .line 1796
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    .line 1798
    :cond_11
    :goto_11
    return-void
.end method

.method onRemoveUser(I)V
    .registers 9
    .param p1, "userId"  # I

    .line 1837
    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-void

    .line 1839
    :cond_4
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1840
    .local v0, "wallpaperDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1841
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    .line 1842
    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_22

    aget-object v5, v2, v4

    .line 1843
    .local v5, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1842
    nop

    .end local v5  # "filename":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1845
    :cond_22
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1846
    monitor-exit v1

    .line 1847
    return-void

    .line 1846
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public onUnlockUser(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 1802
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1803
    :try_start_3
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_31

    .line 1804
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 1806
    nop

    .line 1807
    invoke-direct {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 1808
    .local v1, "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1809
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1816
    .end local v1  # "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_18
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1817
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1818
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 1830
    .local v1, "relabeler":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1833
    .end local v1  # "relabeler":Ljava/lang/Runnable;
    :cond_31
    monitor-exit v0

    .line 1834
    return-void

    .line 1833
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .registers 11
    .param p1, "cb"  # Landroid/app/IWallpaperManagerCallback;
    .param p2, "userId"  # I
    .param p3, "displayId"  # I

    .line 2283
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

    .line 2285
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2287
    :try_start_16
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2288
    .local v1, "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-nez v1, :cond_2b

    .line 2289
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 2290
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2292
    :cond_2b
    nop

    .line 2293
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 2294
    .local v2, "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    if-nez v2, :cond_3d

    .line 2295
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    .line 2296
    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2298
    :cond_3d
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2299
    nop

    .end local v1  # "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    .end local v2  # "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    monitor-exit v0

    .line 2300
    return-void

    .line 2299
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public setDimensionHints(IILjava/lang/String;I)V
    .registers 13
    .param p1, "width"  # I
    .param p2, "height"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;
    .param p4, "displayId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2059
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2060
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2061
    return-void

    .line 2065
    :cond_c
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2066
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2068
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2069
    :try_start_1f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2070
    .local v1, "userId":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 2071
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-lez p1, :cond_8b

    if-lez p2, :cond_8b

    .line 2075
    invoke-direct {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 2079
    invoke-direct {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v4

    .line 2080
    .local v4, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    if-ne p1, v5, :cond_3e

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-eq p2, v5, :cond_72

    .line 2081
    :cond_3e
    iput p1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 2082
    iput p2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 2083
    if-nez p4, :cond_47

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2084
    :cond_47
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v5, v1, :cond_4d

    monitor-exit v0

    return-void

    .line 2085
    :cond_4d
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v5, :cond_72

    .line 2086
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2087
    invoke-virtual {v5, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v5

    .line 2088
    .local v5, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-eqz v5, :cond_5c

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_5b
    .catchall {:try_start_1f .. :try_end_5b} :catchall_94

    goto :goto_5d

    :cond_5c
    const/4 v6, 0x0

    .line 2089
    .local v6, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_5d
    if-eqz v6, :cond_68

    .line 2091
    :try_start_5f
    invoke-interface {v6, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_62} :catch_63
    .catchall {:try_start_5f .. :try_end_62} :catchall_94

    .line 2093
    goto :goto_64

    .line 2092
    :catch_63
    move-exception v2

    .line 2094
    :goto_64
    :try_start_64
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_72

    .line 2095
    :cond_68
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v7, :cond_72

    if-eqz v5, :cond_72

    .line 2099
    iput-boolean v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDimensionsChanged:Z

    .line 2103
    .end local v1  # "userId":I
    .end local v3  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4  # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v5  # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    .end local v6  # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_72
    :goto_72
    monitor-exit v0

    .line 2104
    return-void

    .line 2076
    .restart local v1  # "userId":I
    .restart local v3  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find display with id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1  # "width":I
    .end local p2  # "height":I
    .end local p3  # "callingPackage":Ljava/lang/String;
    .end local p4  # "displayId":I
    throw v2

    .line 2072
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1  # "width":I
    .restart local p2  # "height":I
    .restart local p3  # "callingPackage":Ljava/lang/String;
    .restart local p4  # "displayId":I
    :cond_8b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "width and height must be > 0"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1  # "width":I
    .end local p2  # "height":I
    .end local p3  # "callingPackage":Ljava/lang/String;
    .end local p4  # "displayId":I
    throw v2

    .line 2103
    .end local v1  # "userId":I
    .end local v3  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1  # "width":I
    .restart local p2  # "height":I
    .restart local p3  # "callingPackage":Ljava/lang/String;
    .restart local p4  # "displayId":I
    :catchall_94
    move-exception v1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_64 .. :try_end_96} :catchall_94

    throw v1
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V
    .registers 12
    .param p1, "padding"  # Landroid/graphics/Rect;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "displayId"  # I

    .line 2146
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2148
    return-void

    .line 2150
    :cond_c
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2151
    :try_start_f
    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 2154
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2155
    .local v1, "userId":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 2156
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_71

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_71

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ltz v4, :cond_71

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v4, :cond_71

    .line 2160
    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v4

    .line 2161
    .local v4, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    .line 2162
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2163
    if-nez p3, :cond_44

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2164
    :cond_44
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v5, v1, :cond_4a

    monitor-exit v0

    return-void

    .line 2165
    :cond_4a
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v5, :cond_6f

    .line 2166
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2167
    invoke-virtual {v5, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v5

    .line 2168
    .local v5, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-eqz v5, :cond_59

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_58
    .catchall {:try_start_f .. :try_end_58} :catchall_a0

    goto :goto_5a

    :cond_59
    const/4 v6, 0x0

    .line 2169
    .local v6, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_5a
    if-eqz v6, :cond_65

    .line 2171
    :try_start_5c
    invoke-interface {v6, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_5f} :catch_60
    .catchall {:try_start_5c .. :try_end_5f} :catchall_a0

    .line 2173
    goto :goto_61

    .line 2172
    :catch_60
    move-exception v2

    .line 2174
    :goto_61
    :try_start_61
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_6f

    .line 2175
    :cond_65
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v7, :cond_6f

    if-eqz v5, :cond_6f

    .line 2179
    iput-boolean v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mPaddingChanged:Z

    .line 2183
    .end local v1  # "userId":I
    .end local v3  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4  # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v5  # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    .end local v6  # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_6f
    :goto_6f
    monitor-exit v0

    .line 2184
    return-void

    .line 2157
    .restart local v1  # "userId":I
    .restart local v3  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_71
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "padding must be positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1  # "padding":Landroid/graphics/Rect;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "displayId":I
    throw v2

    .line 2152
    .end local v1  # "userId":I
    .end local v3  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1  # "padding":Landroid/graphics/Rect;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "displayId":I
    :cond_89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1  # "padding":Landroid/graphics/Rect;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "displayId":I
    throw v1

    .line 2183
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1  # "padding":Landroid/graphics/Rect;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "displayId":I
    :catchall_a0
    move-exception v1

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_61 .. :try_end_a2} :catchall_a0

    throw v1
.end method

.method public setInAmbientMode(ZJ)V
    .registers 8
    .param p1, "inAmbientMode"  # Z
    .param p2, "animationDuration"  # J

    .line 2329
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2330
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    .line 2331
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2333
    .local v1, "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_2f

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_2f

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 2334
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2336
    :cond_25
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .local v2, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    goto :goto_30

    .line 2338
    .end local v2  # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_2f
    const/4 v2, 0x0

    .line 2340
    .end local v1  # "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v2  # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_39

    .line 2342
    if-eqz v2, :cond_38

    .line 2344
    :try_start_33
    invoke-interface {v2, p1, p2, p3}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZJ)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    .line 2347
    goto :goto_38

    .line 2345
    :catch_37
    move-exception v0

    .line 2349
    :cond_38
    :goto_38
    return-void

    .line 2340
    .end local v2  # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .registers 4
    .param p1, "cb"  # Landroid/app/IWallpaperManagerCallback;

    .line 2353
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2354
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2355
    :try_start_8
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 2356
    monitor-exit v0

    .line 2357
    const/4 v0, 0x1

    return v0

    .line 2356
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "cropHint"  # Landroid/graphics/Rect;
    .param p4, "allowBackup"  # Z
    .param p5, "extras"  # Landroid/os/Bundle;
    .param p6, "which"  # I
    .param p7, "completion"  # Landroid/app/IWallpaperManagerCallback;
    .param p8, "userId"  # I

    .line 2411
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

    .line 2413
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2415
    and-int/lit8 v0, p6, 0x3

    if-eqz v0, :cond_94

    .line 2421
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_92

    .line 2426
    :cond_28
    if-nez p3, :cond_32

    .line 2427
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p3, v0

    goto :goto_41

    .line 2429
    :cond_32
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_7b

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_7b

    move-object v0, p3

    .line 2436
    .end local p3  # "cropHint":Landroid/graphics/Rect;
    .local v0, "cropHint":Landroid/graphics/Rect;
    :goto_41
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2444
    const/4 p3, 0x1

    if-ne p6, p3, :cond_52

    :try_start_47
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_52

    .line 2448
    invoke-direct {p0, p8}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    .line 2451
    :cond_52
    invoke-direct {p0, p8, p6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 2452
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_78

    .line 2454
    .local v3, "ident":J
    :try_start_5a
    invoke-virtual {p0, p1, v2, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 2455
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v5, :cond_6d

    .line 2456
    iput-boolean p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2457
    iput p6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 2458
    iput-object p7, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 2459
    iget-object p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2460
    iput-boolean p4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z
    :try_end_6d
    .catchall {:try_start_5a .. :try_end_6d} :catchall_73

    .line 2462
    :cond_6d
    nop

    .line 2464
    :try_start_6e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    .line 2462
    return-object v5

    .line 2464
    .end local v5  # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_73
    move-exception p3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "cropHint":Landroid/graphics/Rect;
    .end local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1  # "name":Ljava/lang/String;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p4  # "allowBackup":Z
    .end local p5  # "extras":Landroid/os/Bundle;
    .end local p6  # "which":I
    .end local p7  # "completion":Landroid/app/IWallpaperManagerCallback;
    .end local p8  # "userId":I
    throw p3

    .line 2466
    .end local v2  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v3  # "ident":J
    .restart local v0  # "cropHint":Landroid/graphics/Rect;
    .restart local p0  # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p4  # "allowBackup":Z
    .restart local p5  # "extras":Landroid/os/Bundle;
    .restart local p6  # "which":I
    .restart local p7  # "completion":Landroid/app/IWallpaperManagerCallback;
    .restart local p8  # "userId":I
    :catchall_78
    move-exception p3

    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_6e .. :try_end_7a} :catchall_78

    throw p3

    .line 2432
    .end local v0  # "cropHint":Landroid/graphics/Rect;
    .restart local p3  # "cropHint":Landroid/graphics/Rect;
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid crop rect supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2422
    :cond_92
    :goto_92
    const/4 v0, 0x0

    return-object v0

    .line 2416
    :cond_94
    const-string v0, "Must specify a valid wallpaper category to set"

    .line 2417
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Must specify a valid wallpaper category to set"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a valid wallpaper category to set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 2547
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    .line 2548
    return-void
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 2539
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2540
    invoke-direct {p0, p1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    .line 2542
    :cond_f
    return-void
.end method

.method public settingsRestored()V
    .registers 12

    .line 3274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a2

    .line 3280
    const/4 v0, 0x0

    .line 3281
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v1, 0x0

    .line 3282
    .local v1, "success":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3283
    const/4 v3, 0x0

    :try_start_e
    invoke-direct {p0, v3, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 3284
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v4

    .line 3285
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3286
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3287
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_49

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 3288
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 3289
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 3294
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3296
    :cond_47
    const/4 v1, 0x1

    goto :goto_69

    .line 3300
    :cond_49
    const-string v4, ""

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 3302
    const/4 v1, 0x1

    goto :goto_5a

    .line 3305
    :cond_55
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    move v1, v4

    .line 3309
    :goto_5a
    if-eqz v1, :cond_69

    .line 3310
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3311
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3315
    :cond_69
    :goto_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_e .. :try_end_6a} :catchall_9f

    .line 3317
    if-nez v1, :cond_94

    .line 3318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    const-string v2, ""

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3320
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3323
    :cond_94
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3324
    :try_start_97
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 3325
    monitor-exit v4

    .line 3326
    return-void

    .line 3325
    :catchall_9c
    move-exception v2

    monitor-exit v4
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_9c

    throw v2

    .line 3315
    :catchall_9f
    move-exception v3

    :try_start_a0
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v3

    .line 3275
    .end local v0  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v1  # "success":Z
    :cond_a2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "settingsRestored() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startFlymeWallpaperService()Lcom/android/server/wallpaper/FlymeWallpaperService;
    .registers 4

    .line 3496
    new-instance v0, Lcom/android/server/wallpaper/FlymeWallpaperService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wallpaper/FlymeWallpaperService;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 3497
    .local v0, "mws":Lcom/android/server/wallpaper/FlymeWallpaperService;
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFlymeWallpaperService:Lcom/android/server/wallpaper/FlymeWallpaperService;

    .line 3498
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFlymeWallpaperService:Lcom/android/server/wallpaper/FlymeWallpaperService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/FlymeWallpaperService;->loadSettingsOfLockWallpaperLocked(I)V

    .line 3499
    return-object v0
.end method

.method stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1776
    if-eqz p1, :cond_e

    .line 1777
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v0, :cond_e

    .line 1778
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1779
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1782
    :cond_e
    return-void
.end method

.method stopObserversLocked(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 1785
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1786
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1787
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1788
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1789
    return-void
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .registers 8
    .param p1, "userId"  # I
    .param p2, "reply"  # Landroid/os/IRemoteCallback;

    .line 1852
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1853
    :try_start_3
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_9

    .line 1854
    monitor-exit v0

    return-void

    .line 1856
    :cond_9
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1857
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 1858
    .local v1, "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1859
    .local v2, "tmpLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_1c

    move-object v3, v1

    goto :goto_1d

    :cond_1c
    move-object v3, v2

    .line 1861
    .local v3, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_1d
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v4, :cond_2d

    .line 1862
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1863
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 1865
    :cond_2d
    invoke-virtual {p0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1866
    .end local v2  # "tmpLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_3e

    .line 1870
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$xeJGAwCI8tssclwKFf8jMsYdoKQ;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$xeJGAwCI8tssclwKFf8jMsYdoKQ;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1875
    return-void

    .line 1866
    .end local v1  # "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v3  # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .registers 18
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"  # Landroid/os/IRemoteCallback;

    .line 1878
    move-object v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1879
    const/4 v10, 0x0

    :try_start_7
    iput-boolean v10, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    .line 1880
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_10

    .line 1881
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    goto :goto_12

    :cond_10
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    :goto_12
    move-object v11, v0

    .line 1882
    .local v11, "cname":Landroid/content/ComponentName;
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v11

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_72

    if-nez v0, :cond_6e

    .line 1885
    const/4 v1, 0x0

    .line 1887
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    :try_start_22
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/high16 v2, 0x40000

    iget v3, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-interface {v0, v11, v2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2c} :catch_2e
    .catchall {:try_start_22 .. :try_end_2c} :catchall_72

    move-object v1, v0

    .line 1890
    goto :goto_30

    .line 1889
    :catch_2e
    move-exception v0

    move-object v0, v1

    .line 1892
    .end local v1  # "si":Landroid/content/pm/ServiceInfo;
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    :goto_30
    const/4 v12, 0x1

    if-nez v0, :cond_42

    .line 1893
    :try_start_33
    const-string v1, "WallpaperManagerService"

    const-string v2, "Failure starting previous wallpaper; clearing"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_72

    move-object/from16 v13, p2

    :try_start_3e
    invoke-virtual {p0, v10, v12, v1, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    goto :goto_70

    .line 1896
    :cond_42
    move-object/from16 v13, p2

    const-string v1, "WallpaperManagerService"

    const-string v2, "Wallpaper isn\'t direct boot aware; using fallback until unlocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    iget-object v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iput-object v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1901
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const-string/jumbo v3, "wallpaper_lock_orig"

    const-string/jumbo v4, "wallpaper_lock"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v14, v1

    .line 1903
    .local v14, "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {p0, v14, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1904
    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, v14

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1905
    iput-boolean v12, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    goto :goto_70

    .line 1882
    .end local v0  # "si":Landroid/content/pm/ServiceInfo;
    .end local v14  # "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_6e
    move-object/from16 v13, p2

    .line 1908
    .end local v11  # "cname":Landroid/content/ComponentName;
    :goto_70
    monitor-exit v9

    .line 1909
    return-void

    .line 1908
    :catchall_72
    move-exception v0

    move-object/from16 v13, p2

    :goto_75
    monitor-exit v9
    :try_end_76
    .catchall {:try_start_3e .. :try_end_76} :catchall_77

    throw v0

    :catchall_77
    move-exception v0

    goto :goto_75
.end method

.method systemReady()V
    .registers 7

    .line 1697
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initialize()V

    .line 1699
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1702
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1704
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1708
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1711
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1715
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1723
    :cond_2a
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1724
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1725
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1736
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1737
    .local v2, "shutdownFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1752
    :try_start_4f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    const-string v5, "WallpaperManagerService"

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_5d} :catch_5e

    .line 1761
    goto :goto_62

    .line 1759
    :catch_5e
    move-exception v3

    .line 1760
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1762
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_62
    return-void
.end method

.method public unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .registers 11
    .param p1, "cb"  # Landroid/app/IWallpaperManagerCallback;
    .param p2, "userId"  # I
    .param p3, "displayId"  # I

    .line 2305
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

    .line 2307
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2309
    :try_start_16
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2310
    .local v1, "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-eqz v1, :cond_2c

    .line 2311
    nop

    .line 2312
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 2313
    .local v2, "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    if-eqz v2, :cond_2c

    .line 2314
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2317
    .end local v1  # "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    .end local v2  # "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    :cond_2c
    monitor-exit v0

    .line 2318
    return-void

    .line 2317
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "extras"  # Landroid/os/Bundle;

    .line 2502
    if-nez p1, :cond_4

    const-string p1, ""

    .line 2504
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    iget v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 2505
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 2506
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 2507
    nop

    .line 2508
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    .line 2507
    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2512
    :cond_1f
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    const/high16 v3, 0x3c000000  # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2514
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 2515
    return-object v0

    .line 2517
    :cond_30
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2518
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v3

    iput v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2519
    if-eqz p3, :cond_41

    .line 2520
    const-string v3, "android.service.wallpaper.extra.ID"

    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2523
    :cond_41
    iput-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_43} :catch_44

    .line 2528
    return-object v2

    .line 2529
    .end local v1  # "dir":Ljava/io/File;
    .end local v2  # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_44
    move-exception v1

    .line 2530
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "WallpaperManagerService"

    const-string v3, "Error setting wallpaper"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2532
    .end local v1  # "e":Ljava/io/FileNotFoundException;
    return-object v0
.end method
