.class public final Lcom/android/server/display/DisplayManagerService;
.super Lcom/android/server/SystemService;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerService$AllowedDisplayModeObserver;,
        Lcom/android/server/display/DisplayManagerService$LocalService;,
        Lcom/android/server/display/DisplayManagerService$BinderService;,
        Lcom/android/server/display/DisplayManagerService$CallbackRecord;,
        Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;,
        Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;,
        Lcom/android/server/display/DisplayManagerService$Injector;,
        Lcom/android/server/display/DisplayManagerService$SyncRoot;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FORCE_WIFI_DISPLAY_ENABLE:Ljava/lang/String; = "persist.debug.wfd.enable"

.field private static final MSG_DELIVER_DISPLAY_EVENT:I = 0x3

.field private static final MSG_LOAD_BRIGHTNESS_CONFIGURATION:I = 0x6

.field private static final MSG_REGISTER_ADDITIONAL_DISPLAY_ADAPTERS:I = 0x2

.field private static final MSG_REGISTER_DEFAULT_DISPLAY_ADAPTERS:I = 0x1

.field private static final MSG_REQUEST_TRAVERSAL:I = 0x4

.field private static final MSG_UPDATE_VIEWPORT:I = 0x5

.field private static final PROP_DEFAULT_DISPLAY_TOP_INSET:Ljava/lang/String; = "persist.sys.displayinset.top"

.field private static final TAG:Ljava/lang/String; = "DisplayManagerService"

.field private static final WAIT_FOR_DEFAULT_DISPLAY_TIMEOUT:J = 0x2710L


# instance fields
.field public final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDefaultDisplayDefaultColorMode:I

.field private mDefaultDisplayTopInset:I

.field private final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

.field private final mDisplayAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

.field private mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

.field private final mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalDisplayBrightness:I

.field private mGlobalDisplayState:I

.field private final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field private final mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

.field private mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mLogicalDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

.field private final mMinimumBrightnessSpline:Landroid/util/Spline;

.field private mNextNonDefaultDisplayId:I

.field public mOnlyCore:Z

.field private mPendingTraversal:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field public mSafeMode:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mSingleDisplayDemoMode:Z

.field private mStableDisplaySize:Landroid/graphics/Point;

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private mSystemReady:Z

.field private final mTempCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTempDisplayStateWorkQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempViewports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private final mViewports:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSyncRoot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

.field private final mWideColorSpace:Landroid/graphics/ColorSpace;

.field private mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

.field private mWifiDisplayScanRequestCount:I

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 309
    new-instance v0, Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V

    .line 310
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 314
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 188
    new-instance v0, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$SyncRoot;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 206
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    .line 221
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 229
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    .line 233
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    .line 255
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 272
    new-instance v2, Lcom/android/server/display/PersistentDataStore;

    invoke-direct {v2}, Lcom/android/server/display/PersistentDataStore;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 279
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    .line 293
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    .line 296
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 315
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 316
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 317
    new-instance p2, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, p0, v2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 318
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 319
    new-instance p2, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    const/4 v2, 0x0

    invoke-direct {p2, p0, v2}, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    .line 320
    new-instance p2, Lcom/android/server/display/DisplayModeDirector;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-direct {p2, p1, v2}, Lcom/android/server/display/DisplayModeDirector;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    .line 321
    const/4 p1, 0x0

    const-string/jumbo p2, "persist.demo.singledisplay"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    .line 322
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 323
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    .line 325
    const-string/jumbo v2, "persist.sys.displayinset.top"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    .line 326
    const v1, 0x1070051

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    .line 328
    const v2, 0x1070052

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p2

    .line 330
    new-instance v2, Landroid/hardware/display/Curve;

    invoke-direct {v2, v1, p2}, Landroid/hardware/display/Curve;-><init>([F[F)V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    .line 331
    invoke-static {v1, p2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    .line 333
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 334
    invoke-virtual {p2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result p2

    iput p2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    .line 335
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 336
    invoke-static {}, Landroid/view/SurfaceControl;->getCompositionColorSpaces()[Landroid/graphics/ColorSpace;

    move-result-object p2

    .line 337
    aget-object p2, p2, v0

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    .line 339
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 340
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->loadBrightnessConfiguration()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;
    .registers 3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayManagerService;I)[I
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayIdsInternal(I)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayManagerService;II)Z
    .registers 3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayManagerService;)Landroid/graphics/Point;
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getStableDisplaySizeInternal()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerDefaultDisplayAdapters()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;I)V
    .registers 3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanInternal(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanInternal(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->connectWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->disconnectWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->forgetWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->pauseWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->resumeWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerAdditionalDisplayAdapters()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->requestColorModeInternal(II)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/display/DisplayManagerService;)Landroid/media/projection/IMediaProjectionManager;
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I
    .registers 12

    .line 154
    invoke-direct/range {p0 .. p11}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayInternal(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    .registers 5

    .line 154
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->releaseVirtualDisplayInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Z)V
    .registers 3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setVirtualDisplayStateInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayEvent(II)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 4

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForUserInternal(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/display/DisplayManagerService;)Landroid/os/UserManager;
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/PersistentDataStore;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(II)V

    return-void
.end method

.method static synthetic access$4402(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->screenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V
    .registers 3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V
    .registers 3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getNonOverrideDisplayInfoInternal(ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/display/DisplayManagerService;IZFIZ)V
    .registers 6

    .line 154
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/DisplayManagerService;->setDisplayPropertiesInternal(IZFIZ)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/display/DisplayManagerService;III)V
    .registers 4

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->setDisplayOffsetsInternal(III)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/display/DisplayManagerService;IZ)V
    .registers 3

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayScalingDisabledInternal(IZ)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;)V
    .registers 2

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setDisplayAccessUIDsInternal(Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->onAllowedDisplayModesChangedInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    return-object p0
.end method

.method private addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .registers 10

    .line 992
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 993
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    move v1, v3

    .line 995
    :goto_e
    const-string v4, "DisplayManagerService"

    if-eqz v1, :cond_2f

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring attempt to add a second default display: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    move v1, v3

    .line 1000
    :cond_2f
    const/4 v3, 0x0

    if-nez v1, :cond_4b

    iget-boolean v5, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    if-eqz v5, :cond_4b

    .line 1001
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not creating a logical display for a secondary display  because single display demo mode is enabled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return-object v3

    .line 1006
    :cond_4b
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->assignDisplayIdLocked(Z)I

    move-result v5

    .line 1007
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayManagerService;->assignLayerStackLocked(I)I

    move-result v6

    .line 1009
    new-instance v7, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {v7, v5, v6, p1}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;)V

    .line 1010
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 1011
    invoke-virtual {v7}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v6

    if-nez v6, :cond_78

    .line 1013
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring display device because the logical display created from it was not considered valid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return-object v3

    .line 1018
    :cond_78
    invoke-direct {p0, v7, p1}, Lcom/android/server/display/DisplayManagerService;->configureColorModeLocked(Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 1019
    if-eqz v1, :cond_83

    .line 1020
    invoke-direct {p0, v7}, Lcom/android/server/display/DisplayManagerService;->recordStableDisplayStatsIfNeededLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1021
    invoke-direct {p0, v7}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1024
    :cond_83
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p1, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1027
    if-eqz v1, :cond_8f

    .line 1028
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1031
    :cond_8f
    invoke-direct {p0, v5, v2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1032
    return-object v7
.end method

.method private applyGlobalDisplayStateLocked(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 969
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 970
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 971
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDevice;

    .line 972
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v2

    .line 973
    if-eqz v2, :cond_1a

    .line 974
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 977
    :cond_1d
    return-void
.end method

.method private assignDisplayIdLocked(Z)I
    .registers 3

    .line 1036
    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    :goto_a
    return p1
.end method

.method private assignLayerStackLocked(I)I
    .registers 2

    .line 1042
    return p1
.end method

.method private clearViewportsLocked()V
    .registers 2

    .line 1353
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1354
    return-void
.end method

.method private configureColorModeLocked(Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V
    .registers 5

    .line 1046
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    if-ne v0, p2, :cond_20

    .line 1047
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore;->getColorMode(Lcom/android/server/display/DisplayDevice;)I

    move-result v0

    .line 1048
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 1049
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p2

    iget p2, p2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1c

    .line 1051
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    goto :goto_1d

    .line 1053
    :cond_1c
    const/4 v0, 0x0

    .line 1056
    :cond_1d
    :goto_1d
    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorModeLocked(I)V

    .line 1058
    :cond_20
    return-void
.end method

.method private configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;)V
    .registers 9

    .line 1357
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1358
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    .line 1362
    :goto_f
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    .line 1363
    if-nez v1, :cond_2a

    .line 1364
    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1367
    const/4 v1, 0x0

    move-object v4, v1

    .line 1369
    :cond_1f
    if-nez v4, :cond_2a

    .line 1370
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 1375
    :cond_2a
    const-string v1, "DisplayManagerService"

    if-nez v4, :cond_47

    .line 1377
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing logical display to use for physical display device: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1377
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    return-void

    .line 1381
    :cond_47
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-ne v5, v3, :cond_4c

    move v2, v3

    :cond_4c
    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/display/LogicalDisplay;->configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V

    .line 1384
    iget p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr p1, v3

    const/4 v2, 0x3

    const/4 v5, 0x2

    if-eqz p1, :cond_58

    .line 1385
    move v2, v3

    goto :goto_6b

    .line 1386
    :cond_58
    iget p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    if-ne p1, v5, :cond_5e

    .line 1387
    move v2, v5

    goto :goto_6b

    .line 1388
    :cond_5e
    iget p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    if-ne p1, v2, :cond_75

    iget-object p1, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 1389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_75

    .line 1390
    nop

    .line 1396
    :goto_6b
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-direct {p0, v2, p1, p2, v0}, Lcom/android/server/display/DisplayManagerService;->populateViewportLocked(IILcom/android/server/display/DisplayDevice;Ljava/lang/String;)V

    .line 1397
    return-void

    .line 1392
    :cond_75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Display "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not support input device matching."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    return-void
.end method

.method private connectWifiDisplayInternal(Ljava/lang/String;)V
    .registers 4

    .line 681
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 682
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 683
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Ljava/lang/String;)V

    .line 685
    :cond_c
    monitor-exit v0

    .line 686
    return-void

    .line 685
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method private createVirtualDisplayInternal(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I
    .registers 28

    .line 751
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 752
    :try_start_5
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v3, -0x1

    if-nez v2, :cond_13

    .line 753
    const-string v0, "DisplayManagerService"

    const-string v2, "Rejecting request to create private virtual display because the virtual display adapter is not available."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    monitor-exit v1

    return v3

    .line 758
    :cond_13
    iget-object v4, v0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/display/VirtualDisplayAdapter;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    .line 761
    if-nez v2, :cond_33

    .line 762
    monitor-exit v1

    return v3

    .line 765
    :cond_33
    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 766
    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    .line 767
    if-eqz v4, :cond_42

    .line 768
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    monitor-exit v1

    return v0

    .line 772
    :cond_42
    const-string v4, "DisplayManagerService"

    const-string v5, "Rejecting request to create virtual display because the logical display was not created."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v4, v0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-interface/range {p1 .. p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    .line 775
    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 776
    monitor-exit v1

    .line 777
    return v3

    .line 776
    :catchall_57
    move-exception v0

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_57

    throw v0
.end method

.method private deliverDisplayEvent(II)V
    .registers 9

    .line 1481
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1482
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1483
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1484
    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_22

    .line 1485
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1487
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_3a

    .line 1490
    nop

    :goto_24
    if-ge v2, v1, :cond_34

    .line 1491
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(II)V

    .line 1490
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 1493
    :cond_34
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1494
    return-void

    .line 1487
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private disconnectWifiDisplayInternal()V
    .registers 3

    .line 705
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 706
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 707
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 709
    :cond_c
    monitor-exit v0

    .line 710
    return-void

    .line 709
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 11

    .line 1509
    const-string v0, "DISPLAY MANAGER (dumpsys display)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1512
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOnlyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSafeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingTraversal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mGlobalDisplayState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextNonDefaultDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mViewports="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDefaultDisplayDefaultColorMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSingleDisplayDemoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWifiDisplayScanRequestCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStableDisplaySize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMinimumBrightnessCurve="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1525
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1527
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display Adapters: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1529
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_153

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayAdapter;

    .line 1530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {v3, v1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1532
    goto :goto_12b

    .line 1534
    :cond_153
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display Devices: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_176
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayDevice;

    .line 1537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {v3, v1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1539
    goto :goto_176

    .line 1541
    :cond_19e
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1542
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logical Displays: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    const/4 v3, 0x0

    move v4, v3

    :goto_1bd
    if-ge v4, v2, :cond_1ec

    .line 1545
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1546
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LogicalDisplay;

    .line 1547
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Display "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {v6, v1}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1544
    add-int/lit8 v4, v4, 0x1

    goto :goto_1bd

    .line 1551
    :cond_1ec
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1552
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector;->dump(Ljava/io/PrintWriter;)V

    .line 1554
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1555
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callbacks: size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    nop

    :goto_212
    if-ge v3, v1, :cond_247

    .line 1558
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": mPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mWifiDisplayScanRequested="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    add-int/lit8 v3, v3, 0x1

    goto :goto_212

    .line 1563
    :cond_247
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    if-eqz v1, :cond_250

    .line 1564
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V

    .line 1567
    :cond_250
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1568
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->dump(Ljava/io/PrintWriter;)V

    .line 1569
    monitor-exit v0

    .line 1570
    return-void

    .line 1569
    :catchall_25a
    move-exception p1

    monitor-exit v0
    :try_end_25c
    .catchall {:try_start_8 .. :try_end_25c} :catchall_25a

    throw p1
.end method

.method private findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .registers 6

    .line 1445
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1446
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 1447
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 1448
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v3

    if-ne v3, p1, :cond_18

    .line 1449
    return-object v2

    .line 1446
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1452
    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method private forgetWifiDisplayInternal(Ljava/lang/String;)V
    .registers 4

    .line 721
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 722
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 723
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestForgetLocked(Ljava/lang/String;)V

    .line 725
    :cond_c
    monitor-exit v0

    .line 726
    return-void

    .line 725
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method private getDisplayIdsInternal(I)[I
    .registers 10

    .line 587
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 588
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 589
    new-array v2, v1, [I

    .line 590
    nop

    .line 591
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_f
    if-ge v4, v1, :cond_31

    .line 592
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LogicalDisplay;

    .line 593
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v6

    .line 594
    invoke-virtual {v6, p1}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 595
    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v2, v5

    move v5, v6

    .line 591
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 598
    :cond_31
    if-eq v5, v1, :cond_37

    .line 599
    invoke-static {v2, v3, v5}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    .line 601
    :cond_37
    monitor-exit v0

    return-object v2

    .line 602
    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p1
.end method

.method private getDisplayInfoInternal(II)Landroid/view/DisplayInfo;
    .registers 6

    .line 573
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 574
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 575
    if-eqz v1, :cond_1f

    .line 576
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 577
    invoke-virtual {v1, p2}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 578
    invoke-direct {p0, p2, p1}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 579
    :cond_1d
    monitor-exit v0

    return-object v1

    .line 582
    :cond_1f
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 583
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method

.method private getDisplayToken(I)Landroid/os/IBinder;
    .registers 4

    .line 1276
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1277
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 1278
    if-eqz p1, :cond_19

    .line 1279
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 1280
    if-eqz p1, :cond_19

    .line 1281
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1284
    :cond_19
    monitor-exit v0

    .line 1286
    const/4 p1, 0x0

    return-object p1

    .line 1284
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5

    .line 1573
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1574
    new-array v1, v0, [F

    .line 1575
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_14

    .line 1576
    const/high16 v3, 0x7fc00000  # Float.NaN

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 1575
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1578
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1579
    return-object v1
.end method

.method private getNonOverrideDisplayInfoInternal(ILandroid/view/DisplayInfo;)V
    .registers 5

    .line 502
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 503
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 504
    if-eqz p1, :cond_10

    .line 505
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 507
    :cond_10
    monitor-exit v0

    .line 508
    return-void

    .line 507
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method private getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .registers 2

    .line 1497
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_10

    .line 1498
    const-string v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1499
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 1501
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object v0
.end method

.method private getStableDisplaySizeInternal()Landroid/graphics/Point;
    .registers 5

    .line 464
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 465
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 466
    :try_start_8
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-lez v2, :cond_1f

    .line 467
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 469
    :cond_1f
    monitor-exit v1

    .line 470
    return-object v0

    .line 469
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 1505
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method private getViewportLocked(ILjava/lang/String;)Landroid/hardware/display/DisplayViewport;
    .registers 7

    .line 1405
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_25

    const/4 v1, 0x2

    if-eq p1, v1, :cond_25

    if-eq p1, v0, :cond_25

    .line 1407
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot call getViewportByTypeLocked for type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    invoke-static {p1}, Landroid/hardware/display/DisplayViewport;->typeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1407
    const-string p2, "DisplayManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/4 p1, 0x0

    return-object p1

    .line 1415
    :cond_25
    if-eq p1, v0, :cond_29

    .line 1416
    const-string p2, ""

    .line 1420
    :cond_29
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1421
    const/4 v1, 0x0

    :goto_30
    if-ge v1, v0, :cond_4a

    .line 1422
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    .line 1423
    iget v3, v2, Landroid/hardware/display/DisplayViewport;->type:I

    if-ne v3, p1, :cond_47

    iget-object v3, v2, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1424
    return-object v2

    .line 1421
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1429
    :cond_4a
    new-instance v0, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v0}, Landroid/hardware/display/DisplayViewport;-><init>()V

    .line 1430
    iput p1, v0, Landroid/hardware/display/DisplayViewport;->type:I

    .line 1431
    iput-object p2, v0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 1432
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    return-object v0
.end method

.method private getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;
    .registers 3

    .line 729
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 730
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_f

    .line 731
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 733
    :cond_f
    new-instance v1, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct {v1}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    monitor-exit v0

    return-object v1

    .line 734
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V
    .registers 3

    .line 886
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 887
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 888
    monitor-exit v0

    .line 889
    return-void

    .line 888
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method private handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 6

    .line 892
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 893
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "DisplayManagerService"

    if-eqz v1, :cond_23

    .line 894
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to add already added display device: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return-void

    .line 898
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display device added: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iput-object v0, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 901
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 903
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object p1

    .line 904
    if-eqz p1, :cond_4a

    .line 905
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 907
    :cond_4a
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 908
    return-void
.end method

.method private handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V
    .registers 8

    .line 911
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 912
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 913
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 914
    const-string p1, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to change non-existent display device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    monitor-exit v0

    return-void

    .line 918
    :cond_27
    iget-object v2, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayDeviceInfo;->diff(Lcom/android/server/display/DisplayDeviceInfo;)I

    move-result v2

    .line 919
    const/4 v3, 0x1

    if-ne v2, v3, :cond_57

    .line 920
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display device changed state: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 921
    invoke-static {v5}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 920
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 922
    :cond_57
    if-eqz v2, :cond_6f

    .line 923
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display device changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_98

    .line 925
    :cond_6f
    :goto_6f
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_87

    .line 927
    :try_start_73
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    invoke-virtual {v2, p1, v3}, Lcom/android/server/display/PersistentDataStore;->setColorMode(Lcom/android/server/display/DisplayDevice;I)Z
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_80

    .line 929
    :try_start_7a
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 930
    goto :goto_87

    .line 929
    :catchall_80
    move-exception p1

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    throw p1

    .line 932
    :cond_87
    :goto_87
    iput-object v1, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 934
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->applyPendingDisplayDeviceInfoChangesLocked()V

    .line 935
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    move-result p1

    if-eqz p1, :cond_96

    .line 936
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 938
    :cond_96
    monitor-exit v0

    .line 939
    return-void

    .line 938
    :catchall_98
    move-exception p1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_7a .. :try_end_9a} :catchall_98

    throw p1
.end method

.method private handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V
    .registers 3

    .line 942
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 943
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 944
    monitor-exit v0

    .line 945
    return-void

    .line 944
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method private handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 6

    .line 948
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 949
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "DisplayManagerService"

    if-nez v1, :cond_23

    .line 950
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to remove non-existent display device: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    return-void

    .line 954
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display device removed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iput-object v0, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 957
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    .line 958
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 959
    return-void
.end method

.method private handleLogicalDisplayChanged(ILcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 962
    if-nez p1, :cond_5

    .line 963
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 965
    :cond_5
    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 966
    return-void
.end method

.method private isBrightnessConfigurationTooDark(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 8

    .line 1132
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object p1

    .line 1133
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [F

    .line 1134
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [F

    .line 1135
    const/4 v1, 0x0

    move v2, v1

    :goto_e
    array-length v3, v0

    if-ge v2, v3, :cond_24

    .line 1136
    aget v3, p1, v2

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_21

    .line 1137
    const/4 p1, 0x1

    return p1

    .line 1135
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1140
    :cond_24
    return v1
.end method

.method private isUidPresentOnDisplayInternal(II)Z
    .registers 5

    .line 1268
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1269
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/IntArray;

    .line 1270
    if-eqz p2, :cond_16

    invoke-virtual {p2, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    monitor-exit v0

    return p1

    .line 1271
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private loadBrightnessConfiguration()V
    .registers 4

    .line 1144
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1145
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v1

    .line 1146
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 1147
    invoke-virtual {v2, v1}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v1

    .line 1148
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1149
    monitor-exit v0

    .line 1150
    return-void

    .line 1149
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private loadStableDisplayValuesLocked()V
    .registers 4

    .line 446
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 447
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_18

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_18

    .line 450
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_33

    .line 452
    :cond_18
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 453
    const v1, 0x10e00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 455
    const v2, 0x10e00b1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 457
    if-lez v1, :cond_33

    if-lez v0, :cond_33

    .line 458
    invoke-direct {p0, v1, v0}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    .line 461
    :cond_33
    :goto_33
    return-void
.end method

.method private onAllowedDisplayModesChangedInternal()V
    .registers 9

    .line 1331
    nop

    .line 1332
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1333
    :try_start_4
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1334
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_d
    if-ge v3, v1, :cond_34

    .line 1335
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    .line 1336
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1337
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v7, v6}, Lcom/android/server/display/DisplayModeDirector;->getAllowedModes(I)[I

    move-result-object v6

    .line 1341
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getAllowedDisplayModesLocked()[I

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-nez v7, :cond_31

    .line 1342
    invoke-virtual {v5, v6}, Lcom/android/server/display/LogicalDisplay;->setAllowedDisplayModesLocked([I)V

    .line 1343
    const/4 v4, 0x1

    .line 1334
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1346
    :cond_34
    if-eqz v4, :cond_39

    .line 1347
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1349
    :cond_39
    monitor-exit v0

    .line 1350
    return-void

    .line 1349
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 5

    .line 626
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 627
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 628
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 629
    monitor-exit v0

    .line 630
    return-void

    .line 629
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method private pauseWifiDisplayInternal()V
    .registers 3

    .line 689
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 690
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 691
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestPauseLocked()V

    .line 693
    :cond_c
    monitor-exit v0

    .line 694
    return-void

    .line 693
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 1178
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->clearViewportsLocked()V

    .line 1181
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1182
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1d

    .line 1183
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDevice;

    .line 1184
    invoke-direct {p0, p1, v2}, Lcom/android/server/display/DisplayManagerService;->configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;)V

    .line 1185
    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayDevice;->performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 1182
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1189
    :cond_1d
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz p1, :cond_27

    .line 1190
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 1192
    :cond_27
    return-void
.end method

.method private populateViewportLocked(IILcom/android/server/display/DisplayDevice;Ljava/lang/String;)V
    .registers 5

    .line 1438
    invoke-direct {p0, p1, p4}, Lcom/android/server/display/DisplayManagerService;->getViewportLocked(ILjava/lang/String;)Landroid/hardware/display/DisplayViewport;

    move-result-object p1

    .line 1439
    invoke-virtual {p3, p1}, Lcom/android/server/display/DisplayDevice;->populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V

    .line 1440
    const/4 p3, 0x1

    iput-boolean p3, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 1441
    iput p2, p1, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 1442
    return-void
.end method

.method private recordStableDisplayStatsIfNeededLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 1064
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-gtz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_1b

    .line 1065
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 1066
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    .line 1068
    :cond_1b
    return-void
.end method

.method private recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 1074
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1f

    if-nez p1, :cond_7

    goto :goto_1f

    .line 1077
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 1078
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    if-ne p1, v0, :cond_12

    .line 1079
    return-void

    .line 1081
    :cond_12
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    .line 1082
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "persist.sys.displayinset.top"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    return-void

    .line 1075
    :cond_1f
    :goto_1f
    return-void
.end method

.method private registerAdditionalDisplayAdapters()V
    .registers 3

    .line 846
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 847
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->shouldRegisterNonEssentialDisplayAdaptersLocked()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 848
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerOverlayDisplayAdapterLocked()V

    .line 849
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerWifiDisplayAdapterLocked()V

    .line 851
    :cond_f
    monitor-exit v0

    .line 852
    return-void

    .line 851
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;I)V
    .registers 6

    .line 606
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 607
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_27

    .line 612
    new-instance v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;-><init>(Lcom/android/server/display/DisplayManagerService;ILandroid/hardware/display/IDisplayManagerCallback;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2f

    .line 614
    :try_start_10
    invoke-interface {p1}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 615
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_20
    .catchall {:try_start_10 .. :try_end_18} :catchall_2f

    .line 619
    nop

    .line 621
    :try_start_19
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 622
    monitor-exit v0

    .line 623
    return-void

    .line 616
    :catch_20
    move-exception p1

    .line 618
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 608
    :cond_27
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "The calling process has already registered an IDisplayManagerCallback."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 622
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method private registerDefaultDisplayAdapters()V
    .registers 7

    .line 827
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 829
    :try_start_3
    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 837
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/display/DisplayManagerService$Injector;->getVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)Lcom/android/server/display/VirtualDisplayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 839
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-eqz v1, :cond_2c

    .line 840
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 842
    :cond_2c
    monitor-exit v0

    .line 843
    return-void

    .line 842
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    .registers 3

    .line 881
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 883
    return-void
.end method

.method private registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 3

    .line 476
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    return-void
.end method

.method private registerOverlayDisplayAdapterLocked()V
    .registers 8

    .line 855
    new-instance v6, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/OverlayDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V

    invoke-direct {p0, v6}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 857
    return-void
.end method

.method private registerWifiDisplayAdapterLocked()V
    .registers 9

    .line 860
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, -0x1

    .line 862
    const-string/jumbo v1, "persist.debug.wfd.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 863
    :cond_1a
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 866
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 868
    :cond_31
    return-void
.end method

.method private releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    .registers 4

    .line 802
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 803
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 804
    monitor-exit v0

    return-void

    .line 807
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 808
    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 809
    if-eqz p1, :cond_14

    .line 810
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 812
    :cond_14
    monitor-exit v0

    .line 813
    return-void

    .line 812
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 713
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 714
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 715
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_c
    monitor-exit v0

    .line 718
    return-void

    .line 717
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method private requestColorModeInternal(II)V
    .registers 5

    .line 738
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 739
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 740
    if-eqz p1, :cond_1a

    .line 741
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getRequestedColorModeLocked()I

    move-result v1

    if-eq v1, p2, :cond_1a

    .line 742
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorModeLocked(I)V

    .line 743
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 745
    :cond_1a
    monitor-exit v0

    .line 746
    return-void

    .line 745
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private requestGlobalDisplayStateInternal(II)V
    .registers 9

    .line 528
    if-nez p1, :cond_3

    .line 529
    const/4 p1, 0x2

    .line 531
    :cond_3
    const/16 v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_b

    .line 532
    move p2, v1

    goto :goto_12

    .line 533
    :cond_b
    if-gez p2, :cond_f

    .line 534
    const/4 p2, -0x1

    goto :goto_12

    .line 535
    :cond_f
    if-le p2, v0, :cond_12

    .line 536
    move p2, v0

    .line 539
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 544
    :try_start_15
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_80

    .line 545
    :try_start_18
    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    if-ne v3, p1, :cond_28

    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    if-ne v3, p2, :cond_28

    .line 547
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_7d

    .line 567
    :try_start_21
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_87

    .line 547
    return-void

    .line 550
    :cond_28
    :try_start_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGlobalDisplayState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", brightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 550
    const-wide/32 v4, 0x20000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 553
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    .line 554
    iput p2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    .line 555
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->applyGlobalDisplayStateLocked(Ljava/util/List;)V

    .line 556
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_28 .. :try_end_5b} :catchall_7d

    .line 562
    nop

    :goto_5c
    :try_start_5c
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_72

    .line 563
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 565
    :cond_72
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_75
    .catchall {:try_start_5c .. :try_end_75} :catchall_80

    .line 567
    :try_start_75
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 568
    nop

    .line 569
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_87

    .line 570
    return-void

    .line 556
    :catchall_7d
    move-exception p1

    :try_start_7e
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw p1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    .line 567
    :catchall_80
    move-exception p1

    :try_start_81
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    throw p1

    .line 569
    :catchall_87
    move-exception p1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_81 .. :try_end_89} :catchall_87

    throw p1
.end method

.method private resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V
    .registers 7

    .line 782
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 783
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 784
    monitor-exit v0

    return-void

    .line 787
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter;->resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V

    .line 788
    monitor-exit v0

    .line 789
    return-void

    .line 788
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method private resumeWifiDisplayInternal()V
    .registers 3

    .line 697
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 698
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 699
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestResumeLocked()V

    .line 701
    :cond_c
    monitor-exit v0

    .line 702
    return-void

    .line 701
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private scheduleTraversalLocked(Z)V
    .registers 3

    .line 1463
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_13

    .line 1464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 1465
    if-nez p1, :cond_13

    .line 1466
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 1469
    :cond_13
    return-void
.end method

.method private screenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 8

    .line 1290
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1291
    if-nez v0, :cond_8

    .line 1292
    const/4 p1, 0x0

    return-object p1

    .line 1294
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->screenshotToBufferWithSecureLayersUnsafe(Landroid/os/IBinder;Landroid/graphics/Rect;IIZI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object p1

    return-object p1
.end method

.method private sendDisplayEventLocked(II)V
    .registers 5

    .line 1456
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1457
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1458
    return-void
.end method

.method private setBrightnessConfigurationForUserInternal(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 7

    .line 1106
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1107
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 1108
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1110
    :try_start_e
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/display/PersistentDataStore;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_24

    .line 1113
    :try_start_13
    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p3}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1114
    nop

    .line 1115
    iget p3, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-ne p2, p3, :cond_22

    .line 1116
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1118
    :cond_22
    monitor-exit v1

    .line 1119
    return-void

    .line 1113
    :catchall_24
    move-exception p1

    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    throw p1

    .line 1118
    :catchall_2b
    move-exception p1

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method private setDisplayAccessUIDsInternal(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;)V"
        }
    .end annotation

    .line 1257
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1258
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1259
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_22

    .line 1260
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1261
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/IntArray;

    .line 1260
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1259
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1263
    :cond_22
    monitor-exit v0

    .line 1264
    return-void

    .line 1263
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method private setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V
    .registers 5

    .line 487
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 488
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 489
    if-eqz v1, :cond_1a

    .line 490
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 491
    invoke-direct {p0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChanged(ILcom/android/server/display/LogicalDisplay;)V

    .line 492
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 495
    :cond_1a
    monitor-exit v0

    .line 496
    return-void

    .line 495
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private setDisplayOffsetsInternal(III)V
    .registers 6

    .line 1222
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1223
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 1224
    if-nez p1, :cond_f

    .line 1225
    monitor-exit v0

    return-void

    .line 1227
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetXLocked()I

    move-result v1

    if-ne v1, p2, :cond_1b

    .line 1228
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetYLocked()I

    move-result v1

    if-eq v1, p3, :cond_22

    .line 1233
    :cond_1b
    invoke-virtual {p1, p2, p3}, Lcom/android/server/display/LogicalDisplay;->setDisplayOffsetsLocked(II)V

    .line 1234
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1236
    :cond_22
    monitor-exit v0

    .line 1237
    return-void

    .line 1236
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method private setDisplayPropertiesInternal(IZFIZ)V
    .registers 9

    .line 1196
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1197
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1198
    if-nez v1, :cond_f

    .line 1199
    monitor-exit v0

    return-void

    .line 1201
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v2

    if-eq v2, p2, :cond_1b

    .line 1207
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setHasContentLocked(Z)V

    .line 1208
    invoke-direct {p0, p5}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1210
    :cond_1b
    if-nez p4, :cond_2a

    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    if-eqz p2, :cond_2a

    .line 1213
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)I

    move-result p4

    .line 1216
    :cond_2a
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {p2}, Lcom/android/server/display/DisplayModeDirector;->getAppRequestObserver()Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppRequestedMode(II)V

    .line 1218
    monitor-exit v0

    .line 1219
    return-void

    .line 1218
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p1
.end method

.method private setDisplayScalingDisabledInternal(IZ)V
    .registers 5

    .line 1240
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1241
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 1242
    if-nez p1, :cond_f

    .line 1243
    monitor-exit v0

    return-void

    .line 1245
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isDisplayScalingDisabled()Z

    move-result v1

    if-eq v1, p2, :cond_1c

    .line 1249
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayScalingDisabledLocked(Z)V

    .line 1250
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1252
    :cond_1c
    monitor-exit v0

    .line 1253
    return-void

    .line 1252
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method private setStableDisplaySizeLocked(II)V
    .registers 4

    .line 1086
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 1088
    :try_start_7
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Lcom/android/server/display/PersistentDataStore;->setStableDisplaySize(Landroid/graphics/Point;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_15

    .line 1090
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1091
    nop

    .line 1092
    return-void

    .line 1090
    :catchall_15
    move-exception p1

    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    throw p1
.end method

.method private setVirtualDisplayStateInternal(Landroid/os/IBinder;Z)V
    .registers 5

    .line 816
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 817
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 818
    monitor-exit v0

    return-void

    .line 821
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplayStateLocked(Landroid/os/IBinder;Z)V

    .line 822
    monitor-exit v0

    .line 823
    return-void

    .line 822
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method private setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 5

    .line 792
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 793
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 794
    monitor-exit v0

    return-void

    .line 797
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 798
    monitor-exit v0

    .line 799
    return-void

    .line 798
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method private shouldRegisterNonEssentialDisplayAdaptersLocked()Z
    .registers 2

    .line 877
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private startWifiDisplayScanInternal(I)V
    .registers 4

    .line 633
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 634
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 635
    if-eqz p1, :cond_12

    .line 639
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 640
    monitor-exit v0

    .line 641
    return-void

    .line 636
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 640
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 3

    .line 644
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-nez v0, :cond_16

    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 646
    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez p1, :cond_16

    .line 647
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p1, :cond_16

    .line 648
    invoke-virtual {p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestStartScanLocked()V

    .line 652
    :cond_16
    return-void
.end method

.method private stopWifiDisplayScanInternal(I)V
    .registers 4

    .line 655
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 656
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 657
    if-eqz p1, :cond_12

    .line 661
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 662
    monitor-exit v0

    .line 663
    return-void

    .line 658
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 662
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 4

    .line 666
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-eqz v0, :cond_35

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 668
    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez p1, :cond_17

    .line 669
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p1, :cond_35

    .line 670
    invoke-virtual {p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestStopScanLocked()V

    goto :goto_35

    .line 672
    :cond_17
    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-gez p1, :cond_35

    .line 673
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiDisplayScanRequestCount became negative: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DisplayManagerService"

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    .line 678
    :cond_35
    :goto_35
    return-void
.end method

.method private unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 3

    .line 482
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 483
    return-void
.end method

.method private updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;
    .registers 4

    .line 982
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 983
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_13

    .line 984
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(II)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1

    .line 986
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateLogicalDisplaysLocked()Z
    .registers 8

    .line 1156
    nop

    .line 1157
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_4c

    .line 1158
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1159
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1161
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1162
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 1163
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3a

    .line 1164
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1165
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1166
    move v1, v5

    goto :goto_4a

    .line 1167
    :cond_3a
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 1168
    invoke-direct {p0, v0, v3}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChanged(ILcom/android/server/display/LogicalDisplay;)V

    .line 1169
    move v1, v5

    .line 1171
    :cond_4a
    :goto_4a
    move v0, v2

    goto :goto_8

    .line 1172
    :cond_4c
    return v1
.end method


# virtual methods
.method getDisplayDeviceInfoInternal(I)Lcom/android/server/display/DisplayDeviceInfo;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1605
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1606
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 1607
    if-eqz p1, :cond_17

    .line 1608
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 1609
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1611
    :cond_17
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 1612
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method getDisplayHandler()Landroid/os/Handler;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object v0
.end method

.method getDisplayedContentSampleInternal(IJJ)Landroid/hardware/display/DisplayedContentSample;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1323
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p1

    .line 1324
    if-nez p1, :cond_8

    .line 1325
    const/4 p1, 0x0

    return-object p1

    .line 1327
    :cond_8
    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object p1

    return-object p1
.end method

.method getDisplayedContentSamplingAttributesInternal(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1302
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p1

    .line 1303
    if-nez p1, :cond_8

    .line 1304
    const/4 p1, 0x0

    return-object p1

    .line 1306
    :cond_8
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object p1

    return-object p1
.end method

.method getMinimumBrightnessCurveInternal()Landroid/hardware/display/Curve;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1096
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    return-object v0
.end method

.method getPreferredWideGamutColorSpaceIdInternal()I
    .registers 2

    .line 1100
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .registers 10

    .line 373
    const/16 v0, 0x64

    if-ne p1, v0, :cond_60

    .line 374
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter p1

    .line 375
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 376
    invoke-virtual {v2}, Lcom/android/server/display/DisplayManagerService$Injector;->getDefaultDisplayDelayTimeout()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 377
    :goto_12
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v2, :cond_20

    goto :goto_22

    .line 394
    :cond_20
    monitor-exit p1

    goto :goto_60

    .line 379
    :cond_22
    :goto_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_5d

    sub-long v4, v0, v4

    .line 380
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_36

    .line 390
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_33} :catch_34
    .catchall {:try_start_2e .. :try_end_33} :catchall_5d

    .line 392
    goto :goto_35

    .line 391
    :catch_34
    move-exception v2

    .line 393
    :goto_35
    goto :goto_12

    .line 381
    :cond_36
    :try_start_36
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout waiting for default display to be initialized. DefaultDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 383
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mVirtualDisplayAdapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :catchall_5d
    move-exception v0

    monitor-exit p1
    :try_end_5f
    .catchall {:try_start_36 .. :try_end_5f} :catchall_5d

    throw v0

    .line 396
    :cond_60
    :goto_60
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 362
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->loadStableDisplayValuesLocked()V

    .line 363
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_28

    .line 364
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 366
    new-instance v0, Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    const-string v2, "display"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/display/DisplayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 368
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 369
    return-void

    .line 363
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public onSwitchUser(I)V
    .registers 5

    .line 400
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 401
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 402
    :try_start_b
    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-eq v2, p1, :cond_1c

    .line 403
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 404
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 405
    invoke-virtual {v2, v0}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    .line 406
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 408
    :cond_1c
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerController;->onSwitchUser(I)V

    .line 409
    monitor-exit v1

    .line 410
    return-void

    .line 409
    :catchall_23
    move-exception p1

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw p1
.end method

.method performTraversalInternal(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 513
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v1, :cond_9

    .line 514
    monitor-exit v0

    return-void

    .line 516
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 518
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 519
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_27

    .line 522
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 523
    invoke-interface {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 524
    goto :goto_16

    .line 525
    :cond_26
    return-void

    .line 519
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method setDisplayedContentSamplingEnabledInternal(IZII)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1312
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p1

    .line 1313
    if-nez p1, :cond_8

    .line 1314
    const/4 p1, 0x0

    return p1

    .line 1316
    :cond_8
    invoke-static {p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    move-result p1

    return p1
.end method

.method public setupSchedulerPolicies()V
    .registers 3

    .line 346
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 348
    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AnimationThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 350
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->get()Lcom/android/server/wm/SurfaceAnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 352
    return-void
.end method

.method public systemReady(ZZ)V
    .registers 4

    .line 425
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 426
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    .line 427
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    .line 428
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 431
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 432
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2f

    .line 434
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    new-instance p2, Lcom/android/server/display/DisplayManagerService$AllowedDisplayModeObserver;

    invoke-direct {p2, p0}, Lcom/android/server/display/DisplayManagerService$AllowedDisplayModeObserver;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayModeDirector;->setListener(Lcom/android/server/display/DisplayModeDirector$Listener;)V

    .line 435
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayModeDirector;->start(Landroid/hardware/SensorManager;)V

    .line 437
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 438
    return-void

    .line 432
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1123
    if-nez p1, :cond_3

    .line 1124
    return-void

    .line 1126
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->isBrightnessConfigurationTooDark(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1129
    return-void

    .line 1127
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "brightness curve is too dark"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public windowManagerAndInputReady()V
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 415
    :try_start_3
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 416
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 417
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 418
    monitor-exit v0

    .line 419
    return-void

    .line 418
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method
