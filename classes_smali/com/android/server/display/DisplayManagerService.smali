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

.field private mNextBuiltInDisplayId:I

.field private mNextNonDefaultDisplayId:I

.field public mOnlyCore:Z

.field private mPendingTraversal:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field public mSafeMode:Z

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
    .param p1, "context"  # Landroid/content/Context;

    .line 311
    new-instance v0, Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V

    .line 312
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "injector"  # Lcom/android/server/display/DisplayManagerService$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 316
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 191
    new-instance v0, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$SyncRoot;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 221
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    .line 222
    const/16 v1, 0x1000

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mNextBuiltInDisplayId:I

    .line 225
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 233
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    .line 237
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    .line 259
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 272
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 276
    new-instance v2, Lcom/android/server/display/PersistentDataStore;

    invoke-direct {v2}, Lcom/android/server/display/PersistentDataStore;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 280
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 283
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 287
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    .line 297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    .line 300
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 317
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 318
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 319
    new-instance v2, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 320
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 321
    new-instance v2, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    .line 322
    new-instance v2, Lcom/android/server/display/DisplayModeDirector;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-direct {v2, p1, v3}, Lcom/android/server/display/DisplayModeDirector;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    .line 323
    const/4 v2, 0x0

    const-string/jumbo v3, "persist.demo.singledisplay"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    .line 324
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 325
    .local v3, "resources":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    .line 327
    const-string/jumbo v4, "persist.sys.displayinset.top"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    .line 328
    const v1, 0x1070046

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    .line 330
    .local v1, "lux":[F
    const v4, 0x1070047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v4

    .line 332
    .local v4, "nits":[F
    new-instance v5, Landroid/hardware/display/Curve;

    invoke-direct {v5, v1, v4}, Landroid/hardware/display/Curve;-><init>([F[F)V

    iput-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    .line 333
    invoke-static {v1, v4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    .line 335
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/PowerManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 336
    .local v5, "pm":Landroid/os/PowerManager;
    invoke-virtual {v5}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v6

    iput v6, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    .line 337
    iput v2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 338
    invoke-static {}, Landroid/view/SurfaceControl;->getCompositionColorSpaces()[Landroid/graphics/ColorSpace;

    move-result-object v6

    .line 339
    .local v6, "colorSpaces":[Landroid/graphics/ColorSpace;
    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    .line 341
    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 342
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->loadBrightnessConfiguration()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Lcom/android/server/display/DisplayDevice;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Lcom/android/server/display/DisplayDevice;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Lcom/android/server/display/DisplayDevice;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayManagerService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Z

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;
    .registers 4
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayManagerService;I)[I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # I

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayIdsInternal(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayManagerService;II)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayManagerService;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getStableDisplaySizeInternal()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerDefaultDisplayAdapters()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Landroid/hardware/display/IDisplayManagerCallback;
    .param p2, "x2"  # I

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # I

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanInternal(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/DisplayManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # I

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanInternal(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->connectWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->disconnectWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->forgetWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->pauseWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->resumeWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerAdditionalDisplayAdapters()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->requestColorModeInternal(II)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/display/DisplayManagerService;)Landroid/media/projection/IMediaProjectionManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I
    .registers 13
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "x2"  # Landroid/media/projection/IMediaProjection;
    .param p3, "x3"  # I
    .param p4, "x4"  # Ljava/lang/String;
    .param p5, "x5"  # Ljava/lang/String;
    .param p6, "x6"  # I
    .param p7, "x7"  # I
    .param p8, "x8"  # I
    .param p9, "x9"  # Landroid/view/Surface;
    .param p10, "x10"  # I
    .param p11, "x11"  # Ljava/lang/String;

    .line 157
    invoke-direct/range {p0 .. p11}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayInternal(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # I

    .line 157
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Landroid/view/Surface;

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->releaseVirtualDisplayInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Z

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setVirtualDisplayStateInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Ljava/io/PrintWriter;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Lcom/android/server/display/DisplayPowerController;

    .line 157
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayEvent(II)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "x2"  # I
    .param p3, "x3"  # Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForUserInternal(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/display/DisplayManagerService;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/PersistentDataStore;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/display/DisplayManagerService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(II)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # I

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->screenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Landroid/view/DisplayInfo;

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Landroid/view/DisplayInfo;

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getNonOverrideDisplayInfoInternal(ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/display/DisplayManagerService;IZFIZ)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z
    .param p3, "x3"  # F
    .param p4, "x4"  # I
    .param p5, "x5"  # Z

    .line 157
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/DisplayManagerService;->setDisplayPropertiesInternal(IZFIZ)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/display/DisplayManagerService;III)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->setDisplayOffsetsInternal(III)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/display/DisplayManagerService;IZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayScalingDisabledInternal(IZ)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"  # Landroid/util/SparseArray;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setDisplayAccessUIDsInternal(Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/display/DisplayManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->onAllowedDisplayModesChangedInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/DisplayManagerService;

    .line 157
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    return-object v0
.end method

.method private addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .registers 11
    .param p1, "device"  # Lcom/android/server/display/DisplayDevice;

    .line 1002
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1003
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    move v1, v3

    .line 1005
    .local v1, "isDefault":Z
    :goto_e
    const-string v4, "DisplayManagerService"

    if-eqz v1, :cond_2f

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring attempt to add a second default display: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v1, 0x0

    .line 1010
    :cond_2f
    const/4 v3, 0x0

    if-nez v1, :cond_4b

    iget-boolean v5, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    if-eqz v5, :cond_4b

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not creating a logical display for a secondary display  because single display demo mode is enabled: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return-object v3

    .line 1016
    :cond_4b
    iget-object v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-direct {p0, v1, v5}, Lcom/android/server/display/DisplayManagerService;->assignDisplayIdLocked(ZLandroid/view/DisplayAddress;)I

    move-result v5

    .line 1017
    .local v5, "displayId":I
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayManagerService;->assignLayerStackLocked(I)I

    move-result v6

    .line 1019
    .local v6, "layerStack":I
    new-instance v7, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {v7, v5, v6, p1}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;)V

    .line 1020
    .local v7, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 1021
    invoke-virtual {v7}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v8

    if-nez v8, :cond_7a

    .line 1023
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring display device because the logical display created from it was not considered valid: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    return-object v3

    .line 1028
    :cond_7a
    invoke-direct {p0, v7, p1}, Lcom/android/server/display/DisplayManagerService;->configureColorModeLocked(Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 1029
    if-eqz v1, :cond_85

    .line 1030
    invoke-direct {p0, v7}, Lcom/android/server/display/DisplayManagerService;->recordStableDisplayStatsIfNeededLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1031
    invoke-direct {p0, v7}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1034
    :cond_85
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1037
    if-eqz v1, :cond_91

    .line 1038
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1041
    :cond_91
    invoke-direct {p0, v5, v2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1042
    return-object v7
.end method

.method private applyGlobalDisplayStateLocked(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 979
    .local p1, "workQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 980
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 981
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDevice;

    .line 982
    .local v2, "device":Lcom/android/server/display/DisplayDevice;
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v3

    .line 983
    .local v3, "runnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_1a

    .line 984
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    .end local v2  # "device":Lcom/android/server/display/DisplayDevice;
    .end local v3  # "runnable":Ljava/lang/Runnable;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 987
    .end local v1  # "i":I
    :cond_1d
    return-void
.end method

.method private assignDisplayIdLocked(Z)I
    .registers 4
    .param p1, "isDefault"  # Z

    .line 1046
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    :goto_a
    return v0
.end method

.method private assignDisplayIdLocked(ZLandroid/view/DisplayAddress;)I
    .registers 6
    .param p1, "isDefault"  # Z
    .param p2, "address"  # Landroid/view/DisplayAddress;

    .line 1050
    const/4 v0, 0x0

    .line 1051
    .local v0, "isDisplayBuiltIn":Z
    instance-of v1, p2, Landroid/view/DisplayAddress$Physical;

    if-eqz v1, :cond_12

    .line 1052
    move-object v1, p2

    check-cast v1, Landroid/view/DisplayAddress$Physical;

    .line 1053
    invoke-virtual {v1}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v1

    if-gez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    move v0, v1

    .line 1055
    :cond_12
    if-nez p1, :cond_1d

    if-eqz v0, :cond_1d

    .line 1056
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mNextBuiltInDisplayId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/display/DisplayManagerService;->mNextBuiltInDisplayId:I

    return v1

    .line 1059
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->assignDisplayIdLocked(Z)I

    move-result v1

    return v1
.end method

.method private assignLayerStackLocked(I)I
    .registers 2
    .param p1, "displayId"  # I

    .line 1065
    return p1
.end method

.method private clearViewportsLocked()V
    .registers 2

    .line 1376
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1377
    return-void
.end method

.method private configureColorModeLocked(Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V
    .registers 5
    .param p1, "display"  # Lcom/android/server/display/LogicalDisplay;
    .param p2, "device"  # Lcom/android/server/display/DisplayDevice;

    .line 1069
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    if-ne v0, p2, :cond_20

    .line 1070
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore;->getColorMode(Lcom/android/server/display/DisplayDevice;)I

    move-result v0

    .line 1071
    .local v0, "colorMode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 1072
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    .line 1074
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    goto :goto_1d

    .line 1076
    :cond_1c
    const/4 v0, 0x0

    .line 1079
    :cond_1d
    :goto_1d
    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorModeLocked(I)V

    .line 1081
    .end local v0  # "colorMode":I
    :cond_20
    return-void
.end method

.method private configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;)V
    .registers 10
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "device"  # Lcom/android/server/display/DisplayDevice;

    .line 1380
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1381
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    .line 1385
    .local v1, "ownContent":Z
    :goto_f
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    .line 1386
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_29

    .line 1387
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 1390
    const/4 v4, 0x0

    .line 1392
    :cond_1e
    if-nez v4, :cond_29

    .line 1393
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 1398
    :cond_29
    const-string v5, "DisplayManagerService"

    if-nez v4, :cond_46

    .line 1400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing logical display to use for physical display device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1400
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    return-void

    .line 1404
    :cond_46
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-ne v6, v3, :cond_4b

    move v2, v3

    :cond_4b
    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/display/LogicalDisplay;->configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V

    .line 1407
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_55

    .line 1408
    const/4 v2, 0x1

    .local v2, "viewportType":I
    goto :goto_6a

    .line 1409
    .end local v2  # "viewportType":I
    :cond_55
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5c

    .line 1410
    const/4 v2, 0x2

    .restart local v2  # "viewportType":I
    goto :goto_6a

    .line 1411
    .end local v2  # "viewportType":I
    :cond_5c
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_74

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 1412
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 1413
    const/4 v2, 0x3

    .line 1419
    .restart local v2  # "viewportType":I
    :goto_6a
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    iget-object v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-direct {p0, v2, v3, p2, v5}, Lcom/android/server/display/DisplayManagerService;->populateViewportLocked(IILcom/android/server/display/DisplayDevice;Ljava/lang/String;)V

    .line 1420
    return-void

    .line 1415
    .end local v2  # "viewportType":I
    :cond_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not support input device matching."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    return-void
.end method

.method private connectWifiDisplayInternal(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"  # Ljava/lang/String;

    .line 691
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 692
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 693
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Ljava/lang/String;)V

    .line 695
    :cond_c
    monitor-exit v0

    .line 696
    return-void

    .line 695
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private createVirtualDisplayInternal(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I
    .registers 29
    .param p1, "callback"  # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"  # Landroid/media/projection/IMediaProjection;
    .param p3, "callingUid"  # I
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "name"  # Ljava/lang/String;
    .param p6, "width"  # I
    .param p7, "height"  # I
    .param p8, "densityDpi"  # I
    .param p9, "surface"  # Landroid/view/Surface;
    .param p10, "flags"  # I
    .param p11, "uniqueId"  # Ljava/lang/String;

    .line 761
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 762
    :try_start_5
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v3, -0x1

    if-nez v0, :cond_13

    .line 763
    const-string v0, "DisplayManagerService"

    const-string v4, "Rejecting request to create private virtual display because the virtual display adapter is not available."

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    monitor-exit v2

    return v3

    .line 768
    :cond_13
    iget-object v5, v1, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    move-object/from16 v16, p11

    invoke-virtual/range {v5 .. v16}, Lcom/android/server/display/VirtualDisplayAdapter;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 771
    .local v0, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v0, :cond_33

    .line 772
    monitor-exit v2

    return v3

    .line 775
    :cond_33
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 776
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    .line 777
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v4, :cond_42

    .line 778
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    monitor-exit v2

    return v3

    .line 782
    :cond_42
    const-string v5, "DisplayManagerService"

    const-string v6, "Rejecting request to create virtual display because the logical display was not created."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v5, v1, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-interface/range {p1 .. p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    .line 785
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 786
    .end local v0  # "device":Lcom/android/server/display/DisplayDevice;
    .end local v4  # "display":Lcom/android/server/display/LogicalDisplay;
    monitor-exit v2

    .line 787
    return v3

    .line 786
    :catchall_57
    move-exception v0

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_57

    throw v0
.end method

.method private deliverDisplayEvent(II)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "event"  # I

    .line 1504
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1505
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1506
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1507
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_21

    .line 1508
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1510
    .end local v2  # "i":I
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_39

    .line 1513
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, v1, :cond_33

    .line 1514
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(II)V

    .line 1513
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1516
    .end local v0  # "i":I
    :cond_33
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1517
    return-void

    .line 1510
    .end local v1  # "count":I
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private disconnectWifiDisplayInternal()V
    .registers 3

    .line 715
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 716
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 717
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 719
    :cond_c
    monitor-exit v0

    .line 720
    return-void

    .line 719
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1532
    const-string v0, "DISPLAY MANAGER (dumpsys display)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1535
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

    .line 1536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSafeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingTraversal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
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

    .line 1539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextNonDefaultDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mViewports="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDefaultDisplayDefaultColorMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSingleDisplayDemoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWifiDisplayScanRequestCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStableDisplaySize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMinimumBrightnessCurve="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1548
    .local v1, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1550
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1551
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

    .line 1552
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

    .line 1553
    .local v3, "adapter":Lcom/android/server/display/DisplayAdapter;
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

    .line 1554
    invoke-virtual {v3, v1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1555
    .end local v3  # "adapter":Lcom/android/server/display/DisplayAdapter;
    goto :goto_12b

    .line 1557
    :cond_153
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1558
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

    .line 1559
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

    .line 1560
    .local v3, "device":Lcom/android/server/display/DisplayDevice;
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

    .line 1561
    invoke-virtual {v3, v1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1562
    .end local v3  # "device":Lcom/android/server/display/DisplayDevice;
    goto :goto_176

    .line 1564
    :cond_19e
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1565
    .local v2, "logicalDisplayCount":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logical Displays: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1bc
    if-ge v3, v2, :cond_1eb

    .line 1568
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1569
    .local v4, "displayId":I
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    .line 1570
    .local v5, "display":Lcom/android/server/display/LogicalDisplay;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {v5, v1}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1567
    .end local v4  # "displayId":I
    .end local v5  # "display":Lcom/android/server/display/LogicalDisplay;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1bc

    .line 1574
    .end local v3  # "i":I
    :cond_1eb
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1575
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayModeDirector;->dump(Ljava/io/PrintWriter;)V

    .line 1577
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1578
    .local v3, "callbackCount":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callbacks: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1580
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_211
    if-ge v4, v3, :cond_246

    .line 1581
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1582
    .local v5, "callback":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": mPid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mWifiDisplayScanRequested="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1580
    .end local v5  # "callback":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_211

    .line 1586
    .end local v4  # "i":I
    :cond_246
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    if-eqz v4, :cond_24f

    .line 1587
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v4, p1}, Lcom/android/server/display/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V

    .line 1590
    :cond_24f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1591
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v4, p1}, Lcom/android/server/display/PersistentDataStore;->dump(Ljava/io/PrintWriter;)V

    .line 1592
    .end local v1  # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v2  # "logicalDisplayCount":I
    .end local v3  # "callbackCount":I
    monitor-exit v0

    .line 1593
    return-void

    .line 1592
    :catchall_259
    move-exception v1

    monitor-exit v0
    :try_end_25b
    .catchall {:try_start_8 .. :try_end_25b} :catchall_259

    throw v1
.end method

.method private findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .registers 6
    .param p1, "device"  # Lcom/android/server/display/DisplayDevice;

    .line 1468
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1469
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 1470
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 1471
    .local v2, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v3

    if-ne v3, p1, :cond_18

    .line 1472
    return-object v2

    .line 1469
    .end local v2  # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1475
    .end local v1  # "i":I
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private forgetWifiDisplayInternal(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"  # Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 732
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 733
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestForgetLocked(Ljava/lang/String;)V

    .line 735
    :cond_c
    monitor-exit v0

    .line 736
    return-void

    .line 735
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private getDisplayIdsInternal(I)[I
    .registers 11
    .param p1, "callingUid"  # I

    .line 597
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 598
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 599
    .local v1, "count":I
    new-array v2, v1, [I

    .line 600
    .local v2, "displayIds":[I
    const/4 v3, 0x0

    .line 601
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    if-ge v4, v1, :cond_2f

    .line 602
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    .line 603
    .local v5, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v6

    .line 604
    .local v6, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v6, p1}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 605
    add-int/lit8 v7, v3, 0x1

    .end local v3  # "n":I
    .local v7, "n":I
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    aput v8, v2, v3

    move v3, v7

    .line 601
    .end local v5  # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v6  # "info":Landroid/view/DisplayInfo;
    .end local v7  # "n":I
    .restart local v3  # "n":I
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 608
    .end local v4  # "i":I
    :cond_2f
    if-eq v3, v1, :cond_37

    .line 609
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v4

    move-object v2, v4

    .line 611
    :cond_37
    monitor-exit v0

    return-object v2

    .line 612
    .end local v1  # "count":I
    .end local v2  # "displayIds":[I
    .end local v3  # "n":I
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private getDisplayInfoInternal(II)Landroid/view/DisplayInfo;
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "callingUid"  # I

    .line 575
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 576
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 577
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_34

    .line 578
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 580
    .local v2, "info":Landroid/view/DisplayInfo;
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 581
    const-class v3, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/FlymeWindowManagerInternal;

    .line 582
    .local v3, "windowManager":Lcom/android/server/wm/FlymeWindowManagerInternal;
    if-eqz v3, :cond_26

    .line 583
    invoke-virtual {v3, v2, p1, p2}, Lcom/android/server/wm/FlymeWindowManagerInternal;->adjustDisplayInfoLock(Landroid/view/DisplayInfo;II)Landroid/view/DisplayInfo;

    move-result-object v4

    move-object v2, v4

    .line 587
    .end local v3  # "windowManager":Lcom/android/server/wm/FlymeWindowManagerInternal;
    :cond_26
    invoke-virtual {v2, p2}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v3

    if-nez v3, :cond_32

    .line 588
    invoke-direct {p0, p2, p1}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 589
    :cond_32
    monitor-exit v0

    return-object v2

    .line 592
    .end local v2  # "info":Landroid/view/DisplayInfo;
    :cond_34
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 593
    .end local v1  # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private getDisplayToken(I)Landroid/os/IBinder;
    .registers 6
    .param p1, "displayId"  # I

    .line 1299
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1301
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_19

    .line 1302
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    .line 1303
    .local v2, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v2, :cond_19

    .line 1304
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1307
    .end local v1  # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v2  # "device":Lcom/android/server/display/DisplayDevice;
    :cond_19
    monitor-exit v0

    .line 1309
    const/4 v0, 0x0

    return-object v0

    .line 1307
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5
    .param p0, "array"  # Landroid/content/res/TypedArray;

    .line 1596
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1597
    .local v0, "length":I
    new-array v1, v0, [F

    .line 1598
    .local v1, "floatArray":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 1599
    const/high16 v3, 0x7fc00000  # Float.NaN

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 1598
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1601
    .end local v2  # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1602
    return-object v1
.end method

.method private getNonOverrideDisplayInfoInternal(ILandroid/view/DisplayInfo;)V
    .registers 5
    .param p1, "displayId"  # I
    .param p2, "outInfo"  # Landroid/view/DisplayInfo;

    .line 504
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 505
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 506
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_10

    .line 507
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 509
    .end local v1  # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_10
    monitor-exit v0

    .line 510
    return-void

    .line 509
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .registers 3

    .line 1520
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_11

    .line 1521
    const-string/jumbo v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1522
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 1524
    .end local v0  # "b":Landroid/os/IBinder;
    :cond_11
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object v0
.end method

.method private getStableDisplaySizeInternal()Landroid/graphics/Point;
    .registers 5

    .line 466
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 467
    .local v0, "r":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 468
    :try_start_8
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-lez v2, :cond_1f

    .line 469
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 471
    :cond_1f
    monitor-exit v1

    .line 472
    return-object v0

    .line 471
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v2
.end method

.method private getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 1528
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method private getViewportLocked(ILjava/lang/String;)Landroid/hardware/display/DisplayViewport;
    .registers 7
    .param p1, "viewportType"  # I
    .param p2, "uniqueId"  # Ljava/lang/String;

    .line 1428
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_25

    const/4 v1, 0x2

    if-eq p1, v1, :cond_25

    if-eq p1, v0, :cond_25

    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call getViewportByTypeLocked for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    invoke-static {p1}, Landroid/hardware/display/DisplayViewport;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1430
    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const/4 v0, 0x0

    return-object v0

    .line 1438
    :cond_25
    if-eq p1, v0, :cond_29

    .line 1439
    const-string p2, ""

    .line 1443
    :cond_29
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1444
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    if-ge v1, v0, :cond_4a

    .line 1445
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    .line 1446
    .local v2, "viewport":Landroid/hardware/display/DisplayViewport;
    iget v3, v2, Landroid/hardware/display/DisplayViewport;->type:I

    if-ne v3, p1, :cond_47

    iget-object v3, v2, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1447
    return-object v2

    .line 1444
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1452
    .end local v1  # "i":I
    .end local v2  # "viewport":Landroid/hardware/display/DisplayViewport;
    :cond_4a
    new-instance v1, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v1}, Landroid/hardware/display/DisplayViewport;-><init>()V

    .line 1453
    .local v1, "viewport":Landroid/hardware/display/DisplayViewport;
    iput p1, v1, Landroid/hardware/display/DisplayViewport;->type:I

    .line 1454
    iput-object p2, v1, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 1455
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    return-object v1
.end method

.method private getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;
    .registers 3

    .line 739
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 740
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_f

    .line 741
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 743
    :cond_f
    new-instance v1, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct {v1}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    monitor-exit v0

    return-object v1

    .line 744
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V
    .registers 4
    .param p1, "device"  # Lcom/android/server/display/DisplayDevice;

    .line 896
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 897
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 898
    monitor-exit v0

    .line 899
    return-void

    .line 898
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 6
    .param p1, "device"  # Lcom/android/server/display/DisplayDevice;

    .line 902
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 903
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "DisplayManagerService"

    if-eqz v1, :cond_23

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add already added display device: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void

    .line 908
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display device added: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iput-object v0, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 911
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 913
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v2

    .line 914
    .local v2, "work":Ljava/lang/Runnable;
    if-eqz v2, :cond_4b

    .line 915
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 917
    :cond_4b
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 918
    return-void
.end method

.method private handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V
    .registers 8
    .param p1, "device"  # Lcom/android/server/display/DisplayDevice;

    .line 921
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 922
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 923
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 924
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to change non-existent display device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    monitor-exit v0

    return-void

    .line 928
    :cond_27
    iget-object v2, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayDeviceInfo;->diff(Lcom/android/server/display/DisplayDeviceInfo;)I

    move-result v2

    .line 929
    .local v2, "diff":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_57

    .line 930
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

    .line 931
    invoke-static {v5}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 930
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 932
    :cond_57
    if-eqz v2, :cond_6f

    .line 933
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

    .line 935
    :cond_6f
    :goto_6f
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_87

    .line 937
    :try_start_73
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    invoke-virtual {v3, p1, v4}, Lcom/android/server/display/PersistentDataStore;->setColorMode(Lcom/android/server/display/DisplayDevice;I)Z
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_80

    .line 939
    :try_start_7a
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 940
    goto :goto_87

    .line 939
    :catchall_80
    move-exception v3

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1  # "device":Lcom/android/server/display/DisplayDevice;
    throw v3

    .line 942
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1  # "device":Lcom/android/server/display/DisplayDevice;
    :cond_87
    :goto_87
    iput-object v1, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 944
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->applyPendingDisplayDeviceInfoChangesLocked()V

    .line 945
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    move-result v3

    if-eqz v3, :cond_96

    .line 946
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 948
    .end local v1  # "info":Lcom/android/server/display/DisplayDeviceInfo;
    .end local v2  # "diff":I
    :cond_96
    monitor-exit v0

    .line 949
    return-void

    .line 948
    :catchall_98
    move-exception v1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_7a .. :try_end_9a} :catchall_98

    throw v1
.end method

.method private handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V
    .registers 4
    .param p1, "device"  # Lcom/android/server/display/DisplayDevice;

    .line 952
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 953
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 954
    monitor-exit v0

    .line 955
    return-void

    .line 954
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V
    .registers 6
    .param p1, "device"  # Lcom/android/server/display/DisplayDevice;

    .line 958
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 959
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "DisplayManagerService"

    if-nez v1, :cond_23

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existent display device: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return-void

    .line 964
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display device removed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iput-object v0, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 967
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    .line 968
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 969
    return-void
.end method

.method private handleLogicalDisplayChanged(ILcom/android/server/display/LogicalDisplay;)V
    .registers 4
    .param p1, "displayId"  # I
    .param p2, "display"  # Lcom/android/server/display/LogicalDisplay;

    .line 972
    if-nez p1, :cond_5

    .line 973
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 975
    :cond_5
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 976
    return-void
.end method

.method private isBrightnessConfigurationTooDark(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 9
    .param p1, "config"  # Landroid/hardware/display/BrightnessConfiguration;

    .line 1155
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 1156
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    .line 1157
    .local v1, "lux":[F
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    .line 1158
    .local v2, "nits":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    array-length v4, v1

    if-ge v3, v4, :cond_23

    .line 1159
    aget v4, v2, v3

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    aget v6, v1, v3

    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_20

    .line 1160
    const/4 v4, 0x1

    return v4

    .line 1158
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1163
    .end local v3  # "i":I
    :cond_23
    const/4 v3, 0x0

    return v3
.end method

.method private isUidPresentOnDisplayInternal(II)Z
    .registers 7
    .param p1, "uid"  # I
    .param p2, "displayId"  # I

    .line 1291
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1292
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/IntArray;

    .line 1293
    .local v1, "displayUIDs":Landroid/util/IntArray;
    if-eqz v1, :cond_16

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    monitor-exit v0

    return v2

    .line 1294
    .end local v1  # "displayUIDs":Landroid/util/IntArray;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private loadBrightnessConfiguration()V
    .registers 5

    .line 1167
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1168
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v1

    .line 1169
    .local v1, "userSerial":I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 1170
    invoke-virtual {v2, v1}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    .line 1171
    .local v2, "config":Landroid/hardware/display/BrightnessConfiguration;
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v3, v2}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1172
    .end local v1  # "userSerial":I
    .end local v2  # "config":Landroid/hardware/display/BrightnessConfiguration;
    monitor-exit v0

    .line 1173
    return-void

    .line 1172
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private loadStableDisplayValuesLocked()V
    .registers 5

    .line 448
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 449
    .local v0, "size":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_18

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_18

    .line 452
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_33

    .line 454
    :cond_18
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 455
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x10e00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 457
    .local v2, "width":I
    const v3, 0x10e00b0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 459
    .local v3, "height":I
    if-lez v2, :cond_33

    if-lez v3, :cond_33

    .line 460
    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    .line 463
    .end local v1  # "res":Landroid/content/res/Resources;
    .end local v2  # "width":I
    .end local v3  # "height":I
    :cond_33
    :goto_33
    return-void
.end method

.method private onAllowedDisplayModesChangedInternal()V
    .registers 9

    .line 1354
    const/4 v0, 0x0

    .line 1355
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1356
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1357
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_32

    .line 1358
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 1359
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1360
    .local v5, "displayId":I
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayModeDirector;->getAllowedModes(I)[I

    move-result-object v6

    .line 1364
    .local v6, "allowedModes":[I
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getAllowedDisplayModesLocked()[I

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 1365
    invoke-virtual {v4, v6}, Lcom/android/server/display/LogicalDisplay;->setAllowedDisplayModesLocked([I)V

    .line 1366
    const/4 v0, 0x1

    .line 1357
    .end local v4  # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v5  # "displayId":I
    .end local v6  # "allowedModes":[I
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1369
    .end local v3  # "i":I
    :cond_32
    if-eqz v0, :cond_38

    .line 1370
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1372
    .end local v2  # "count":I
    :cond_38
    monitor-exit v1

    .line 1373
    return-void

    .line 1372
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method private onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 5
    .param p1, "record"  # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 636
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 637
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 638
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 639
    monitor-exit v0

    .line 640
    return-void

    .line 639
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private pauseWifiDisplayInternal()V
    .registers 3

    .line 699
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 700
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 701
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestPauseLocked()V

    .line 703
    :cond_c
    monitor-exit v0

    .line 704
    return-void

    .line 703
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 1201
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->clearViewportsLocked()V

    .line 1204
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1205
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1d

    .line 1206
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDevice;

    .line 1207
    .local v2, "device":Lcom/android/server/display/DisplayDevice;
    invoke-direct {p0, p1, v2}, Lcom/android/server/display/DisplayManagerService;->configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;)V

    .line 1208
    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayDevice;->performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 1205
    .end local v2  # "device":Lcom/android/server/display/DisplayDevice;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1212
    .end local v1  # "i":I
    :cond_1d
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz v1, :cond_27

    .line 1213
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 1215
    :cond_27
    return-void
.end method

.method private populateViewportLocked(IILcom/android/server/display/DisplayDevice;Ljava/lang/String;)V
    .registers 7
    .param p1, "viewportType"  # I
    .param p2, "displayId"  # I
    .param p3, "device"  # Lcom/android/server/display/DisplayDevice;
    .param p4, "uniqueId"  # Ljava/lang/String;

    .line 1461
    invoke-direct {p0, p1, p4}, Lcom/android/server/display/DisplayManagerService;->getViewportLocked(ILjava/lang/String;)Landroid/hardware/display/DisplayViewport;

    move-result-object v0

    .line 1462
    .local v0, "viewport":Landroid/hardware/display/DisplayViewport;
    invoke-virtual {p3, v0}, Lcom/android/server/display/DisplayDevice;->populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V

    .line 1463
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 1464
    iput p2, v0, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 1465
    return-void
.end method

.method private recordStableDisplayStatsIfNeededLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 5
    .param p1, "d"  # Lcom/android/server/display/LogicalDisplay;

    .line 1087
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-gtz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_1b

    .line 1088
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1089
    .local v0, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    .line 1091
    .end local v0  # "info":Landroid/view/DisplayInfo;
    :cond_1b
    return-void
.end method

.method private recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 5
    .param p1, "d"  # Lcom/android/server/display/LogicalDisplay;

    .line 1097
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1f

    if-nez p1, :cond_7

    goto :goto_1f

    .line 1100
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 1101
    .local v0, "topInset":I
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    if-ne v0, v1, :cond_12

    .line 1102
    return-void

    .line 1104
    :cond_12
    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    .line 1105
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.displayinset.top"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    return-void

    .line 1098
    .end local v0  # "topInset":I
    :cond_1f
    :goto_1f
    return-void
.end method

.method private registerAdditionalDisplayAdapters()V
    .registers 3

    .line 856
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 857
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->shouldRegisterNonEssentialDisplayAdaptersLocked()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 858
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerOverlayDisplayAdapterLocked()V

    .line 859
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerWifiDisplayAdapterLocked()V

    .line 861
    :cond_f
    monitor-exit v0

    .line 862
    return-void

    .line 861
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;I)V
    .registers 7
    .param p1, "callback"  # Landroid/hardware/display/IDisplayManagerCallback;
    .param p2, "callingPid"  # I

    .line 616
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 617
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_27

    .line 622
    new-instance v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;-><init>(Lcom/android/server/display/DisplayManagerService;ILandroid/hardware/display/IDisplayManagerCallback;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2f

    .line 624
    .local v1, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :try_start_10
    invoke-interface {p1}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 625
    .local v2, "binder":Landroid/os/IBinder;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_20
    .catchall {:try_start_10 .. :try_end_18} :catchall_2f

    .line 629
    .end local v2  # "binder":Landroid/os/IBinder;
    nop

    .line 631
    :try_start_19
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 632
    .end local v1  # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    monitor-exit v0

    .line 633
    return-void

    .line 626
    .restart local v1  # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :catch_20
    move-exception v2

    .line 628
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1  # "callback":Landroid/hardware/display/IDisplayManagerCallback;
    .end local p2  # "callingPid":I
    throw v3

    .line 618
    .end local v1  # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    .end local v2  # "ex":Landroid/os/RemoteException;
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1  # "callback":Landroid/hardware/display/IDisplayManagerCallback;
    .restart local p2  # "callingPid":I
    :cond_27
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "The calling process has already registered an IDisplayManagerCallback."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1  # "callback":Landroid/hardware/display/IDisplayManagerCallback;
    .end local p2  # "callingPid":I
    throw v1

    .line 632
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1  # "callback":Landroid/hardware/display/IDisplayManagerCallback;
    .restart local p2  # "callingPid":I
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private registerDefaultDisplayAdapters()V
    .registers 7

    .line 837
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 839
    :try_start_3
    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 847
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/display/DisplayManagerService$Injector;->getVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)Lcom/android/server/display/VirtualDisplayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 849
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-eqz v1, :cond_2c

    .line 850
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 852
    :cond_2c
    monitor-exit v0

    .line 853
    return-void

    .line 852
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    .registers 3
    .param p1, "adapter"  # Lcom/android/server/display/DisplayAdapter;

    .line 891
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 893
    return-void
.end method

.method private registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 478
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    return-void
.end method

.method private registerOverlayDisplayAdapterLocked()V
    .registers 8

    .line 865
    new-instance v6, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/OverlayDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V

    invoke-direct {p0, v6}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 867
    return-void
.end method

.method private registerWifiDisplayAdapterLocked()V
    .registers 9

    .line 870
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, -0x1

    .line 872
    const-string/jumbo v1, "persist.debug.wfd.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 873
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

    .line 876
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 878
    :cond_31
    return-void
.end method

.method private releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "appToken"  # Landroid/os/IBinder;

    .line 812
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 813
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 814
    monitor-exit v0

    return-void

    .line 817
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 818
    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    .line 819
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v1, :cond_14

    .line 820
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 822
    .end local v1  # "device":Lcom/android/server/display/DisplayDevice;
    :cond_14
    monitor-exit v0

    .line 823
    return-void

    .line 822
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "address"  # Ljava/lang/String;
    .param p2, "alias"  # Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 724
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 725
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_c
    monitor-exit v0

    .line 728
    return-void

    .line 727
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private requestColorModeInternal(II)V
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "colorMode"  # I

    .line 748
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 749
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 750
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_1a

    .line 751
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getRequestedColorModeLocked()I

    move-result v2

    if-eq v2, p2, :cond_1a

    .line 752
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorModeLocked(I)V

    .line 753
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 755
    .end local v1  # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_1a
    monitor-exit v0

    .line 756
    return-void

    .line 755
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private requestGlobalDisplayStateInternal(II)V
    .registers 8
    .param p1, "state"  # I
    .param p2, "brightness"  # I

    .line 530
    if-nez p1, :cond_3

    .line 531
    const/4 p1, 0x2

    .line 533
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 534
    const/4 p2, 0x0

    goto :goto_12

    .line 535
    :cond_8
    if-gez p2, :cond_c

    .line 536
    const/4 p2, -0x1

    goto :goto_12

    .line 537
    :cond_c
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le p2, v0, :cond_12

    .line 538
    sget p2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    .line 541
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 546
    :try_start_15
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_80

    .line 547
    :try_start_18
    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    if-ne v2, p1, :cond_28

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    if-ne v2, p2, :cond_28

    .line 549
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_7d

    .line 569
    :try_start_21
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_87

    .line 549
    return-void

    .line 552
    :cond_28
    :try_start_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestGlobalDisplayState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 552
    const-wide/32 v3, 0x20000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 555
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    .line 556
    iput p2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    .line 557
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->applyGlobalDisplayStateLocked(Ljava/util/List;)V

    .line 558
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_28 .. :try_end_5b} :catchall_7d

    .line 564
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5c
    :try_start_5c
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_72

    .line 565
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 567
    .end local v1  # "i":I
    :cond_72
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_75
    .catchall {:try_start_5c .. :try_end_75} :catchall_80

    .line 569
    :try_start_75
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 570
    nop

    .line 571
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_87

    .line 572
    return-void

    .line 558
    :catchall_7d
    move-exception v2

    :try_start_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1  # "state":I
    .end local p2  # "brightness":I
    :try_start_7f
    throw v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    .line 569
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1  # "state":I
    .restart local p2  # "brightness":I
    :catchall_80
    move-exception v1

    :try_start_81
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1  # "state":I
    .end local p2  # "brightness":I
    throw v1

    .line 571
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1  # "state":I
    .restart local p2  # "brightness":I
    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_81 .. :try_end_89} :catchall_87

    throw v1
.end method

.method private resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V
    .registers 7
    .param p1, "appToken"  # Landroid/os/IBinder;
    .param p2, "width"  # I
    .param p3, "height"  # I
    .param p4, "densityDpi"  # I

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

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter;->resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V

    .line 798
    monitor-exit v0

    .line 799
    return-void

    .line 798
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private resumeWifiDisplayInternal()V
    .registers 3

    .line 707
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 708
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_c

    .line 709
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestResumeLocked()V

    .line 711
    :cond_c
    monitor-exit v0

    .line 712
    return-void

    .line 711
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private scheduleTraversalLocked(Z)V
    .registers 4
    .param p1, "inTraversal"  # Z

    .line 1486
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_13

    .line 1487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 1488
    if-nez p1, :cond_13

    .line 1489
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 1492
    :cond_13
    return-void
.end method

.method private screenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 9
    .param p1, "displayId"  # I

    .line 1313
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v6

    .line 1314
    .local v6, "token":Landroid/os/IBinder;
    if-nez v6, :cond_8

    .line 1315
    const/4 v0, 0x0

    return-object v0

    .line 1317
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->screenshotToBufferWithSecureLayersUnsafe(Landroid/os/IBinder;Landroid/graphics/Rect;IIZI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method private sendDisplayEventLocked(II)V
    .registers 5
    .param p1, "displayId"  # I
    .param p2, "event"  # I

    .line 1479
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1480
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1481
    return-void
.end method

.method private setBrightnessConfigurationForUserInternal(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 8
    .param p1, "c"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 1129
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1130
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 1131
    .local v0, "userSerial":I
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1133
    :try_start_e
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/display/PersistentDataStore;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_24

    .line 1136
    :try_start_13
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1137
    nop

    .line 1138
    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-ne p2, v2, :cond_22

    .line 1139
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1141
    :cond_22
    monitor-exit v1

    .line 1142
    return-void

    .line 1136
    :catchall_24
    move-exception v2

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .end local v0  # "userSerial":I
    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1  # "c":Landroid/hardware/display/BrightnessConfiguration;
    .end local p2  # "userId":I
    .end local p3  # "packageName":Ljava/lang/String;
    throw v2

    .line 1141
    .restart local v0  # "userSerial":I
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1  # "c":Landroid/hardware/display/BrightnessConfiguration;
    .restart local p2  # "userId":I
    .restart local p3  # "packageName":Ljava/lang/String;
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_2b

    throw v2
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

    .line 1280
    .local p1, "newDisplayAccessUIDs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/IntArray;>;"
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1281
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1282
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_22

    .line 1283
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1284
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/IntArray;

    .line 1283
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1282
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1286
    .end local v1  # "i":I
    :cond_22
    monitor-exit v0

    .line 1287
    return-void

    .line 1286
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "info"  # Landroid/view/DisplayInfo;

    .line 489
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 490
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 491
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_1a

    .line 492
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 493
    invoke-direct {p0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChanged(ILcom/android/server/display/LogicalDisplay;)V

    .line 494
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 497
    .end local v1  # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_1a
    monitor-exit v0

    .line 498
    return-void

    .line 497
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private setDisplayOffsetsInternal(III)V
    .registers 7
    .param p1, "displayId"  # I
    .param p2, "x"  # I
    .param p3, "y"  # I

    .line 1245
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1246
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1247
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_f

    .line 1248
    monitor-exit v0

    return-void

    .line 1250
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetXLocked()I

    move-result v2

    if-ne v2, p2, :cond_1b

    .line 1251
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetYLocked()I

    move-result v2

    if-eq v2, p3, :cond_22

    .line 1256
    :cond_1b
    invoke-virtual {v1, p2, p3}, Lcom/android/server/display/LogicalDisplay;->setDisplayOffsetsLocked(II)V

    .line 1257
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1259
    .end local v1  # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_22
    monitor-exit v0

    .line 1260
    return-void

    .line 1259
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private setDisplayPropertiesInternal(IZFIZ)V
    .registers 9
    .param p1, "displayId"  # I
    .param p2, "hasContent"  # Z
    .param p3, "requestedRefreshRate"  # F
    .param p4, "requestedModeId"  # I
    .param p5, "inTraversal"  # Z

    .line 1219
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1220
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1221
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_f

    .line 1222
    monitor-exit v0

    return-void

    .line 1224
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v2

    if-eq v2, p2, :cond_1b

    .line 1230
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setHasContentLocked(Z)V

    .line 1231
    invoke-direct {p0, p5}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1233
    :cond_1b
    if-nez p4, :cond_2b

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_2b

    .line 1236
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)I

    move-result v2

    move p4, v2

    .line 1239
    :cond_2b
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector;->getAppRequestObserver()Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    move-result-object v2

    invoke-virtual {v2, p1, p4}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppRequestedMode(II)V

    .line 1241
    .end local v1  # "display":Lcom/android/server/display/LogicalDisplay;
    monitor-exit v0

    .line 1242
    return-void

    .line 1241
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private setDisplayScalingDisabledInternal(IZ)V
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "disable"  # Z

    .line 1263
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1264
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1265
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_f

    .line 1266
    monitor-exit v0

    return-void

    .line 1268
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isDisplayScalingDisabled()Z

    move-result v2

    if-eq v2, p2, :cond_1c

    .line 1272
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayScalingDisabledLocked(Z)V

    .line 1273
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1275
    .end local v1  # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_1c
    monitor-exit v0

    .line 1276
    return-void

    .line 1275
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private setStableDisplaySizeLocked(II)V
    .registers 5
    .param p1, "width"  # I
    .param p2, "height"  # I

    .line 1109
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 1111
    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->setStableDisplaySize(Landroid/graphics/Point;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_15

    .line 1113
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1114
    nop

    .line 1115
    return-void

    .line 1113
    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    throw v0
.end method

.method private setVirtualDisplayStateInternal(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "appToken"  # Landroid/os/IBinder;
    .param p2, "isOn"  # Z

    .line 826
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 827
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_9

    .line 828
    monitor-exit v0

    return-void

    .line 831
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplayStateLocked(Landroid/os/IBinder;Z)V

    .line 832
    monitor-exit v0

    .line 833
    return-void

    .line 832
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 5
    .param p1, "appToken"  # Landroid/os/IBinder;
    .param p2, "surface"  # Landroid/view/Surface;

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

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 808
    monitor-exit v0

    .line 809
    return-void

    .line 808
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private shouldRegisterNonEssentialDisplayAdaptersLocked()Z
    .registers 2

    .line 887
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
    .registers 6
    .param p1, "callingPid"  # I

    .line 643
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 644
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 645
    .local v1, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-eqz v1, :cond_12

    .line 649
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 650
    .end local v1  # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    monitor-exit v0

    .line 651
    return-void

    .line 646
    .restart local v1  # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1  # "callingPid":I
    throw v2

    .line 650
    .end local v1  # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1  # "callingPid":I
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 4
    .param p1, "record"  # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 654
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-nez v0, :cond_16

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 656
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez v0, :cond_16

    .line 657
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_16

    .line 658
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStartScanLocked()V

    .line 662
    :cond_16
    return-void
.end method

.method private stopWifiDisplayScanInternal(I)V
    .registers 6
    .param p1, "callingPid"  # I

    .line 665
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 666
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 667
    .local v1, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-eqz v1, :cond_12

    .line 671
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 672
    .end local v1  # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    monitor-exit v0

    .line 673
    return-void

    .line 668
    .restart local v1  # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1  # "callingPid":I
    throw v2

    .line 672
    .end local v1  # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1  # "callingPid":I
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .registers 5
    .param p1, "record"  # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 676
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-eqz v0, :cond_36

    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 678
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez v1, :cond_17

    .line 679
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_36

    .line 680
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStopScanLocked()V

    goto :goto_36

    .line 682
    :cond_17
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-gez v1, :cond_36

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWifiDisplayScanRequestCount became negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    .line 688
    :cond_36
    :goto_36
    return-void
.end method

.method private unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 484
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 485
    return-void
.end method

.method private updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;
    .registers 5
    .param p1, "device"  # Lcom/android/server/display/DisplayDevice;

    .line 992
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 993
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_13

    .line 994
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:I

    invoke-virtual {p1, v1, v2}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(II)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    .line 996
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method private updateLogicalDisplaysLocked()Z
    .registers 7

    .line 1179
    const/4 v0, 0x0

    .line 1180
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "i":I
    :goto_7
    add-int/lit8 v2, v1, -0x1

    .end local v1  # "i":I
    .local v2, "i":I
    if-lez v1, :cond_4a

    .line 1181
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1182
    .local v1, "displayId":I
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1184
    .local v3, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1185
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 1186
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v4

    if-nez v4, :cond_38

    .line 1187
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1188
    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1189
    const/4 v0, 0x1

    goto :goto_48

    .line 1190
    :cond_38
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 1191
    invoke-direct {p0, v1, v3}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChanged(ILcom/android/server/display/LogicalDisplay;)V

    .line 1192
    const/4 v0, 0x1

    .line 1194
    .end local v1  # "displayId":I
    .end local v3  # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_48
    :goto_48
    move v1, v2

    goto :goto_7

    .line 1195
    .end local v2  # "i":I
    :cond_4a
    return v0
.end method


# virtual methods
.method getDisplayDeviceInfoInternal(I)Lcom/android/server/display/DisplayDeviceInfo;
    .registers 6
    .param p1, "displayId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1628
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1629
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1630
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_17

    .line 1631
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    .line 1632
    .local v2, "displayDevice":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1634
    .end local v2  # "displayDevice":Lcom/android/server/display/DisplayDevice;
    :cond_17
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1635
    .end local v1  # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method getDisplayHandler()Landroid/os/Handler;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object v0
.end method

.method getDisplayedContentSampleInternal(IJJ)Landroid/hardware/display/DisplayedContentSample;
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "maxFrames"  # J
    .param p4, "timestamp"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1346
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1347
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_8

    .line 1348
    const/4 v1, 0x0

    return-object v1

    .line 1350
    :cond_8
    invoke-static {v0, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v1

    return-object v1
.end method

.method getDisplayedContentSamplingAttributesInternal(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 4
    .param p1, "displayId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1325
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1326
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_8

    .line 1327
    const/4 v1, 0x0

    return-object v1

    .line 1329
    :cond_8
    invoke-static {v0}, Landroid/view/SurfaceControl;->getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v1

    return-object v1
.end method

.method getMinimumBrightnessCurveInternal()Landroid/hardware/display/Curve;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1119
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    return-object v0
.end method

.method getPreferredWideGamutColorSpaceIdInternal()I
    .registers 2

    .line 1123
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .registers 11
    .param p1, "phase"  # I

    .line 375
    const/16 v0, 0x64

    if-ne p1, v0, :cond_60

    .line 376
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 377
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 378
    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService$Injector;->getDefaultDisplayDelayTimeout()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 379
    .local v1, "timeout":J
    :goto_12
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v3, :cond_20

    goto :goto_22

    .line 396
    .end local v1  # "timeout":J
    :cond_20
    monitor-exit v0

    goto :goto_60

    .line 381
    .restart local v1  # "timeout":J
    :cond_22
    :goto_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_5d

    sub-long v5, v1, v5

    .line 382
    .local v5, "delay":J
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_36

    .line 392
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_33} :catch_34
    .catchall {:try_start_2e .. :try_end_33} :catchall_5d

    .line 394
    goto :goto_35

    .line 393
    :catch_34
    move-exception v3

    .line 395
    .end local v5  # "delay":J
    :goto_35
    goto :goto_12

    .line 383
    .restart local v5  # "delay":J
    :cond_36
    :try_start_36
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timeout waiting for default display to be initialized. DefaultDisplay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 385
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mVirtualDisplayAdapter="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1  # "phase":I
    throw v3

    .line 396
    .end local v1  # "timeout":J
    .end local v5  # "delay":J
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1  # "phase":I
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_36 .. :try_end_5f} :catchall_5d

    throw v1

    .line 398
    :cond_60
    :goto_60
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 363
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 364
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->loadStableDisplayValuesLocked()V

    .line 365
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_28

    .line 366
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 368
    new-instance v0, Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    const-string v2, "display"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/display/DisplayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 370
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 371
    return-void

    .line 365
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public onSwitchUser(I)V
    .registers 6
    .param p1, "newUserId"  # I

    .line 402
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 403
    .local v0, "userSerial":I
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 404
    :try_start_b
    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-eq v2, p1, :cond_1c

    .line 405
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 406
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 407
    invoke-virtual {v2, v0}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    .line 408
    .local v2, "config":Landroid/hardware/display/BrightnessConfiguration;
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v3, v2}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 410
    .end local v2  # "config":Landroid/hardware/display/BrightnessConfiguration;
    :cond_1c
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayPowerController;->onSwitchUser(I)V

    .line 411
    monitor-exit v1

    .line 412
    return-void

    .line 411
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw v2
.end method

.method performTraversalInternal(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 515
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v1, :cond_9

    .line 516
    monitor-exit v0

    return-void

    .line 518
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 520
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 521
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_27

    .line 524
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

    .line 525
    .local v1, "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;
    invoke-interface {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 526
    .end local v1  # "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;
    goto :goto_16

    .line 527
    :cond_26
    return-void

    .line 521
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method setDisplayedContentSamplingEnabledInternal(IZII)Z
    .registers 7
    .param p1, "displayId"  # I
    .param p2, "enable"  # Z
    .param p3, "componentMask"  # I
    .param p4, "maxFrames"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1335
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1336
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_8

    .line 1337
    const/4 v1, 0x0

    return v1

    .line 1339
    :cond_8
    invoke-static {v0, p2, p3, p4}, Landroid/view/SurfaceControl;->setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    move-result v1

    return v1
.end method

.method public setupSchedulerPolicies()V
    .registers 3

    .line 348
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 350
    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AnimationThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 352
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->get()Lcom/android/server/wm/SurfaceAnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 354
    return-void
.end method

.method public systemReady(ZZ)V
    .registers 6
    .param p1, "safeMode"  # Z
    .param p2, "onlyCore"  # Z

    .line 427
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 428
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    .line 429
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    .line 430
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 433
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 434
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2d

    .line 436
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$AllowedDisplayModeObserver;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$AllowedDisplayModeObserver;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector;->setListener(Lcom/android/server/display/DisplayModeDirector$Listener;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector;->start()V

    .line 439
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 440
    return-void

    .line 434
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 4
    .param p1, "config"  # Landroid/hardware/display/BrightnessConfiguration;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1146
    if-nez p1, :cond_3

    .line 1147
    return-void

    .line 1149
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->isBrightnessConfigurationTooDark(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1152
    return-void

    .line 1150
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "brightness curve is too dark"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public windowManagerAndInputReady()V
    .registers 3

    .line 416
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 417
    :try_start_3
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 418
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 419
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 420
    monitor-exit v0

    .line 421
    return-void

    .line 420
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method
