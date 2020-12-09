.class public Lcom/android/server/accessibility/AccessibilityManagerService;
.super Landroid/view/accessibility/IAccessibilityManager$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;,
        Lcom/android/server/accessibility/AccessibilityManagerService$UserState;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Client;,
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;,
        Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;,
        Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;,
        Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;,
        Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;,
        Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DEBUG:Z = false

.field private static final FUNCTION_DUMP:Ljava/lang/String; = "dump"

.field private static final FUNCTION_REGISTER_UI_TEST_AUTOMATION_SERVICE:Ljava/lang/String; = "registerUiTestAutomationService"

.field private static final GET_WINDOW_TOKEN:Ljava/lang/String; = "getWindowToken"

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManagerService"

.field public static final MAGNIFICATION_GESTURE_HANDLER_ID:I = 0x0

.field private static final OWN_PROCESS_ID:I

.field private static final SET_PIP_ACTION_REPLACEMENT:Ljava/lang/String; = "setPictureInPictureActionReplacingConnection"

.field private static final TEMPORARY_ENABLE_ACCESSIBILITY_UNTIL_KEYGUARD_REMOVED:Ljava/lang/String; = "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

.field private static final WAIT_FOR_USER_STATE_FULLY_INITIALIZED_MILLIS:I = 0xbb8

.field private static final WAIT_MOTION_INJECTOR_TIMEOUT_MILLIS:I = 0x3e8

.field private static final WAIT_WINDOWS_TIMEOUT_MILLIS:I = 0x1388

.field private static sIdCounter:I

.field private static sNextWindowId:I


# instance fields
.field private final mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

.field private final mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

.field private mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

.field private final mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

.field private final mGlobalClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInputFilter:Z

.field private mInitialized:Z

.field private mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field private mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

.field private mIsAccessibilityButtonShown:Z

.field private mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

.field private final mLock:Ljava/lang/Object;

.field private mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

.field private final mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

.field private mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mTempAccessibilityServiceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempComponentNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempIntArray:Landroid/util/IntArray;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

.field private mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 182
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    .line 187
    const/4 v0, 0x1

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 300
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 195
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    .line 202
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    .line 240
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    .line 245
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    .line 247
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 250
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 255
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 257
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 261
    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/android/server/accessibility/UiAutomationManager;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 263
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 301
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 302
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 303
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 304
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 305
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserManager:Landroid/os/UserManager;

    .line 306
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 307
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 308
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    .line 309
    new-instance v0, Lcom/android/server/accessibility/GlobalActionPerformer;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/GlobalActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    .line 310
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    .line 311
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 313
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V

    .line 314
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 314
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 316
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onBootPhase(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeUser(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .registers 3

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionLocked(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .registers 1

    .line 150
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    .registers 1

    .line 150
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2508()I
    .registers 2

    .line 150
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GlobalActionPerformer;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .registers 1

    .line 150
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 3

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/os/IBinder;
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowTokenLocked(I)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000()I
    .registers 1

    .line 150
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/app/AppOpsManager;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/MagnificationController;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .registers 3

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/UiAutomationManager;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V
    .registers 4

    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->putSecureIntForUser(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifySoftKeyboardShowModeChangedLocked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5800(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unlockUser(I)V

    return-void
.end method

.method private announceNewUserIfNeeded()V
    .registers 8

    .line 1131
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1132
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 1133
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1134
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1136
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v3, 0x104072d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 1137
    invoke-virtual {v1, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v1, v4, v5

    .line 1136
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1138
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 1140
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 1143
    :cond_41
    monitor-exit v0

    .line 1144
    return-void

    .line 1143
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private broadcastToClients(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accessibility/AccessibilityManagerService$UserState;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Client;",
            ">;)V"
        }
    .end annotation

    .line 1532
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 1533
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1, p2}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 1534
    return-void
.end method

.method private canRegisterService(Landroid/content/pm/ServiceInfo;)Z
    .registers 9

    .line 1389
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "Skipping accessibility service "

    const-string v4, "AccessibilityManagerService"

    if-nez v0, :cond_37

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": it does not require the permission "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1391
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    return v2

    .line 1398
    :cond_37
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1399
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v6, "android:bind_accessibility_service"

    invoke-virtual {v1, v6, v0, v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6c

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": disallowed by AppOps"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1401
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    return v2

    .line 1407
    :cond_6c
    const/4 p1, 0x1

    return p1
.end method

.method private canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 7

    .line 2182
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-nez v0, :cond_c

    goto :goto_4a

    .line 2185
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    if-gt v0, v2, :cond_40

    .line 2190
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 2191
    return v3

    .line 2192
    :cond_2a
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz p2, :cond_34

    .line 2193
    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_49

    .line 2194
    :cond_34
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$bNCuysjTCG2afhYMHuqu25CfY5g;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$bNCuysjTCG2afhYMHuqu25CfY5g;

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_49

    .line 2202
    :cond_40
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_49

    .line 2204
    return v3

    .line 2207
    :cond_49
    :goto_49
    return v1

    .line 2183
    :cond_4a
    :goto_4a
    return v1
.end method

.method private computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .registers 9

    .line 1486
    nop

    .line 1488
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1489
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_a
    if-ge v2, v0, :cond_28

    .line 1490
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1491
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageWhitelist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1492
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getRelevantEventTypes()I

    move-result v4

    goto :goto_24

    .line 1493
    :cond_23
    move v4, v1

    :goto_24
    or-int/2addr v3, v4

    .line 1489
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1496
    :cond_28
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 1497
    invoke-virtual {p1}, Lcom/android/server/accessibility/UiAutomationManager;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p1

    .line 1496
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageWhitelist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 1498
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {p1}, Lcom/android/server/accessibility/UiAutomationManager;->getRelevantEventTypes()I

    move-result v1

    goto :goto_3c

    .line 1499
    :cond_3b
    nop

    :goto_3c
    or-int p1, v3, v1

    .line 1500
    return p1
.end method

.method private disableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    .registers 5

    .line 2458
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2459
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string v1, "enabled_accessibility_services"

    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 2461
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2462
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 2465
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p2

    .line 2466
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2467
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2469
    :cond_25
    return-void
.end method

.method private enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    .registers 5

    .line 2441
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2442
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string v1, "enabled_accessibility_services"

    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 2444
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2445
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 2448
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p2

    .line 2449
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2450
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2452
    :cond_25
    return-void
.end method

.method private findWindowIdLocked(Landroid/os/IBinder;)I
    .registers 4

    .line 2715
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 2716
    if-ltz v0, :cond_f

    .line 2717
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    .line 2719
    :cond_f
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 2720
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    .line 2721
    if-ltz p1, :cond_22

    .line 2722
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    .line 2724
    :cond_22
    const/4 p1, -0x1

    return p1
.end method

.method private findWindowTokenLocked(I)Landroid/os/IBinder;
    .registers 3

    .line 2707
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2708
    if-eqz v0, :cond_b

    .line 2709
    return-object v0

    .line 2711
    :cond_b
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method private getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .registers 2

    .line 273
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method private getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    .registers 3

    .line 1179
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1180
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    if-nez v1, :cond_e

    .line 1181
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    .line 1183
    :cond_e
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    monitor-exit v0

    return-object v1

    .line 1184
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)J
    .registers 4

    .line 2534
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractiveUiTimeout:I

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mNonInteractiveUiTimeout:I

    invoke-static {v0, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUserState(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .registers 3

    .line 342
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 344
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method private getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 349
    if-nez v0, :cond_14

    .line 350
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    .line 351
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    :cond_14
    return-object v0
.end method

.method private static isClientInPackageWhitelist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z
    .registers 7

    .line 1505
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1507
    :cond_4
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 1508
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    .line 1509
    if-nez v1, :cond_23

    if-eqz p1, :cond_23

    .line 1510
    array-length v2, p1

    :goto_11
    if-ge v0, v2, :cond_23

    aget-object v3, p1, v0

    .line 1511
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1512
    nop

    .line 1513
    const/4 v1, 0x1

    goto :goto_23

    .line 1510
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1517
    :cond_23
    :goto_23
    nop

    .line 1527
    return v1
.end method

.method public static synthetic lambda$2LOhxU7QkqHWHlN_uVPLmAzrNWk(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->showAccessibilityButtonTargetSelection(I)V

    return-void
.end method

.method public static synthetic lambda$5vwr6qV-eqdCr73CeDmVnsJlZHM(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToAllClients(II)V

    return-void
.end method

.method public static synthetic lambda$BX2CMQr5jU9WhPYx7Aaae4zgxf4(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventToInputFilter(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static synthetic lambda$Gu-W_dQ2mWyy8l4tm19TzFxGbeM(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->announceNewUserIfNeeded()V

    return-void
.end method

.method public static synthetic lambda$bNCuysjTCG2afhYMHuqu25CfY5g(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic lambda$fHb6jcCpfXvxrnf-dXJngiIFuoo(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityButtonToInputFilter(I)V

    return-void
.end method

.method public static synthetic lambda$heq1MRdQjg8BGWFbpV3PEpnDVcg(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/RemoteCallbackList;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendServicesStateChanged(Landroid/os/RemoteCallbackList;J)V

    return-void
.end method

.method public static synthetic lambda$mAPLBShddfLlktd9Q8jVo04VVXo(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic lambda$notifyClientsOfServicesStateChange$3(JLandroid/view/accessibility/IAccessibilityManagerClient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1713
    invoke-interface {p2, p0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->notifyServicesStateChanged(J)V

    return-void
.end method

.method static synthetic lambda$sendStateToClients$2(ILandroid/view/accessibility/IAccessibilityManagerClient;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1694
    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V

    return-void
.end method

.method public static synthetic lambda$w0ifSldCn8nADYgU7v1foSdmfe0(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method public static synthetic lambda$zXJtauhUptSkQJSF-M55-grAVbo(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(II)V

    return-void
.end method

.method private notifyAccessibilityButtonClickedLocked(I)V
    .registers 7

    .line 1234
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1236
    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    .line 1237
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_e
    if-ltz v2, :cond_21

    .line 1238
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1239
    iget-boolean v4, v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v4, :cond_1e

    .line 1240
    add-int/lit8 v1, v1, 0x1

    .line 1237
    :cond_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 1244
    :cond_21
    if-nez v1, :cond_24

    .line 1245
    return-void

    .line 1247
    :cond_24
    if-ne v1, v3, :cond_56

    .line 1248
    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v1, :cond_3a

    .line 1249
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$fHb6jcCpfXvxrnf-dXJngiIFuoo;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$fHb6jcCpfXvxrnf-dXJngiIFuoo;

    .line 1251
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1249
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1252
    return-void

    .line 1254
    :cond_3a
    iget-object p1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_41
    if-ltz p1, :cond_bb

    .line 1255
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1256
    iget-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v2, :cond_53

    .line 1259
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonClickedLocked()V

    .line 1260
    return-void

    .line 1254
    :cond_53
    add-int/lit8 p1, p1, -0x1

    goto :goto_41

    .line 1265
    :cond_56
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    if-nez v1, :cond_6e

    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-nez v1, :cond_6e

    .line 1267
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$2LOhxU7QkqHWHlN_uVPLmAzrNWk;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$2LOhxU7QkqHWHlN_uVPLmAzrNWk;

    .line 1269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1267
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_ac

    .line 1270
    :cond_6e
    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v1, :cond_86

    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-eqz v1, :cond_86

    .line 1272
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$fHb6jcCpfXvxrnf-dXJngiIFuoo;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$fHb6jcCpfXvxrnf-dXJngiIFuoo;

    .line 1274
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1272
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1275
    return-void

    .line 1277
    :cond_86
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_8d
    if-ltz v1, :cond_ac

    .line 1278
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1279
    iget-boolean v3, v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v3, :cond_a9

    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 1283
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonClickedLocked()V

    .line 1284
    return-void

    .line 1277
    :cond_a9
    add-int/lit8 v1, v1, -0x1

    goto :goto_8d

    .line 1289
    :cond_ac
    :goto_ac
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$2LOhxU7QkqHWHlN_uVPLmAzrNWk;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$2LOhxU7QkqHWHlN_uVPLmAzrNWk;

    .line 1291
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1289
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1293
    :cond_bb
    return-void
.end method

.method private notifyAccessibilityButtonVisibilityChangedLocked(Z)V
    .registers 5

    .line 1311
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1312
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityButtonShown:Z

    .line 1313
    iget-object p1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_e
    if-ltz p1, :cond_27

    .line 1314
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1315
    iget-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v2, :cond_24

    .line 1316
    nop

    .line 1317
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v2

    .line 1316
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    .line 1313
    :cond_24
    add-int/lit8 p1, p1, -0x1

    goto :goto_e

    .line 1320
    :cond_27
    return-void
.end method

.method private notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 8

    .line 1450
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1451
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_b
    if-ge v1, v2, :cond_1f

    .line 1452
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1454
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIsDefault:Z

    if-ne v4, p2, :cond_1c

    .line 1455
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_1c} :catch_20

    .line 1451
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1462
    :cond_1f
    goto :goto_21

    .line 1458
    :catch_20
    move-exception p1

    .line 1463
    :goto_21
    return-void
.end method

.method private notifyClearAccessibilityCacheLocked()V
    .registers 4

    .line 1209
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1210
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_1c

    .line 1211
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1212
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyClearAccessibilityNodeInfoCache()V

    .line 1210
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1214
    :cond_1c
    return-void
.end method

.method private notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;J)V"
        }
    .end annotation

    .line 1712
    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$_rvRsbhZRBJitXrpMqI0NptLUa8;

    invoke-direct {v0, p2, p3}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$_rvRsbhZRBJitXrpMqI0NptLUa8;-><init>(J)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 1714
    return-void
.end method

.method private notifyGestureLocked(IZ)Z
    .registers 8

    .line 1197
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1198
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_c
    if-ltz v1, :cond_25

    .line 1199
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1200
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-eqz v4, :cond_22

    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIsDefault:Z

    if-ne v4, p2, :cond_22

    .line 1201
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyGesture(I)V

    .line 1202
    return v2

    .line 1198
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1205
    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method private notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V
    .registers 15

    .line 1218
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1219
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_22

    .line 1220
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1221
    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V

    .line 1219
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1223
    :cond_22
    return-void
.end method

.method private notifyOutsideTouchIfNeeded(II)V
    .registers 7

    .line 2728
    const/16 v0, 0x10

    if-eq p2, v0, :cond_9

    const/16 v0, 0x20

    if-eq p2, v0, :cond_9

    .line 2729
    return-void

    .line 2733
    :cond_9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2734
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2735
    :try_start_11
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$2000(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Ljava/util/List;

    move-result-object p1

    .line 2736
    const/4 v1, 0x0

    move v2, v1

    :goto_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 2737
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2736
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 2739
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_50

    .line 2740
    nop

    :goto_35
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_4f

    .line 2741
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 2742
    if-eqz p1, :cond_4c

    .line 2744
    :try_start_43
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->notifyOutsideTouch()V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4a} :catch_4b

    .line 2749
    goto :goto_4c

    .line 2745
    :catch_4b
    move-exception p1

    .line 2740
    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 2752
    :cond_4f
    return-void

    .line 2739
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method private notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 5

    .line 1226
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1227
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_1c

    .line 1228
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1229
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedLocked(I)V

    .line 1227
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1231
    :cond_1c
    return-void
.end method

.method private onBootPhase(I)V
    .registers 3

    .line 334
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_18

    .line 335
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android.software.app_widgets"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 336
    const-class p1, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetManagerInternal;

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    .line 339
    :cond_18
    return-void
.end method

.method private onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 3

    .line 1843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    .line 1844
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1845
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1846
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityShortcutLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1847
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1848
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityFocusBehaviorLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1849
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1850
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1851
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updatePerformGesturesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1852
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1853
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1854
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1855
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateRelevantEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1856
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1857
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1858
    return-void
.end method

.method private putSecureIntForUser(Ljava/lang/String;II)V
    .registers 7

    .line 2621
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2623
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 2625
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2626
    nop

    .line 2627
    return-void

    .line 2625
    :catchall_12
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private readAccessibilityButtonSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 7

    .line 2093
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const-string v2, "accessibility_button_target_component"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2095
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_25

    .line 2096
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    if-nez v0, :cond_20

    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-nez v0, :cond_20

    .line 2098
    return v4

    .line 2100
    :cond_20
    iput-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    .line 2101
    iput-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    .line 2102
    return v3

    .line 2105
    :cond_25
    const-class v1, Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2106
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-eqz v0, :cond_36

    .line 2107
    return v4

    .line 2109
    :cond_36
    iput-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    .line 2110
    iput-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    .line 2111
    return v3

    .line 2114
    :cond_3b
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2115
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2116
    return v4

    .line 2118
    :cond_48
    iput-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    .line 2119
    iput-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    .line 2120
    return v3
.end method

.method private readAccessibilityShortcutSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 6

    .line 2071
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2072
    invoke-static {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2073
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_29

    .line 2080
    :cond_13
    nop

    .line 2081
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2082
    if-eqz v0, :cond_23

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    .line 2083
    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2084
    return v1

    .line 2087
    :cond_23
    iput-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    .line 2088
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2089
    return v2

    .line 2074
    :cond_29
    :goto_29
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    if-nez v0, :cond_2e

    .line 2075
    return v1

    .line 2077
    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    .line 2078
    return v2
.end method

.method private readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 6

    .line 2024
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2025
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2024
    const/4 v2, 0x0

    const-string v3, "accessibility_autoclick_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 2028
    :goto_15
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    if-eq v0, v3, :cond_1c

    .line 2029
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    .line 2030
    return v1

    .line 2032
    :cond_1c
    return v2
.end method

.method private readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 1555
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1557
    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 1558
    return-void
.end method

.method private readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .line 1572
    if-nez p3, :cond_5

    .line 1573
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 1575
    :cond_5
    if-eqz p1, :cond_29

    .line 1576
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 1577
    invoke-virtual {p3, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1578
    :cond_c
    :goto_c
    invoke-virtual {p3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1579
    invoke-virtual {p3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    .line 1580
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1f

    .line 1581
    goto :goto_c

    .line 1583
    :cond_1f
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 1584
    if-eqz p1, :cond_28

    .line 1585
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1587
    :cond_28
    goto :goto_c

    .line 1589
    :cond_29
    return-void
.end method

.method private readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 4

    .line 1967
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    .line 1968
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1969
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1970
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1971
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1972
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1973
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1974
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1975
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1976
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p1

    or-int/2addr p1, v0

    .line 1977
    return p1
.end method

.method private readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 5

    .line 1411
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1412
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string v2, "enabled_accessibility_services"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 1414
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1415
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1416
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1417
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1418
    const/4 p1, 0x1

    return p1

    .line 1420
    :cond_2b
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1421
    const/4 p1, 0x0

    return p1
.end method

.method private readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 6

    .line 2036
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2037
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2036
    const/4 v2, 0x0

    const-string v3, "high_text_contrast_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 2040
    :goto_15
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTextHighContrastEnabled:Z

    if-eq v0, v3, :cond_1c

    .line 2041
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTextHighContrastEnabled:Z

    .line 2042
    return v1

    .line 2044
    :cond_1c
    return v2
.end method

.method private readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 9

    .line 1345
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1347
    nop

    .line 1353
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindInstantServiceAllowed()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1354
    const v0, 0x8c8084

    goto :goto_13

    .line 1353
    :cond_10
    const v0, 0xc8084

    .line 1357
    :goto_13
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1360
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_28
    if-ge v3, v1, :cond_51

    .line 1361
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1362
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1364
    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->canRegisterService(Landroid/content/pm/ServiceInfo;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 1365
    goto :goto_4e

    .line 1370
    :cond_39
    :try_start_39
    new-instance v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v4, v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .line 1371
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_45} :catch_46
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_45} :catch_46

    .line 1374
    goto :goto_4e

    .line 1372
    :catch_46
    move-exception v4

    .line 1373
    const-string v5, "AccessibilityManagerService"

    const-string v6, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1360
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 1377
    :cond_51
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 1378
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1379
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1380
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1381
    const/4 p1, 0x1

    return p1

    .line 1384
    :cond_6e
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1385
    return v2
.end method

.method private readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 8

    .line 2006
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2007
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2006
    const/4 v2, 0x0

    const-string v3, "accessibility_display_magnification_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 2010
    :goto_15
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2011
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2010
    const-string v5, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, v2

    .line 2014
    :goto_28
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-ne v0, v4, :cond_32

    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eq v3, v4, :cond_31

    goto :goto_32

    .line 2020
    :cond_31
    return v2

    .line 2016
    :cond_32
    :goto_32
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 2017
    iput-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    .line 2018
    return v1
.end method

.method private readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 6

    .line 1995
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 1996
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 1995
    const/4 v2, 0x0

    const-string/jumbo v3, "touch_exploration_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    .line 1998
    :goto_16
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eq v0, v3, :cond_1d

    .line 1999
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 2000
    return v1

    .line 2002
    :cond_1d
    return v2
.end method

.method private readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 5

    .line 1426
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1427
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string/jumbo v2, "touch_exploration_granted_accessibility_services"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 1430
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1431
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1432
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1433
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1434
    const/4 p1, 0x1

    return p1

    .line 1436
    :cond_2c
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1437
    const/4 p1, 0x0

    return p1
.end method

.method private readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 7

    .line 2124
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2125
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2124
    const/4 v2, 0x0

    const-string v3, "accessibility_non_interactive_ui_timeout_ms"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2128
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2129
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2128
    const-string v4, "accessibility_interactive_ui_timeout_ms"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 2132
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserNonInteractiveUiTimeout:I

    if-ne v0, v3, :cond_27

    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserInteractiveUiTimeout:I

    if-eq v1, v3, :cond_26

    goto :goto_27

    .line 2139
    :cond_26
    return v2

    .line 2134
    :cond_27
    :goto_27
    iput v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserNonInteractiveUiTimeout:I

    .line 2135
    iput v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserInteractiveUiTimeout:I

    .line 2136
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2137
    const/4 p1, 0x1

    return p1
.end method

.method private registerBroadcastReceivers()V
    .registers 12

    .line 378
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 489
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 492
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 493
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    const-string v0, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    invoke-direct {v6, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 529
    return-void
.end method

.method private removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;",
            ">;)I"
        }
    .end annotation

    .line 810
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 811
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_24

    .line 812
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_21

    .line 813
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    .line 814
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 815
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 816
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->unlinkToDeath()V

    .line 817
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 818
    return p1

    .line 811
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 821
    :cond_24
    const/4 p1, -0x1

    return p1
.end method

.method private removeAccessibilityInteractionConnectionLocked(II)V
    .registers 4

    .line 1330
    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    .line 1331
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1332
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1c

    .line 1334
    :cond_e
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p2

    .line 1335
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1336
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1338
    :goto_1c
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onAccessibilityClientRemovedLocked(I)V

    .line 1342
    return-void
.end method

.method private removeUser(I)V
    .registers 4

    .line 1157
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1158
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1159
    monitor-exit v0

    .line 1160
    return-void

    .line 1159
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 7

    .line 1698
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateRecommendedUiTimeoutLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1699
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$heq1MRdQjg8BGWFbpV3PEpnDVcg;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$heq1MRdQjg8BGWFbpV3PEpnDVcg;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 1701
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1699
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1702
    return-void
.end method

.method private scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 5

    .line 1671
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result v0

    .line 1672
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    if-eq v1, v0, :cond_2f

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 1673
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-gtz v1, :cond_18

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 1674
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-lez v1, :cond_2f

    .line 1675
    :cond_18
    iput v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    .line 1676
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v2, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$5vwr6qV-eqdCr73CeDmVnsJlZHM;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$5vwr6qV-eqdCr73CeDmVnsJlZHM;

    .line 1678
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1676
    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1680
    :cond_2f
    return-void
.end method

.method private scheduleUpdateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 4

    .line 1722
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$mAPLBShddfLlktd9Q8jVo04VVXo;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$mAPLBShddfLlktd9Q8jVo04VVXo;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1725
    return-void
.end method

.method private scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 4

    .line 1717
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$w0ifSldCn8nADYgU7v1foSdmfe0;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$w0ifSldCn8nADYgU7v1foSdmfe0;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1719
    return-void
.end method

.method private sendAccessibilityButtonToInputFilter(I)V
    .registers 4

    .line 1296
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1297
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_10

    .line 1298
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityButtonClicked(I)V

    .line 1300
    :cond_10
    monitor-exit v0

    .line 1301
    return-void

    .line 1300
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method private sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 5

    .line 2473
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 2474
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY;

    .line 2476
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2474
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2477
    return-void
.end method

.method private sendAccessibilityEventToInputFilter(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 633
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_10

    .line 635
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 637
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    .line 638
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 639
    return-void

    .line 637
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method private sendServicesStateChanged(Landroid/os/RemoteCallbackList;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;J)V"
        }
    .end annotation

    .line 1706
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V

    .line 1707
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V

    .line 1708
    return-void
.end method

.method private sendStateToAllClients(II)V
    .registers 4

    .line 1683
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 1684
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(II)V

    .line 1685
    return-void
.end method

.method private sendStateToClients(II)V
    .registers 3

    .line 1688
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserState(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 1689
    return-void
.end method

.method private sendStateToClients(ILandroid/os/RemoteCallbackList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;)V"
        }
    .end annotation

    .line 1693
    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$K4sS36agT2_B03tVUTy8mldugxY;

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$K4sS36agT2_B03tVUTy8mldugxY;-><init>(I)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 1695
    return-void
.end method

.method private showAccessibilityButtonTargetSelection(I)V
    .registers 5

    .line 1304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1305
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1306
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 1307
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1308
    return-void
.end method

.method private showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 9

    .line 1782
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1783
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 1784
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1786
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 1787
    iget-boolean v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v3, :cond_23

    .line 1788
    monitor-exit v0

    return-void

    .line 1790
    :cond_23
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 1791
    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1792
    monitor-exit v0

    return-void

    .line 1794
    :cond_31
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1010355

    .line 1795
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$4;

    invoke-direct {v5, p0, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$4;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 1796
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$3;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1817
    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x1040223

    .line 1823
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1040222

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 1824
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1826
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 1827
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7d3

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 1829
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1831
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1832
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 1833
    monitor-exit v0

    .line 1834
    return-void

    .line 1833
    :catchall_9d
    move-exception p1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_3 .. :try_end_9f} :catchall_9d

    throw p1
.end method

.method private switchUser(I)V
    .registers 8

    .line 1090
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    :try_start_3
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_d

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    if-eqz v1, :cond_d

    .line 1092
    monitor-exit v0

    return-void

    .line 1096
    :cond_d
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 1097
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->onSwitchToAnotherUserLocked()V

    .line 1100
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_32

    .line 1101
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v4, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$zXJtauhUptSkQJSF-M55-grAVbo;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$zXJtauhUptSkQJSF-M55-grAVbo;

    .line 1103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1101
    invoke-static {v4, p0, v5, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1107
    :cond_32
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1108
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_49

    goto :goto_4a

    :cond_49
    move v2, v3

    .line 1111
    :goto_4a
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 1113
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p1

    .line 1115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    .line 1119
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1121
    if-eqz v2, :cond_65

    .line 1123
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gu-W_dQ2mWyy8l4tm19TzFxGbeM;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gu-W_dQ2mWyy8l4tm19TzFxGbeM;

    .line 1124
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    .line 1123
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1127
    :cond_65
    monitor-exit v0

    .line 1128
    return-void

    .line 1127
    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw p1
.end method

.method private unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 4

    .line 1537
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1538
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-lez v0, :cond_15

    .line 1541
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    .line 1538
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1543
    :cond_15
    return-void
.end method

.method private unlockUser(I)V
    .registers 4

    .line 1147
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1148
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)I

    move-result p1

    .line 1149
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne p1, v1, :cond_16

    .line 1150
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p1

    .line 1151
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1153
    :cond_16
    monitor-exit v0

    .line 1154
    return-void

    .line 1153
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method private updateAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 5

    .line 2311
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_21

    .line 2312
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2313
    iget-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v2, :cond_1e

    .line 2314
    nop

    .line 2315
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v2

    .line 2314
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    .line 2311
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2318
    :cond_21
    return-void
.end method

.method private updateAccessibilityEnabledSetting(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 9

    .line 1981
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1982
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v2}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_17

    .line 1983
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_17

    :cond_15
    move v2, v3

    goto :goto_18

    :cond_17
    :goto_17
    move v2, v4

    .line 1985
    :goto_18
    :try_start_18
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_enabled"

    .line 1987
    if-eqz v2, :cond_23

    move v3, v4

    :cond_23
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 1985
    invoke-static {v5, v6, v3, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2d

    .line 1990
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1991
    nop

    .line 1992
    return-void

    .line 1990
    :catchall_2d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private updateAccessibilityFocusBehaviorLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 7

    .line 1870
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1871
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1872
    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_1c

    .line 1873
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1874
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->canRetrieveInteractiveWindowsLocked()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1875
    iput-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    .line 1876
    return-void

    .line 1872
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1879
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    .line 1880
    return-void
.end method

.method private updateAccessibilityShortcutLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 9

    .line 2150
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    if-nez v0, :cond_5

    .line 2151
    return-void

    .line 2154
    :cond_5
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    .line 2155
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 2156
    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-nez v0, :cond_33

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 2158
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    .line 2159
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2160
    const/4 v0, 0x1

    .line 2157
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2163
    :cond_33
    if-nez v0, :cond_5f

    .line 2164
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    .line 2165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2167
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_shortcut_target_service"

    iget v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v4, v5, v0, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2171
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accessibility_shortcut_enabled"

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v0, v4, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_56
    .catchall {:try_start_3c .. :try_end_56} :catchall_5a

    .line 2174
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2175
    goto :goto_5f

    .line 2174
    :catchall_5a
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2177
    :cond_5f
    :goto_5f
    return-void
.end method

.method private updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 7

    .line 1952
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1953
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_25

    .line 1954
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1955
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    if-eqz v4, :cond_22

    .line 1956
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_22

    .line 1959
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    .line 1960
    return-void

    .line 1953
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1963
    :cond_25
    iput-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    .line 1964
    return-void
.end method

.method private updateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 8

    .line 2280
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2281
    :try_start_3
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2282
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-nez v1, :cond_53

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.fingerprint"

    .line 2283
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 2285
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2286
    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_53

    .line 2287
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 2288
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_5c

    .line 2289
    nop

    .line 2291
    :try_start_2b
    const-string v5, "fingerprint"

    .line 2292
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 2291
    invoke-static {v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v5
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_4b

    .line 2294
    :try_start_35
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2295
    nop

    .line 2296
    if-eqz v5, :cond_50

    .line 2297
    new-instance v1, Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2298
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v5, v2, v3}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;-><init>(Landroid/hardware/fingerprint/IFingerprintService;Landroid/content/res/Resources;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    .line 2299
    goto :goto_53

    .line 2294
    :catchall_4b
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2286
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 2304
    :cond_53
    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_35 .. :try_end_54} :catchall_5c

    .line 2305
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-eqz v0, :cond_5b

    .line 2306
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->updateClientList(Ljava/util/List;)V

    .line 2308
    :cond_5b
    return-void

    .line 2304
    :catchall_5c
    move-exception p1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p1
.end method

.method private updateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 8

    .line 1728
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1730
    :cond_9
    nop

    .line 1731
    nop

    .line 1732
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1733
    nop

    .line 1734
    :try_start_f
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    .line 1735
    move v1, v2

    goto :goto_18

    .line 1734
    :cond_17
    move v1, v3

    .line 1737
    :goto_18
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v4, :cond_1e

    .line 1738
    or-int/lit8 v1, v1, 0x40

    .line 1740
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->userHasMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1741
    or-int/lit8 v1, v1, 0x20

    .line 1744
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    move-result v4

    if-eqz v4, :cond_32

    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v4, :cond_32

    .line 1745
    or-int/lit8 v1, v1, 0x2

    .line 1747
    :cond_32
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    if-eqz v4, :cond_38

    .line 1748
    or-int/lit8 v1, v1, 0x4

    .line 1750
    :cond_38
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    if-eqz v4, :cond_3e

    .line 1751
    or-int/lit8 v1, v1, 0x8

    .line 1753
    :cond_3e
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsPerformGesturesEnabled:Z

    if-eqz v4, :cond_44

    .line 1754
    or-int/lit8 v1, v1, 0x10

    .line 1756
    :cond_44
    const/4 v4, 0x0

    if-eqz v1, :cond_67

    .line 1757
    iget-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-nez v5, :cond_5e

    .line 1758
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 1759
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-nez v3, :cond_5a

    .line 1760
    new-instance v3, Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 1763
    :cond_5a
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 1764
    move-object v4, v3

    goto :goto_5f

    .line 1757
    :cond_5e
    move v2, v3

    .line 1766
    :goto_5f
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v3, p1, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setUserAndEnabledFeatures(II)V

    goto :goto_77

    .line 1768
    :cond_67
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_76

    .line 1769
    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 1770
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v1, p1, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setUserAndEnabledFeatures(II)V

    .line 1771
    nop

    .line 1772
    goto :goto_77

    .line 1768
    :cond_76
    move v2, v3

    .line 1775
    :goto_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_f .. :try_end_78} :catchall_80

    .line 1776
    if-eqz v2, :cond_7f

    .line 1777
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 1779
    :cond_7f
    return-void

    .line 1775
    :catchall_80
    move-exception p1

    :try_start_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw p1
.end method

.method private updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 8

    .line 1920
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1921
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_48

    .line 1922
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1923
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1924
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_45

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x11

    if-gt v4, v5, :cond_45

    .line 1928
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1931
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 1921
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1936
    :cond_48
    return-void
.end method

.method private updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 6

    .line 2211
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v1, :cond_7

    .line 2212
    return-void

    .line 2215
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    if-eqz v0, :cond_17

    .line 2217
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->unregisterAll()V

    .line 2218
    return-void

    .line 2224
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2225
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4f

    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v1, :cond_25

    goto :goto_4f

    .line 2235
    :cond_25
    nop

    :goto_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4e

    .line 2236
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    .line 2237
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 2238
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->userHasListeningMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;I)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 2239
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/MagnificationController;->register(I)V

    goto :goto_4b

    .line 2240
    :cond_44
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    if-eqz v3, :cond_4b

    .line 2241
    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    .line 2235
    :cond_4b
    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 2244
    :cond_4e
    return-void

    .line 2227
    :cond_4f
    :goto_4f
    nop

    :goto_50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_6a

    .line 2228
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Display;

    .line 2229
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->register(I)V

    .line 2227
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 2231
    :cond_6a
    return-void
.end method

.method private updatePerformGesturesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 6

    .line 1939
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1940
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_21

    .line 1941
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1942
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1e

    .line 1944
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsPerformGesturesEnabled:Z

    .line 1945
    return-void

    .line 1940
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1948
    :cond_21
    iput-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsPerformGesturesEnabled:Z

    .line 1949
    return-void
.end method

.method private updateRecommendedUiTimeoutLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 9

    .line 2321
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserNonInteractiveUiTimeout:I

    .line 2322
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserInteractiveUiTimeout:I

    .line 2324
    if-eqz v0, :cond_8

    if-nez v1, :cond_40

    .line 2325
    :cond_8
    nop

    .line 2326
    nop

    .line 2327
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2328
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3a

    .line 2329
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getInteractiveUiTimeoutMillis()I

    move-result v6

    .line 2330
    if-ge v4, v6, :cond_26

    .line 2331
    move v4, v6

    .line 2333
    :cond_26
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getNonInteractiveUiTimeoutMillis()I

    move-result v6

    .line 2334
    if-ge v5, v6, :cond_37

    .line 2335
    move v5, v6

    .line 2328
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2338
    :cond_3a
    if-nez v0, :cond_3d

    .line 2339
    move v0, v5

    .line 2341
    :cond_3d
    if-nez v1, :cond_40

    .line 2342
    move v1, v4

    .line 2345
    :cond_40
    iput v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mNonInteractiveUiTimeout:I

    .line 2346
    iput v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractiveUiTimeout:I

    .line 2347
    return-void
.end method

.method private updateRelevantEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 4

    .line 1466
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$RFkfb_W9wnTTs_gy8Dg3k2uQOYQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$RFkfb_W9wnTTs_gy8Dg3k2uQOYQ;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1483
    return-void
.end method

.method private updateServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 24

    .line 1612
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    iget-object v15, v14, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 1614
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iget v1, v14, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 1615
    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v16

    .line 1617
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/16 v17, 0x0

    move/from16 v11, v17

    :goto_1e
    if-ge v11, v12, :cond_ce

    .line 1618
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1619
    nop

    .line 1620
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1619
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1622
    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1625
    if-nez v16, :cond_5c

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isDirectBootAware()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring non-encryption-aware service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    move/from16 v21, v11

    move/from16 v20, v12

    goto/16 :goto_c8

    .line 1631
    :cond_5c
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1632
    move/from16 v21, v11

    move/from16 v20, v12

    goto :goto_c8

    .line 1634
    :cond_6b
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    iget-object v1, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 1635
    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v1

    if-nez v1, :cond_ba

    .line 1636
    if-nez v0, :cond_a9

    .line 1637
    new-instance v18, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v2, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v0, v5, 0x1

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    iget-object v6, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v7, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    iget-object v8, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v10, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v9, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    iget-object v1, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v0, v18

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    move-object/from16 v20, v9

    move-object/from16 v9, p0

    move/from16 v21, v11

    move-object/from16 v11, v20

    move/from16 v20, v12

    move-object/from16 v12, v19

    invoke-direct/range {v0 .. v12}, Lcom/android/server/accessibility/AccessibilityServiceConnection;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;Lcom/android/server/wm/ActivityTaskManagerInternal;)V

    goto :goto_b6

    .line 1641
    :cond_a9
    move/from16 v21, v11

    move/from16 v20, v12

    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 1642
    goto :goto_c8

    .line 1644
    :cond_b6
    :goto_b6
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->bindLocked()V

    goto :goto_c8

    .line 1635
    :cond_ba
    move/from16 v21, v11

    move/from16 v20, v12

    goto :goto_c3

    .line 1634
    :cond_bf
    move/from16 v21, v11

    move/from16 v20, v12

    .line 1646
    :goto_c3
    if-eqz v0, :cond_c8

    .line 1647
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    .line 1617
    :cond_c8
    :goto_c8
    add-int/lit8 v11, v21, 0x1

    move/from16 v12, v20

    goto/16 :goto_1e

    .line 1652
    :cond_ce
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1653
    iget-object v1, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 1654
    move/from16 v1, v17

    :goto_db
    if-ge v1, v0, :cond_fb

    .line 1655
    iget-object v2, v14, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1656
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1657
    if-eqz v2, :cond_f8

    .line 1658
    iget-object v3, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    .line 1654
    :cond_f8
    add-int/lit8 v1, v1, 0x1

    goto :goto_db

    .line 1662
    :cond_fb
    const-class v0, Landroid/media/AudioManagerInternal;

    .line 1663
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    .line 1664
    if-eqz v0, :cond_10a

    .line 1665
    iget-object v1, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->setAccessibilityServiceUids(Landroid/util/IntArray;)V

    .line 1667
    :cond_10a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityEnabledSetting(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1668
    return-void
.end method

.method private updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 9

    .line 2048
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->isTouchExplorationEnabledLocked()Z

    move-result v0

    .line 2049
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2050
    const/4 v2, 0x0

    move v3, v2

    :goto_e
    const/4 v4, 0x1

    if-ge v3, v1, :cond_25

    .line 2051
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2052
    invoke-direct {p0, v5, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2053
    nop

    .line 2054
    move v0, v4

    goto :goto_25

    .line 2050
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 2057
    :cond_25
    :goto_25
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eq v0, v1, :cond_49

    .line 2058
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 2059
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2061
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "touch_exploration_enabled"

    .line 2062
    if-eqz v0, :cond_3b

    move v2, v4

    :cond_3b
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2061
    invoke-static {v1, v3, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_44

    .line 2065
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2066
    goto :goto_49

    .line 2065
    :catchall_44
    move-exception p1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2068
    :cond_49
    :goto_49
    return-void
.end method

.method private updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 6

    .line 1889
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->canRetrieveInteractiveWindowsLocked()Z

    move-result v0

    .line 1890
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1891
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1892
    const/4 v2, 0x0

    :goto_d
    if-nez v0, :cond_21

    if-ge v2, v1, :cond_21

    .line 1893
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1894
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->canRetrieveInteractiveWindowsLocked()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1895
    const/4 v0, 0x1

    .line 1892
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1899
    :cond_21
    if-eqz v0, :cond_36

    .line 1900
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez p1, :cond_35

    .line 1901
    new-instance p1, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    .line 1902
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    .line 1905
    :cond_35
    return-void

    .line 1908
    :cond_36
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-eqz p1, :cond_47

    .line 1909
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    .line 1910
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    .line 1912
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->clearWindowsLocked()V

    .line 1914
    :cond_47
    return-void
.end method

.method private userHasListeningMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;I)Z
    .registers 8

    .line 2267
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2268
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_23

    .line 2269
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2270
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2271
    invoke-virtual {v3, p2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isMagnificationCallbackEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2272
    const/4 p1, 0x1

    return p1

    .line 2268
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2275
    :cond_23
    return v1
.end method

.method private userHasMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 7

    .line 2251
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2252
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 2253
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2254
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2255
    const/4 p1, 0x1

    return p1

    .line 2252
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2258
    :cond_1d
    return v1
.end method


# virtual methods
.method accessibilityFocusOnlyInActiveWindow()Z
    .registers 3

    .line 1072
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1073
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 1074
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 727
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 728
    invoke-virtual {v1, p4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 729
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 732
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 733
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v3

    .line 732
    invoke-virtual {v2, p3, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    .line 735
    sget p3, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    add-int/lit8 v2, p3, 0x1

    sput v2, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    .line 739
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result p4

    if-eqz p4, :cond_45

    .line 740
    new-instance p4, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    const/4 v9, -0x1

    move-object v3, p4

    move-object v4, p0

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 742
    invoke-virtual {p4}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->linkToDeath()V

    .line 743
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {p2, p3, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 744
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 750
    goto :goto_66

    .line 751
    :cond_45
    new-instance p4, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-object v2, p4

    move-object v3, p0

    move v4, p3

    move-object v5, p2

    move-object v6, v7

    move v7, v8

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 753
    invoke-virtual {p4}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->linkToDeath()V

    .line 754
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p2

    .line 755
    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 756
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 763
    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_73

    .line 764
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 765
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility()V

    .line 766
    return p3

    .line 763
    :catchall_73
    move-exception p1

    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw p1
.end method

.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J
    .registers 13

    .line 533
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 538
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 543
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v8

    .line 544
    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Client;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V

    .line 545
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 546
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, p1, v9}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 550
    nop

    .line 551
    invoke-virtual {v8}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result p1

    iget p2, v9, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 550
    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    .line 554
    :cond_35
    iget-object p2, v8, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, p1, v9}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 563
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_43

    invoke-virtual {v8}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result p1

    goto :goto_44

    :cond_43
    const/4 p1, 0x0

    :goto_44
    iget p2, v9, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 562
    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    .line 566
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method clearAccessibilityFocus(I)V
    .registers 3

    .line 2703
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->clearAccessibilityFocusNotLocked(I)V

    .line 2704
    return-void
.end method

.method clearAccessibilityFocus(Ljava/util/function/IntSupplier;)V
    .registers 2

    .line 2699
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->clearAccessibilityFocus(I)V

    .line 2700
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 2540
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "AccessibilityManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2541
    :cond_b
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2542
    :try_start_e
    const-string v1, "ACCESSIBILITY MANAGER (dumpsys accessibility)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2543
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2544
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2545
    const/4 v2, 0x0

    move v3, v2

    :goto_1e
    if-ge v3, v1, :cond_1cb

    .line 2546
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2547
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User state[attributes:{id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", currentUser="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v6, v7, :cond_50

    const/4 v6, 0x1

    goto :goto_51

    :cond_50
    move v6, v2

    :goto_51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", touchExplorationEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2550
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", displayMagnificationEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2552
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", navBarMagnificationEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2554
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", autoclickEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", nonInteractiveUiTimeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mNonInteractiveUiTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", interactiveUiTimeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractiveUiTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", installedServiceCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2558
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v5}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v5

    if-eqz v5, :cond_10e

    .line 2559
    const-string v5, ", "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2560
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/accessibility/UiAutomationManager;->dumpUiAutomationService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2561
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2563
    :cond_10e
    const-string/jumbo v5, "}"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2564
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2565
    const-string v5, "     Bound services:{"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2566
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2567
    move v6, v2

    :goto_123
    if-ge v6, v5, :cond_142

    .line 2568
    if-lez v6, :cond_134

    .line 2569
    const-string v7, ", "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2570
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2571
    const-string v7, "                     "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2573
    :cond_134
    iget-object v7, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2574
    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2567
    add-int/lit8 v6, v6, 0x1

    goto :goto_123

    .line 2576
    :cond_142
    const-string/jumbo v5, "}"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2577
    const-string v5, "     Enabled services:{"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2578
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2579
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17f

    .line 2580
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 2581
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2582
    :goto_166
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17f

    .line 2583
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 2584
    const-string v7, ", "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2585
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_166

    .line 2588
    :cond_17f
    const-string/jumbo v5, "}"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2589
    const-string v5, "     Binding services:{"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2590
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2591
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1be

    .line 2592
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2593
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2594
    :goto_1a5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1be

    .line 2595
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 2596
    const-string v6, ", "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2597
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1a5

    .line 2600
    :cond_1be
    const-string/jumbo v4, "}]"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2601
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2545
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1e

    .line 2603
    :cond_1cb
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz p1, :cond_207

    .line 2604
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 2605
    nop

    :goto_1da
    if-ge v2, p1, :cond_204

    .line 2606
    if-lez v2, :cond_1e6

    .line 2607
    const/16 p3, 0x2c

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 2608
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2610
    :cond_1e6
    const-string p3, "Window["

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2611
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object p3, p3, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 2612
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2613
    const/16 p3, 0x5d

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 2605
    add-int/lit8 v2, v2, 0x1

    goto :goto_1da

    .line 2615
    :cond_204
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2617
    :cond_207
    monitor-exit v0

    .line 2618
    return-void

    .line 2617
    :catchall_209
    move-exception p1

    monitor-exit v0
    :try_end_20b
    .catchall {:try_start_e .. :try_end_20b} :catchall_209

    throw p1
.end method

.method public ensureWindowsAvailableTimed()V
    .registers 8

    .line 2756
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2757
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 2758
    monitor-exit v0

    return-void

    .line 2762
    :cond_b
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez v1, :cond_16

    .line 2763
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 2764
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2767
    :cond_16
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez v1, :cond_1c

    .line 2768
    monitor-exit v0

    return-void

    .line 2772
    :cond_1c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2773
    :goto_20
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v3, :cond_3e

    .line 2774
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 2775
    const-wide/16 v5, 0x1388

    sub-long/2addr v5, v3

    .line 2776
    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-gtz v3, :cond_36

    .line 2777
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_40

    return-void

    .line 2780
    :cond_36
    :try_start_36
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3b} :catch_3c
    .catchall {:try_start_36 .. :try_end_3b} :catchall_40

    .line 2783
    goto :goto_3d

    .line 2781
    :catch_3c
    move-exception v3

    .line 2784
    :goto_3d
    goto :goto_20

    .line 2785
    :cond_3e
    :try_start_3e
    monitor-exit v0

    .line 2786
    return-void

    .line 2785
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_40

    throw v1
.end method

.method getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z
    .registers 3

    .line 1034
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityShortcutService()Ljava/lang/String;
    .registers 3

    .line 2426
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    .line 2431
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2432
    :try_start_d
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 2433
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2434
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v1

    .line 2428
    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getAccessibilityShortcutService requires the MANAGE_ACCESSIBILITY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccessibilityWindowId(Landroid/os/IBinder;)I
    .registers 5

    .line 2510
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2511
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_15

    .line 2515
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I

    move-result p1

    monitor-exit v0

    return p1

    .line 2512
    :cond_15
    new-instance p1, Ljava/lang/SecurityException;

    const-string v1, "Only SYSTEM can call getAccessibilityWindowId"

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2516
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method getActiveWindowId()I
    .registers 2

    .line 1078
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getActiveWindowId()I

    move-result v0

    return v0
.end method

.method getBindInstantServiceAllowed(I)Z
    .registers 2

    .line 357
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserState(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p1

    .line 358
    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 359
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindInstantServiceAllowed()Z

    move-result p1

    return p1
.end method

.method public getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2352
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2353
    if-nez v0, :cond_17

    .line 2354
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    .line 2356
    :cond_17
    if-eqz v0, :cond_20

    .line 2357
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerInternal;->getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;

    move-result-object p1

    return-object p1

    .line 2360
    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method public getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .registers 3

    .line 2857
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 2858
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 2859
    if-nez v0, :cond_17

    .line 2860
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 2862
    :cond_17
    if-eqz v0, :cond_20

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->access$2200(Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 2863
    return-object v0

    .line 2868
    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentUserIdLocked()I
    .registers 2

    .line 320
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    return v0
.end method

.method public getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 661
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p2

    .line 664
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p2

    .line 665
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 666
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 669
    :cond_1b
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 670
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 671
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 672
    const/4 v3, 0x0

    :goto_27
    if-ge v3, v1, :cond_3e

    .line 673
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 674
    iget v5, v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mFeedbackType:I

    and-int/2addr v5, p1

    if-eqz v5, :cond_3b

    .line 675
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 678
    :cond_3e
    monitor-exit v0

    return-object v2

    .line 679
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    return-object v0
.end method

.method public getInstalledAccessibilityServiceList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 648
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p1

    .line 649
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    monitor-exit v0

    return-object p1

    .line 650
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;
    .registers 6

    .line 2365
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    if-nez v0, :cond_13

    .line 2366
    new-instance v0, Lcom/android/server/accessibility/KeyEventDispatcher;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/KeyEventDispatcher;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 2370
    :cond_13
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    return-object v0
.end method

.method public getMagnificationController()Lcom/android/server/accessibility/MagnificationController;
    .registers 5

    .line 2790
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2791
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    if-nez v1, :cond_19

    .line 2792
    new-instance v1, Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/accessibility/MagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 2793
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->setUserId(I)V

    .line 2795
    :cond_19
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    monitor-exit v0

    return-object v1

    .line 2796
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getMotionEventInjectorLocked()Lcom/android/server/accessibility/MotionEventInjector;
    .registers 6

    .line 1011
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 1012
    :goto_7
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    if-nez v2, :cond_21

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_21

    .line 1014
    :try_start_13
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1e} :catch_1f

    goto :goto_20

    .line 1015
    :catch_1f
    move-exception v2

    .line 1017
    :goto_20
    goto :goto_7

    .line 1019
    :cond_21
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    if-nez v0, :cond_2c

    .line 1020
    const-string v0, "AccessibilityManagerService"

    const-string v1, "MotionEventInjector installation timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_2c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    return-object v0
.end method

.method public getPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5

    .line 2376
    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getRecommendedTimeoutMillis()J
    .registers 4

    .line 2527
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2528
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 2529
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 2530
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getValidDisplayList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation

    .line 3870
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getWindowBounds(ILandroid/graphics/Rect;)Z
    .registers 5

    .line 1058
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1059
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 1060
    if-nez v1, :cond_1a

    .line 1061
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/IBinder;

    .line 1063
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2a

    .line 1064
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/WindowManagerInternal;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1065
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_28

    .line 1066
    const/4 p1, 0x1

    return p1

    .line 1068
    :cond_28
    const/4 p1, 0x0

    return p1

    .line 1063
    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public getWindowToken(II)Landroid/os/IBinder;
    .registers 6

    .line 897
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v1, "android.permission.RETRIEVE_WINDOW_TOKEN"

    const-string v2, "getWindowToken"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 904
    :try_start_c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 905
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p2

    .line 906
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    if-eq p2, v1, :cond_19

    .line 907
    monitor-exit v0

    return-object v2

    .line 909
    :cond_19
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p2

    if-nez p2, :cond_23

    .line 910
    monitor-exit v0

    return-object v2

    .line 912
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowTokenLocked(I)Landroid/os/IBinder;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 913
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public interrupt(I)V
    .registers 9

    .line 685
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 690
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p1

    .line 692
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq p1, v1, :cond_f

    .line 693
    monitor-exit v0

    return-void

    .line 695
    :cond_f
    nop

    .line 696
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 697
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 698
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 699
    const/4 v3, 0x0

    move v4, v3

    :goto_21
    if-ge v4, v1, :cond_37

    .line 700
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 701
    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 702
    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 703
    if-eqz v6, :cond_34

    if-eqz v5, :cond_34

    .line 704
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 707
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_67

    .line 708
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    :goto_3c
    if-ge v3, p1, :cond_66

    .line 710
    :try_start_3e
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onInterrupt()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_47} :catch_48

    .line 714
    goto :goto_63

    .line 711
    :catch_48
    move-exception v0

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending interrupt request to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    const-string v4, "AccessibilityManagerService"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 716
    :cond_66
    return-void

    .line 707
    :catchall_67
    move-exception p1

    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p1
.end method

.method public isAccessibilityButtonShown()Z
    .registers 2

    .line 325
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityButtonShown:Z

    return v0
.end method

.method public synthetic lambda$updateRelevantEventsLocked$0$AccessibilityManagerService(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1469
    nop

    .line 1470
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1471
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result p1

    .line 1473
    iget v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    if-eq v1, p1, :cond_10

    .line 1474
    iput p1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 1475
    const/4 v1, 0x1

    goto :goto_11

    .line 1473
    :cond_10
    const/4 v1, 0x0

    .line 1477
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_1a

    .line 1478
    if-eqz v1, :cond_19

    .line 1479
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {p2, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->setRelevantEventTypes(I)V

    .line 1481
    :cond_19
    return-void

    .line 1477
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public synthetic lambda$updateRelevantEventsLocked$1$AccessibilityManagerService(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 3

    .line 1467
    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$CNt8wbTQCYcsUnUkUCQHtKqr-tY;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$CNt8wbTQCYcsUnUkUCQHtKqr-tY;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->broadcastToClients(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Ljava/util/function/Consumer;)V

    .line 1482
    return-void
.end method

.method public notifyAccessibilityButtonClicked(I)V
    .registers 4

    .line 924
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 929
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 930
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityButtonClickedLocked(I)V

    .line 931
    monitor-exit v0

    .line 932
    return-void

    .line 931
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw p1

    .line 926
    :cond_15
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Caller does not hold permission android.permission.STATUS_BAR_SERVICE"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyAccessibilityButtonVisibilityChanged(Z)V
    .registers 4

    .line 943
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 948
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 949
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityButtonVisibilityChangedLocked(Z)V

    .line 950
    monitor-exit v0

    .line 951
    return-void

    .line 950
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw p1

    .line 945
    :cond_15
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Caller does not hold permission android.permission.STATUS_BAR_SERVICE"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;I)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 966
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 967
    nop

    .line 968
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 969
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 970
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 972
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/accessibility/KeyEventDispatcher;->notifyKeyEventLocked(Landroid/view/KeyEvent;ILjava/util/List;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 973
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public notifyMagnificationChanged(ILandroid/graphics/Region;FFF)V
    .registers 7

    .line 989
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    .line 991
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V

    .line 992
    monitor-exit v0

    .line 993
    return-void

    .line 992
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public onClientChangeLocked(Z)V
    .registers 3

    .line 2889
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 2890
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2891
    if-eqz p1, :cond_e

    .line 2892
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2894
    :cond_e
    return-void
.end method

.method onGesture(I)Z
    .registers 4

    .line 955
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 956
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(IZ)Z

    move-result v1

    .line 957
    if-nez v1, :cond_f

    .line 958
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(IZ)Z

    move-result v1

    .line 960
    :cond_f
    monitor-exit v0

    return v1

    .line 961
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 2900
    new-instance v0, Lcom/android/server/accessibility/AccessibilityShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/AccessibilityShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 2902
    return-void
.end method

.method onTouchInteractionEnd()V
    .registers 2

    .line 1086
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionEnd()V

    .line 1087
    return-void
.end method

.method onTouchInteractionStart()V
    .registers 2

    .line 1082
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionStart()V

    .line 1083
    return-void
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
    .registers 26

    .line 2805
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v3, p4

    .line 2806
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2807
    :try_start_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v4

    .line 2808
    const/4 v11, 0x0

    if-nez v4, :cond_11

    .line 2809
    monitor-exit v2

    return v11

    .line 2811
    :cond_11
    const/16 v5, 0x40

    const/4 v12, 0x1

    if-eq v3, v5, :cond_1d

    const/16 v5, 0x80

    if-ne v3, v5, :cond_1b

    goto :goto_1d

    :cond_1b
    move v5, v11

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v5, v12

    .line 2813
    :goto_1e
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 2814
    invoke-virtual {v6, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v6

    .line 2815
    if-nez v5, :cond_31

    .line 2816
    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 2817
    invoke-static {v7, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$2100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/WindowInfo;

    move-result-object v7

    .line 2818
    if-eqz v7, :cond_31

    iget-object v7, v7, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    goto :goto_32

    .line 2820
    :cond_31
    const/4 v7, 0x0

    :goto_32
    if-eqz v6, :cond_42

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v6

    if-eqz v6, :cond_42

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    if-eqz v6, :cond_42

    if-nez v5, :cond_42

    .line 2822
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 2824
    :cond_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_8a

    .line 2825
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2826
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2830
    :try_start_4b
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x3

    invoke-virtual {v2, v5, v6, v9, v11}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 2833
    invoke-direct {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyOutsideTouchIfNeeded(II)V

    .line 2834
    if-eqz v7, :cond_65

    .line 2835
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2836
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setFocusedActivity(Landroid/os/IBinder;)V

    .line 2838
    :cond_65
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->access$2200(Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v9, p9

    invoke-interface/range {v0 .. v10}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_7a} :catch_84
    .catchall {:try_start_4b .. :try_end_7a} :catchall_7f

    .line 2847
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2848
    nop

    .line 2849
    return v12

    .line 2847
    :catchall_7f
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2841
    :catch_84
    move-exception v0

    .line 2845
    nop

    .line 2847
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2845
    return v11

    .line 2824
    :catchall_8a
    move-exception v0

    :try_start_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v0
.end method

.method public performAccessibilityShortcut()V
    .registers 9

    .line 2385
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2386
    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_20

    .line 2388
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "performAccessibilityShortcut requires the MANAGE_ACCESSIBILITY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2392
    :cond_20
    :goto_20
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    .line 2393
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2394
    :try_start_27
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 2395
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    .line 2396
    if-nez v3, :cond_33

    .line 2397
    monitor-exit v1

    return-void

    .line 2399
    :cond_33
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 2401
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 2402
    new-instance v4, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2403
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {v4, v5, v6, v7}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 2405
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_66

    .line 2406
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    goto :goto_6d

    .line 2408
    :cond_66
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOffValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 2411
    :cond_6d
    :goto_6d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_71
    .catchall {:try_start_27 .. :try_end_71} :catchall_8f

    .line 2413
    :try_start_71
    iget-object v0, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7f

    .line 2414
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V

    goto :goto_84

    .line 2416
    :cond_7f
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->disableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    :try_end_84
    .catchall {:try_start_71 .. :try_end_84} :catchall_8a

    .line 2419
    :goto_84
    :try_start_84
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2420
    nop

    .line 2421
    monitor-exit v1

    .line 2422
    return-void

    .line 2419
    :catchall_8a
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2421
    :catchall_8f
    move-exception v0

    monitor-exit v1
    :try_end_91
    .catchall {:try_start_84 .. :try_end_91} :catchall_8f

    throw v0
.end method

.method public performActionOnAccessibilityFocusedItem(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 3

    .line 1048
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->performActionOnAccessibilityFocusedItemNotLocked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result p1

    return p1
.end method

.method public persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1595
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_20

    .line 1597
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1599
    :cond_20
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    goto :goto_9

    .line 1601
    :cond_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1603
    :try_start_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1604
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1605
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 p2, 0x0

    .line 1604
    :cond_3d
    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_45

    .line 1607
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1608
    nop

    .line 1609
    return-void

    .line 1607
    :catchall_45
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V
    .registers 19

    .line 849
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v2, "android.permission.RETRIEVE_WINDOW_CONTENT"

    const-string/jumbo v3, "registerUiTestAutomationService"

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v13, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 853
    :try_start_e
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v2, v6, 0x1

    sput v2, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object v9, p0

    move/from16 v12, p4

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/accessibility/UiAutomationManager;->registerUiTestAutomationServiceLocked(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;I)V

    .line 856
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 857
    monitor-exit v13

    .line 858
    return-void

    .line 857
    :catchall_34
    move-exception v0

    monitor-exit v13
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_34

    throw v0
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .registers 7

    .line 771
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 776
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 775
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 777
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 778
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v1

    .line 780
    if-ltz v1, :cond_21

    .line 781
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onAccessibilityClientRemovedLocked(I)V

    .line 786
    monitor-exit v0

    return-void

    .line 788
    :cond_21
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 789
    const/4 v2, 0x0

    :goto_28
    if-ge v2, v1, :cond_46

    .line 790
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 791
    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    .line 792
    invoke-direct {p0, p1, v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v3

    .line 794
    if-ltz v3, :cond_43

    .line 795
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onAccessibilityClientRemovedLocked(I)V

    .line 801
    monitor-exit v0

    return-void

    .line 789
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 804
    :cond_46
    monitor-exit v0

    .line 805
    return-void

    .line 804
    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .registers 15

    .line 2876
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 2877
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p2

    .line 2878
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result p2

    if-eqz p2, :cond_22

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    if-nez p2, :cond_13

    goto :goto_22

    .line 2882
    :cond_13
    new-instance v7, Lcom/android/server/accessibility/ActionReplacingCallback;

    .line 2883
    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->access$2200(Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    move-object v0, v7

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/ActionReplacingCallback;-><init>(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;Landroid/view/accessibility/IAccessibilityInteractionConnection;IIJ)V

    .line 2882
    return-object v7

    .line 2880
    :cond_22
    :goto_22
    return-object p1
.end method

.method restoreEnabledAccessibilityServicesLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1165
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 1166
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 1168
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object p1

    .line 1169
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 1170
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1171
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    const-string v0, "enabled_accessibility_services"

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 1175
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1176
    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 13

    .line 571
    nop

    .line 573
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1a

    .line 577
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 578
    if-eqz v1, :cond_1a

    .line 579
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    .line 580
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 587
    :cond_1a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 588
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p2

    .line 591
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 592
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v3

    .line 591
    invoke-virtual {v1, v2, v3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 595
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_74

    .line 596
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {p2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 597
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 598
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 599
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I

    move-result v9

    .line 597
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateActiveAndAccessibilityFocusedWindowLocked(IJII)V

    .line 600
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 601
    move p2, v2

    goto :goto_5c

    .line 596
    :cond_5b
    move p2, v3

    .line 603
    :goto_5c
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_75

    .line 604
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v4, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$BX2CMQr5jU9WhPYx7Aaae4zgxf4;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$BX2CMQr5jU9WhPYx7Aaae4zgxf4;

    .line 606
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    .line 604
    invoke-static {v4, p0, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_75

    .line 595
    :cond_74
    move p2, v3

    .line 609
    :cond_75
    :goto_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_4 .. :try_end_76} :catchall_ae

    .line 611
    if-eqz p2, :cond_a2

    .line 615
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/16 v0, 0x20

    if-ne p2, v0, :cond_8f

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-eqz p2, :cond_8f

    .line 617
    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    .line 618
    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility()V

    .line 620
    :cond_8f
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 621
    :try_start_92
    invoke-direct {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 622
    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 623
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/UiAutomationManager;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 624
    monitor-exit p2

    goto :goto_a2

    :catchall_9f
    move-exception p1

    monitor-exit p2
    :try_end_a1
    .catchall {:try_start_92 .. :try_end_a1} :catchall_9f

    throw p1

    .line 627
    :cond_a2
    :goto_a2
    sget p2, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    if-eq p2, v0, :cond_ad

    .line 628
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 630
    :cond_ad
    return-void

    .line 609
    :catchall_ae
    move-exception p1

    :try_start_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw p1
.end method

.method public sendFingerprintGesture(I)Z
    .registers 5

    .line 2489
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2490
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1b

    .line 2493
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_23

    .line 2494
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-nez v0, :cond_16

    .line 2495
    const/4 p1, 0x0

    return p1

    .line 2497
    :cond_16
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->onFingerprintGesture(I)Z

    move-result p1

    return p1

    .line 2491
    :cond_1b
    :try_start_1b
    new-instance p1, Ljava/lang/SecurityException;

    const-string v1, "Only SYSTEM can call sendFingerprintGesture"

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2493
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw p1
.end method

.method setBindInstantServiceAllowed(IZ)V
    .registers 6

    .line 364
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserState(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 366
    if-nez v1, :cond_17

    .line 367
    if-nez p2, :cond_d

    .line 368
    monitor-exit v0

    return-void

    .line 370
    :cond_d
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    .line 371
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    .line 374
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setBindInstantServiceAllowed(Z)V

    .line 375
    return-void

    .line 373
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method setMotionEventInjector(Lcom/android/server/accessibility/MotionEventInjector;)V
    .registers 3

    .line 1002
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1003
    :try_start_3
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    .line 1005
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1006
    monitor-exit v0

    .line 1007
    return-void

    .line 1006
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v1, "android.permission.MODIFY_ACCESSIBILITY_DATA"

    const-string/jumbo v2, "setPictureInPictureActionReplacingConnection"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_d
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    if-eqz v1, :cond_19

    .line 831
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->unlinkToDeath()V

    .line 832
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 834
    :cond_19
    if-eqz p1, :cond_2e

    .line 835
    new-instance v8, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    const/4 v3, -0x3

    const-string v5, "foo.bar.baz"

    const/16 v6, 0x3e8

    const/4 v7, -0x1

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 838
    iput-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 839
    invoke-virtual {v8}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->linkToDeath()V

    .line 841
    :cond_2e
    monitor-exit v0

    .line 842
    return-void

    .line 841
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_30

    throw p1
.end method

.method public temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    .registers 6

    .line 870
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v1, "android.permission.TEMPORARY_ENABLE_ACCESSIBILITY"

    const-string/jumbo v2, "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_13

    .line 874
    return-void

    .line 876
    :cond_13
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 880
    iput-boolean p2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 881
    const/4 p2, 0x0

    iput-boolean p2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 882
    iput-boolean p2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    .line 883
    iput-boolean p2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    .line 884
    iget-object p2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 885
    iget-object p2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 886
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 887
    iget-object p2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 888
    iget-object p2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 892
    monitor-exit v0

    .line 893
    return-void

    .line 892
    :catchall_43
    move-exception p1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .registers 4

    .line 862
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 863
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/UiAutomationManager;->unregisterUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 864
    monitor-exit v0

    .line 865
    return-void

    .line 864
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
