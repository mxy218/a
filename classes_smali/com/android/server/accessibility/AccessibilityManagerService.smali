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

    .line 187
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    .line 192
    const/4 v0, 0x1

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 303
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 200
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    .line 207
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    .line 248
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    .line 250
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 253
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 258
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 260
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 264
    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/android/server/accessibility/UiAutomationManager;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 266
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 304
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 305
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 306
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 307
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 308
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserManager:Landroid/os/UserManager;

    .line 309
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 310
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 311
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    .line 312
    new-instance v0, Lcom/android/server/accessibility/GlobalActionPerformer;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/GlobalActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    .line 313
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    .line 315
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V

    .line 316
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 318
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onBootPhase(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeUser(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionLocked(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2508()I
    .registers 2

    .line 155
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GlobalActionPerformer;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "x2"  # I

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/os/IBinder;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowTokenLocked(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900()I
    .registers 1

    .line 155
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/MagnificationController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .registers 4
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .param p2, "x2"  # Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/UiAutomationManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->putSecureIntForUser(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifySoftKeyboardShowModeChangedLocked(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"  # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unlockUser(I)V

    return-void
.end method

.method private announceNewUserIfNeeded()V
    .registers 9

    .line 1133
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1134
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 1135
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1136
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1138
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104072d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 1139
    invoke-virtual {v2, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 1138
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, "message":Ljava/lang/String;
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 1142
    .local v4, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 1145
    .end local v1  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v2  # "userManager":Landroid/os/UserManager;
    .end local v3  # "message":Ljava/lang/String;
    .end local v4  # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_41
    monitor-exit v0

    .line 1146
    return-void

    .line 1145
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private broadcastToClients(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accessibility/AccessibilityManagerService$UserState;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Client;",
            ">;)V"
        }
    .end annotation

    .line 1534
    .local p2, "clientAction":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/accessibility/AccessibilityManagerService$Client;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 1535
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 1536
    return-void
.end method

.method private canRegisterService(Landroid/content/pm/ServiceInfo;)Z
    .registers 9
    .param p1, "serviceInfo"  # Landroid/content/pm/ServiceInfo;

    .line 1391
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "Skipping accessibility service "

    const-string v4, "AccessibilityManagerService"

    if-nez v0, :cond_37

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": it does not require the permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1393
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    return v2

    .line 1400
    :cond_37
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1401
    .local v0, "servicePackageUid":I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v6, "android:bind_accessibility_service"

    invoke-virtual {v1, v6, v0, v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6c

    .line 1403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": disallowed by AppOps"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1403
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    return v2

    .line 1409
    :cond_6c
    const/4 v1, 0x1

    return v1
.end method

.method private canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 7
    .param p1, "service"  # Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .param p2, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2192
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-nez v0, :cond_c

    goto :goto_4a

    .line 2195
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

    .line 2200
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2201
    return v3

    .line 2202
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_34

    .line 2203
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_49

    .line 2204
    :cond_34
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v2, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$bNCuysjTCG2afhYMHuqu25CfY5g;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$bNCuysjTCG2afhYMHuqu25CfY5g;

    invoke-static {v2, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_49

    .line 2212
    :cond_40
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_49

    .line 2214
    return v3

    .line 2217
    :cond_49
    :goto_49
    return v1

    .line 2193
    :cond_4a
    :goto_4a
    return v1
.end method

.method private computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .registers 9
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .param p2, "client"  # Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 1488
    const/4 v0, 0x0

    .line 1490
    .local v0, "relevantEventTypes":I
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1491
    .local v1, "serviceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    const/4 v3, 0x0

    if-ge v2, v1, :cond_27

    .line 1492
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1493
    .local v4, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageWhitelist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1494
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getRelevantEventTypes()I

    move-result v3

    goto :goto_23

    .line 1495
    :cond_22
    nop

    :goto_23
    or-int/2addr v0, v3

    .line 1491
    .end local v4  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1498
    .end local v2  # "i":I
    :cond_27
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 1499
    invoke-virtual {v2}, Lcom/android/server/accessibility/UiAutomationManager;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    .line 1498
    invoke-static {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageWhitelist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1500
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v2}, Lcom/android/server/accessibility/UiAutomationManager;->getRelevantEventTypes()I

    move-result v3

    goto :goto_3b

    .line 1501
    :cond_3a
    nop

    :goto_3b
    or-int/2addr v0, v3

    .line 1502
    return v0
.end method

.method private disableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I

    .line 2468
    new-instance v0, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2470
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-direct {v0, v1, v2, p2}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 2473
    .local v0, "setting":Landroid/provider/SettingsStringUtil$SettingStringHelper;
    invoke-virtual {v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->remove(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 2475
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 2476
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2477
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2479
    :cond_27
    return-void
.end method

.method private enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I

    .line 2451
    new-instance v0, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2453
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-direct {v0, v1, v2, p2}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 2456
    .local v0, "setting":Landroid/provider/SettingsStringUtil$SettingStringHelper;
    invoke-virtual {v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->add(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 2458
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 2459
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2460
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2462
    :cond_27
    return-void
.end method

.method private findWindowIdLocked(Landroid/os/IBinder;)I
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;

    .line 2725
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 2726
    .local v0, "globalIndex":I
    if-ltz v0, :cond_f

    .line 2727
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    return v1

    .line 2729
    :cond_f
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 2730
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    .line 2731
    .local v2, "userIndex":I
    if-ltz v2, :cond_22

    .line 2732
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    return v3

    .line 2734
    :cond_22
    const/4 v3, -0x1

    return v3
.end method

.method private findWindowTokenLocked(I)Landroid/os/IBinder;
    .registers 4
    .param p1, "windowId"  # I

    .line 2717
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2718
    .local v0, "token":Landroid/os/IBinder;
    if-eqz v0, :cond_b

    .line 2719
    return-object v0

    .line 2721
    :cond_b
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    return-object v1
.end method

.method private getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .registers 2

    .line 276
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method private getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    .registers 3

    .line 1181
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1182
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    if-nez v1, :cond_e

    .line 1183
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    .line 1185
    :cond_e
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    monitor-exit v0

    return-object v1

    .line 1186
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)J
    .registers 4
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2544
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractiveUiTimeout:I

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mNonInteractiveUiTimeout:I

    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUserState(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .registers 4
    .param p1, "userId"  # I

    .line 344
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 346
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .registers 4
    .param p1, "userId"  # I

    .line 350
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 351
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_15

    .line 352
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    move-object v0, v1

    .line 353
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    :cond_15
    return-object v0
.end method

.method private static isClientInPackageWhitelist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z
    .registers 8
    .param p0, "serviceInfo"  # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p1, "client"  # Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 1507
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1509
    :cond_4
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 1510
    .local v1, "clientPackages":[Ljava/lang/String;
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    .line 1511
    .local v2, "result":Z
    if-nez v2, :cond_22

    if-eqz v1, :cond_22

    .line 1512
    array-length v3, v1

    :goto_11
    if-ge v0, v3, :cond_22

    aget-object v4, v1, v0

    .line 1513
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1514
    const/4 v2, 0x1

    .line 1515
    goto :goto_22

    .line 1512
    .end local v4  # "packageName":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1519
    :cond_22
    :goto_22
    nop

    .line 1529
    return v2
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
    .param p0, "uiTimeout"  # J
    .param p2, "client"  # Landroid/view/accessibility/IAccessibilityManagerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1723
    invoke-interface {p2, p0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->notifyServicesStateChanged(J)V

    return-void
.end method

.method static synthetic lambda$sendStateToClients$2(ILandroid/view/accessibility/IAccessibilityManagerClient;)V
    .registers 2
    .param p0, "clientState"  # I
    .param p1, "client"  # Landroid/view/accessibility/IAccessibilityManagerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1704
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
    .registers 8
    .param p1, "displayId"  # I

    .line 1236
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1238
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    .line 1239
    .local v1, "potentialTargets":I
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_21

    .line 1240
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1241
    .local v4, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v5, v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v5, :cond_1e

    .line 1242
    add-int/lit8 v1, v1, 0x1

    .line 1239
    .end local v4  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 1246
    .end local v2  # "i":I
    :cond_21
    if-nez v1, :cond_24

    .line 1247
    return-void

    .line 1249
    :cond_24
    if-ne v1, v3, :cond_57

    .line 1250
    iget-boolean v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v2, :cond_3a

    .line 1251
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$fHb6jcCpfXvxrnf-dXJngiIFuoo;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$fHb6jcCpfXvxrnf-dXJngiIFuoo;

    .line 1253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1251
    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1254
    return-void

    .line 1256
    :cond_3a
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2  # "i":I
    :goto_41
    if-ltz v2, :cond_56

    .line 1257
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1258
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v4, :cond_53

    .line 1261
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonClickedLocked()V

    .line 1262
    return-void

    .line 1256
    .end local v3  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_53
    add-int/lit8 v2, v2, -0x1

    goto :goto_41

    .end local v2  # "i":I
    :cond_56
    goto :goto_bc

    .line 1267
    :cond_57
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    if-nez v2, :cond_6f

    iget-boolean v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-nez v2, :cond_6f

    .line 1269
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$2LOhxU7QkqHWHlN_uVPLmAzrNWk;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$2LOhxU7QkqHWHlN_uVPLmAzrNWk;

    .line 1271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1269
    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_ad

    .line 1272
    :cond_6f
    iget-boolean v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v2, :cond_87

    iget-boolean v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-eqz v2, :cond_87

    .line 1274
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$fHb6jcCpfXvxrnf-dXJngiIFuoo;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$fHb6jcCpfXvxrnf-dXJngiIFuoo;

    .line 1276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1274
    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1277
    return-void

    .line 1279
    :cond_87
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2  # "i":I
    :goto_8e
    if-ltz v2, :cond_ad

    .line 1280
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1281
    .restart local v3  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v4, :cond_aa

    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 1285
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonClickedLocked()V

    .line 1286
    return-void

    .line 1279
    .end local v3  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_aa
    add-int/lit8 v2, v2, -0x1

    goto :goto_8e

    .line 1291
    .end local v2  # "i":I
    :cond_ad
    :goto_ad
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$2LOhxU7QkqHWHlN_uVPLmAzrNWk;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$2LOhxU7QkqHWHlN_uVPLmAzrNWk;

    .line 1293
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1291
    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1295
    :goto_bc
    return-void
.end method

.method private notifyAccessibilityButtonVisibilityChangedLocked(Z)V
    .registers 6
    .param p1, "available"  # Z

    .line 1313
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1314
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityButtonShown:Z

    .line 1315
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_27

    .line 1316
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1317
    .local v2, "clientConnection":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v3, v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v3, :cond_24

    .line 1318
    nop

    .line 1319
    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v3

    .line 1318
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    .line 1315
    .end local v2  # "clientConnection":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1322
    .end local v1  # "i":I
    :cond_27
    return-void
.end method

.method private notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 8
    .param p1, "event"  # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "isDefault"  # Z

    .line 1452
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1453
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "count":I
    :goto_b
    if-ge v1, v2, :cond_1f

    .line 1454
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1456
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIsDefault:Z

    if-ne v4, p2, :cond_1c

    .line 1457
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_1c} :catch_20

    .line 1453
    .end local v3  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1464
    .end local v0  # "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v1  # "i":I
    .end local v2  # "count":I
    :cond_1f
    goto :goto_21

    .line 1460
    :catch_20
    move-exception v0

    .line 1465
    :goto_21
    return-void
.end method

.method private notifyClearAccessibilityCacheLocked()V
    .registers 4

    .line 1211
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1212
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_1c

    .line 1213
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1214
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyClearAccessibilityNodeInfoCache()V

    .line 1212
    .end local v2  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1216
    .end local v1  # "i":I
    :cond_1c
    return-void
.end method

.method private notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V
    .registers 5
    .param p2, "uiTimeout"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;J)V"
        }
    .end annotation

    .line 1722
    .local p1, "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/accessibility/IAccessibilityManagerClient;>;"
    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$_rvRsbhZRBJitXrpMqI0NptLUa8;

    invoke-direct {v0, p2, p3}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$_rvRsbhZRBJitXrpMqI0NptLUa8;-><init>(J)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 1724
    return-void
.end method

.method private notifyGestureLocked(IZ)Z
    .registers 8
    .param p1, "gestureId"  # I
    .param p2, "isDefault"  # Z

    .line 1199
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1200
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_25

    .line 1201
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1202
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-eqz v4, :cond_22

    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIsDefault:Z

    if-ne v4, p2, :cond_22

    .line 1203
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyGesture(I)V

    .line 1204
    return v2

    .line 1200
    .end local v3  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1207
    .end local v1  # "i":I
    :cond_25
    const/4 v1, 0x0

    return v1
.end method

.method private notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V
    .registers 15
    .param p1, "displayId"  # I
    .param p2, "region"  # Landroid/graphics/Region;
    .param p3, "scale"  # F
    .param p4, "centerX"  # F
    .param p5, "centerY"  # F

    .line 1220
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1221
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_22

    .line 1222
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1223
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    move-object v3, v2

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V

    .line 1221
    .end local v2  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1225
    .end local v1  # "i":I
    :cond_22
    return-void
.end method

.method private notifyOutsideTouchIfNeeded(II)V
    .registers 8
    .param p1, "targetWindowId"  # I
    .param p2, "action"  # I

    .line 2738
    const/16 v0, 0x10

    if-eq p2, v0, :cond_9

    const/16 v0, 0x20

    if-eq p2, v0, :cond_9

    .line 2739
    return-void

    .line 2743
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2744
    .local v0, "connectionList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;>;"
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2745
    :try_start_11
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$2000(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Ljava/util/List;

    move-result-object v2

    .line 2746
    .local v2, "outsideWindowsIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 2747
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2746
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 2749
    .end local v3  # "i":I
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_4f

    .line 2750
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4e

    .line 2751
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 2752
    .local v3, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-eqz v3, :cond_4b

    .line 2754
    :try_start_42
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->notifyOutsideTouch()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_4a

    .line 2759
    goto :goto_4b

    .line 2755
    :catch_4a
    move-exception v4

    .line 2750
    .end local v3  # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 2762
    .end local v1  # "i":I
    :cond_4e
    return-void

    .line 2749
    .end local v2  # "outsideWindowsIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method private notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 5
    .param p1, "showMode"  # I

    .line 1228
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1229
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_1c

    .line 1230
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1231
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedLocked(I)V

    .line 1229
    .end local v2  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1233
    .end local v1  # "i":I
    :cond_1c
    return-void
.end method

.method private onBootPhase(I)V
    .registers 4
    .param p1, "phase"  # I

    .line 336
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_18

    .line 337
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.app_widgets"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 338
    const-class v0, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    .line 341
    :cond_18
    return-void
.end method

.method private onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 3
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    .line 1854
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1855
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1856
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityShortcutLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1857
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1858
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityFocusBehaviorLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1859
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1860
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1861
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updatePerformGesturesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1862
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1863
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1864
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1865
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateRelevantEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1866
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1867
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1868
    return-void
.end method

.method private putSecureIntForUser(Ljava/lang/String;II)V
    .registers 7
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # I
    .param p3, "userid"  # I

    .line 2631
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2633
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 2635
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2636
    nop

    .line 2637
    return-void

    .line 2635
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private readAccessibilityButtonSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 7
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2103
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const-string v2, "accessibility_button_target_component"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2105
    .local v0, "componentId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_25

    .line 2106
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    if-nez v1, :cond_20

    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-nez v1, :cond_20

    .line 2108
    return v4

    .line 2110
    :cond_20
    iput-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    .line 2111
    iput-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    .line 2112
    return v3

    .line 2115
    :cond_25
    const-class v1, Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2116
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-eqz v1, :cond_36

    .line 2117
    return v4

    .line 2119
    :cond_36
    iput-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    .line 2120
    iput-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    .line 2121
    return v3

    .line 2124
    :cond_3b
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 2125
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2126
    return v4

    .line 2128
    :cond_48
    iput-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    .line 2129
    iput-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    .line 2130
    return v3
.end method

.method private readAccessibilityShortcutSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 7
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2081
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2082
    invoke-static {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2083
    .local v0, "componentNameToEnableString":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_29

    .line 2090
    :cond_13
    nop

    .line 2091
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 2092
    .local v3, "componentNameToEnable":Landroid/content/ComponentName;
    if-eqz v3, :cond_23

    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    .line 2093
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 2094
    return v1

    .line 2097
    :cond_23
    iput-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    .line 2098
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2099
    return v2

    .line 2084
    .end local v3  # "componentNameToEnable":Landroid/content/ComponentName;
    :cond_29
    :goto_29
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    if-nez v3, :cond_2e

    .line 2085
    return v1

    .line 2087
    :cond_2e
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    .line 2088
    return v2
.end method

.method private readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 6
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2034
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2035
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2034
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

    .line 2038
    .local v0, "autoclickEnabled":Z
    :goto_15
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    if-eq v0, v3, :cond_1c

    .line 2039
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    .line 2040
    return v1

    .line 2042
    :cond_1c
    return v2
.end method

.method private readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V
    .registers 6
    .param p1, "settingName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    .line 1557
    .local p3, "outComponentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1559
    .local v0, "settingValue":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 1560
    return-void
.end method

.method private readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 7
    .param p1, "names"  # Ljava/lang/String;
    .param p3, "doMerge"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .line 1574
    .local p2, "outComponentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    if-nez p3, :cond_5

    .line 1575
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 1577
    :cond_5
    if-eqz p1, :cond_29

    .line 1578
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 1579
    .local v0, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1580
    :cond_c
    :goto_c
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1581
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 1582
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1f

    .line 1583
    goto :goto_c

    .line 1585
    :cond_1f
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1586
    .local v2, "enabledService":Landroid/content/ComponentName;
    if-eqz v2, :cond_28

    .line 1587
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1589
    .end local v1  # "str":Ljava/lang/String;
    .end local v2  # "enabledService":Landroid/content/ComponentName;
    :cond_28
    goto :goto_c

    .line 1591
    .end local v0  # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_29
    return-void
.end method

.method private readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 4
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1977
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    .line 1978
    .local v0, "somethingChanged":Z
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1979
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1980
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1981
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1982
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1983
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1984
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1985
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1986
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1987
    return v0
.end method

.method private readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 5
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1413
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1414
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string v2, "enabled_accessibility_services"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 1416
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1417
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1418
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1419
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1420
    const/4 v0, 0x1

    return v0

    .line 1422
    :cond_2b
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1423
    const/4 v0, 0x0

    return v0
.end method

.method private readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 6
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2046
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2047
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2046
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

    .line 2050
    .local v0, "highTextContrastEnabled":Z
    :goto_15
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTextHighContrastEnabled:Z

    if-eq v0, v3, :cond_1c

    .line 2051
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTextHighContrastEnabled:Z

    .line 2052
    return v1

    .line 2054
    :cond_1c
    return v2
.end method

.method private readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 11
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1347
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1349
    const v0, 0xc8084

    .line 1355
    .local v0, "flags":I
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindInstantServiceAllowed()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1356
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 1359
    :cond_11
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1362
    .local v1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_25
    if-ge v2, v3, :cond_4e

    .line 1363
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1364
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1366
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->canRegisterService(Landroid/content/pm/ServiceInfo;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 1367
    goto :goto_4b

    .line 1372
    :cond_36
    :try_start_36
    new-instance v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v4, v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .line 1373
    .local v6, "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_42} :catch_43
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_42} :catch_43

    .line 1376
    goto :goto_4b

    .line 1374
    .end local v6  # "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catch_43
    move-exception v6

    .line 1375
    .local v6, "xppe":Ljava/lang/Exception;
    const-string v7, "AccessibilityManagerService"

    const-string v8, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1362
    .end local v4  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5  # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6  # "xppe":Ljava/lang/Exception;
    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 1379
    .end local v2  # "i":I
    .end local v3  # "count":I
    :cond_4e
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 1380
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1381
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1382
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1383
    const/4 v2, 0x1

    return v2

    .line 1386
    :cond_6b
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1387
    const/4 v2, 0x0

    return v2
.end method

.method private readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 8
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2016
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2017
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2016
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

    .line 2020
    .local v0, "displayMagnificationEnabled":Z
    :goto_15
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2021
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2020
    const-string v5, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, v2

    .line 2024
    .local v3, "navBarMagnificationEnabled":Z
    :goto_28
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-ne v0, v4, :cond_32

    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eq v3, v4, :cond_31

    goto :goto_32

    .line 2030
    :cond_31
    return v2

    .line 2026
    :cond_32
    :goto_32
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 2027
    iput-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    .line 2028
    return v1
.end method

.method private readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 6
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2005
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2006
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2005
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

    .line 2008
    .local v0, "touchExplorationEnabled":Z
    :goto_16
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eq v0, v3, :cond_1d

    .line 2009
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 2010
    return v1

    .line 2012
    :cond_1d
    return v2
.end method

.method private readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 5
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1428
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1429
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string/jumbo v2, "touch_exploration_granted_accessibility_services"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 1432
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1433
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1434
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1435
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1436
    const/4 v0, 0x1

    return v0

    .line 1438
    :cond_2c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1439
    const/4 v0, 0x0

    return v0
.end method

.method private readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 7
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2134
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2135
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2134
    const/4 v2, 0x0

    const-string v3, "accessibility_non_interactive_ui_timeout_ms"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2138
    .local v0, "nonInteractiveUiTimeout":I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2139
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2138
    const-string v4, "accessibility_interactive_ui_timeout_ms"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 2142
    .local v1, "interactiveUiTimeout":I
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserNonInteractiveUiTimeout:I

    if-ne v0, v3, :cond_27

    iget v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserInteractiveUiTimeout:I

    if-eq v1, v3, :cond_26

    goto :goto_27

    .line 2149
    :cond_26
    return v2

    .line 2144
    :cond_27
    :goto_27
    iput v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserNonInteractiveUiTimeout:I

    .line 2145
    iput v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserInteractiveUiTimeout:I

    .line 2146
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2147
    const/4 v2, 0x1

    return v2
.end method

.method private registerBroadcastReceivers()V
    .registers 9

    .line 380
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 491
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 494
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 495
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    const-string v2, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 531
    return-void
.end method

.method private removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .registers 8
    .param p1, "windowToken"  # Landroid/os/IBinder;
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

    .line 812
    .local p2, "windowTokens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    .local p3, "interactionConnections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 813
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_24

    .line 814
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_21

    .line 815
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 816
    .local v2, "windowId":I
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 817
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 818
    .local v3, "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->unlinkToDeath()V

    .line 819
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 820
    return v2

    .line 813
    .end local v2  # "windowId":I
    .end local v3  # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 823
    .end local v1  # "i":I
    :cond_24
    const/4 v1, -0x1

    return v1
.end method

.method private removeAccessibilityInteractionConnectionLocked(II)V
    .registers 5
    .param p1, "windowId"  # I
    .param p2, "userId"  # I

    .line 1332
    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    .line 1333
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1334
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1c

    .line 1336
    :cond_e
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1337
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1338
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1340
    .end local v0  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :goto_1c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onAccessibilityClientRemovedLocked(I)V

    .line 1344
    return-void
.end method

.method private removeUser(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 1159
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1160
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1161
    monitor-exit v0

    .line 1162
    return-void

    .line 1161
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 7
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1708
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateRecommendedUiTimeoutLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1709
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$heq1MRdQjg8BGWFbpV3PEpnDVcg;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$heq1MRdQjg8BGWFbpV3PEpnDVcg;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 1711
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1709
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1712
    return-void
.end method

.method private scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 7
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1681
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result v0

    .line 1682
    .local v0, "clientState":I
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    if-eq v1, v0, :cond_2f

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 1683
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-gtz v1, :cond_18

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 1684
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-lez v1, :cond_2f

    .line 1685
    :cond_18
    iput v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    .line 1686
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v2, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$5vwr6qV-eqdCr73CeDmVnsJlZHM;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$5vwr6qV-eqdCr73CeDmVnsJlZHM;

    .line 1688
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1686
    invoke-static {v2, p0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1690
    :cond_2f
    return-void
.end method

.method private scheduleUpdateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 4
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1732
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$mAPLBShddfLlktd9Q8jVo04VVXo;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$mAPLBShddfLlktd9Q8jVo04VVXo;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1735
    return-void
.end method

.method private scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 4
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1727
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$w0ifSldCn8nADYgU7v1foSdmfe0;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$w0ifSldCn8nADYgU7v1foSdmfe0;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1729
    return-void
.end method

.method private sendAccessibilityButtonToInputFilter(I)V
    .registers 4
    .param p1, "displayId"  # I

    .line 1298
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1299
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_10

    .line 1300
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityButtonClicked(I)V

    .line 1302
    :cond_10
    monitor-exit v0

    .line 1303
    return-void

    .line 1302
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 6
    .param p1, "event"  # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "userId"  # I

    .line 2483
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 2484
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY;

    .line 2486
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2484
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2487
    return-void
.end method

.method private sendAccessibilityEventToInputFilter(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"  # Landroid/view/accessibility/AccessibilityEvent;

    .line 635
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_10

    .line 637
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 639
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    .line 640
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 641
    return-void

    .line 639
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private sendServicesStateChanged(Landroid/os/RemoteCallbackList;J)V
    .registers 5
    .param p2, "uiTimeout"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;J)V"
        }
    .end annotation

    .line 1716
    .local p1, "userClients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/accessibility/IAccessibilityManagerClient;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V

    .line 1717
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V

    .line 1718
    return-void
.end method

.method private sendStateToAllClients(II)V
    .registers 4
    .param p1, "clientState"  # I
    .param p2, "userId"  # I

    .line 1693
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 1694
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(II)V

    .line 1695
    return-void
.end method

.method private sendStateToClients(II)V
    .registers 4
    .param p1, "clientState"  # I
    .param p2, "userId"  # I

    .line 1698
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserState(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 1699
    return-void
.end method

.method private sendStateToClients(ILandroid/os/RemoteCallbackList;)V
    .registers 4
    .param p1, "clientState"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;)V"
        }
    .end annotation

    .line 1703
    .local p2, "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/accessibility/IAccessibilityManagerClient;>;"
    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$K4sS36agT2_B03tVUTy8mldugxY;

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$K4sS36agT2_B03tVUTy8mldugxY;-><init>(I)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 1705
    return-void
.end method

.method private showAccessibilityButtonTargetSelection(I)V
    .registers 6
    .param p1, "displayId"  # I

    .line 1306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1307
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1308
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1309
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1310
    return-void
.end method

.method private showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 11
    .param p1, "service"  # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1792
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1793
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 1794
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1796
    .local v1, "label":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 1797
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v3, :cond_23

    .line 1798
    monitor-exit v0

    return-void

    .line 1800
    :cond_23
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 1801
    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1802
    monitor-exit v0

    return-void

    .line 1804
    :cond_31
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1010355

    .line 1805
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$4;

    invoke-direct {v5, p0, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$4;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 1806
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$3;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$3;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1827
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104021f

    .line 1833
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x104021e

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    .line 1834
    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1836
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 1837
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1839
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1841
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1842
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1843
    .end local v1  # "label":Ljava/lang/String;
    .end local v2  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v0

    .line 1844
    return-void

    .line 1843
    :catchall_9d
    move-exception v1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_3 .. :try_end_9f} :catchall_9d

    throw v1
.end method

.method private switchUser(I)V
    .registers 11
    .param p1, "userId"  # I

    .line 1092
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1093
    :try_start_3
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_d

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    if-eqz v1, :cond_d

    .line 1094
    monitor-exit v0

    return-void

    .line 1098
    :cond_d
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 1099
    .local v1, "oldUserState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->onSwitchToAnotherUserLocked()V

    .line 1102
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_32

    .line 1103
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v4, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$zXJtauhUptSkQJSF-M55-grAVbo;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$zXJtauhUptSkQJSF-M55-grAVbo;

    .line 1105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1103
    invoke-static {v4, p0, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1109
    :cond_32
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1110
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_49

    move v3, v5

    .line 1113
    .local v3, "announceNewUser":Z
    :cond_49
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 1115
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v4

    .line 1117
    .local v4, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    .line 1121
    invoke-direct {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1123
    if-eqz v3, :cond_64

    .line 1125
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v6, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gu-W_dQ2mWyy8l4tm19TzFxGbeM;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gu-W_dQ2mWyy8l4tm19TzFxGbeM;

    .line 1126
    invoke-static {v6, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xbb8

    .line 1125
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1129
    .end local v1  # "oldUserState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v2  # "userManager":Landroid/os/UserManager;
    .end local v3  # "announceNewUser":Z
    .end local v4  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_64
    monitor-exit v0

    .line 1130
    return-void

    .line 1129
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw v1
.end method

.method private unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 5
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1539
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1540
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_6
    if-lez v1, :cond_15

    .line 1543
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    .line 1540
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1545
    .end local v1  # "count":I
    :cond_15
    return-void
.end method

.method private unlockUser(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 1149
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1150
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)I

    move-result v1

    .line 1151
    .local v1, "parentUserId":I
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v1, v2, :cond_16

    .line 1152
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 1153
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1155
    .end local v1  # "parentUserId":I
    .end local v2  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_16
    monitor-exit v0

    .line 1156
    return-void

    .line 1155
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private updateAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 5
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2321
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_21

    .line 2322
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2323
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v2, :cond_1e

    .line 2324
    nop

    .line 2325
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v2

    .line 2324
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    .line 2321
    .end local v1  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2328
    .end local v0  # "i":I
    :cond_21
    return-void
.end method

.method private updateAccessibilityEnabledSetting(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 9
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1991
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1992
    .local v0, "identity":J
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v2}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_17

    .line 1993
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

    .line 1995
    .local v2, "isA11yEnabled":Z
    :goto_18
    :try_start_18
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_enabled"

    .line 1997
    if-eqz v2, :cond_23

    move v3, v4

    :cond_23
    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 1995
    invoke-static {v5, v6, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2d

    .line 2000
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2001
    nop

    .line 2002
    return-void

    .line 2000
    :catchall_2d
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private updateAccessibilityFocusBehaviorLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 7
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1880
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1881
    .local v0, "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1882
    .local v1, "boundServiceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1c

    .line 1883
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1884
    .local v3, "boundService":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->canRetrieveInteractiveWindowsLocked()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1885
    const/4 v4, 0x0

    iput-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    .line 1886
    return-void

    .line 1882
    .end local v3  # "boundService":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1889
    .end local v2  # "i":I
    :cond_1c
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    .line 1890
    return-void
.end method

.method private updateAccessibilityShortcutLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 9
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2160
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    if-nez v0, :cond_5

    .line 2161
    return-void

    .line 2164
    :cond_5
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    .line 2165
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 2166
    .local v0, "shortcutServiceIsInstalled":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-nez v0, :cond_32

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 2168
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    .line 2169
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2170
    const/4 v0, 0x1

    .line 2167
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2173
    .end local v1  # "i":I
    :cond_32
    if-nez v0, :cond_5f

    .line 2174
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    .line 2175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2177
    .local v2, "identity":J
    :try_start_3b
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_shortcut_target_service"

    iget v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2181
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accessibility_shortcut_enabled"

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v1, v4, v5, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_5a

    .line 2184
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2185
    goto :goto_5f

    .line 2184
    :catchall_5a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2187
    .end local v2  # "identity":J
    :cond_5f
    :goto_5f
    return-void
.end method

.method private updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 6
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1962
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1963
    .local v0, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_24

    .line 1964
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1965
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v3, v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    if-eqz v3, :cond_21

    .line 1966
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_21

    .line 1969
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    .line 1970
    return-void

    .line 1963
    .end local v2  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1973
    .end local v1  # "i":I
    :cond_24
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    .line 1974
    return-void
.end method

.method private updateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 12
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2290
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2291
    :try_start_3
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2292
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-nez v2, :cond_54

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.fingerprint"

    .line 2293
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2295
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2296
    .local v2, "numServices":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v2, :cond_54

    .line 2297
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 2298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_5d

    .line 2299
    .local v4, "identity":J
    const/4 v6, 0x0

    .line 2301
    .local v6, "service":Landroid/hardware/fingerprint/IFingerprintService;
    :try_start_2b
    const-string v7, "fingerprint"

    .line 2302
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 2301
    invoke-static {v7}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v7
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_4c

    move-object v6, v7

    .line 2304
    :try_start_36
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2305
    nop

    .line 2306
    if-eqz v6, :cond_51

    .line 2307
    new-instance v7, Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2308
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v7, v6, v8, v9}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;-><init>(Landroid/hardware/fingerprint/IFingerprintService;Landroid/content/res/Resources;Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    .line 2309
    goto :goto_54

    .line 2304
    :catchall_4c
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .end local p1  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    throw v7

    .line 2296
    .end local v4  # "identity":J
    .end local v6  # "service":Landroid/hardware/fingerprint/IFingerprintService;
    .restart local p0  # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .restart local p1  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 2314
    .end local v2  # "numServices":I
    .end local v3  # "i":I
    :cond_54
    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_36 .. :try_end_55} :catchall_5d

    .line 2315
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-eqz v0, :cond_5c

    .line 2316
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->updateClientList(Ljava/util/List;)V

    .line 2318
    :cond_5c
    return-void

    .line 2314
    .end local v1  # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method private updateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 9
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1738
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1740
    :cond_9
    const/4 v0, 0x0

    .line 1741
    .local v0, "setInputFilter":Z
    const/4 v1, 0x0

    .line 1742
    .local v1, "inputFilter":Lcom/android/server/accessibility/AccessibilityInputFilter;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1743
    const/4 v3, 0x0

    .line 1744
    .local v3, "flags":I
    :try_start_f
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-eqz v4, :cond_15

    .line 1745
    or-int/lit8 v3, v3, 0x1

    .line 1747
    :cond_15
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v4, :cond_1b

    .line 1748
    or-int/lit8 v3, v3, 0x40

    .line 1750
    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->userHasMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1751
    or-int/lit8 v3, v3, 0x20

    .line 1754
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v4, :cond_2f

    .line 1755
    or-int/lit8 v3, v3, 0x2

    .line 1757
    :cond_2f
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    if-eqz v4, :cond_35

    .line 1758
    or-int/lit8 v3, v3, 0x4

    .line 1760
    :cond_35
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    if-eqz v4, :cond_3b

    .line 1761
    or-int/lit8 v3, v3, 0x8

    .line 1763
    :cond_3b
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsPerformGesturesEnabled:Z

    if-eqz v4, :cond_41

    .line 1764
    or-int/lit8 v3, v3, 0x10

    .line 1766
    :cond_41
    if-eqz v3, :cond_63

    .line 1767
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-nez v4, :cond_5b

    .line 1768
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 1769
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-nez v4, :cond_57

    .line 1770
    new-instance v4, Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 1773
    :cond_57
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-object v1, v4

    .line 1774
    const/4 v0, 0x1

    .line 1776
    :cond_5b
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v4, v5, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setUserAndEnabledFeatures(II)V

    goto :goto_73

    .line 1778
    :cond_63
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v4, :cond_73

    .line 1779
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 1780
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v5, v6, v4}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setUserAndEnabledFeatures(II)V

    .line 1781
    const/4 v1, 0x0

    .line 1782
    const/4 v0, 0x1

    .line 1785
    .end local v3  # "flags":I
    :cond_73
    :goto_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_f .. :try_end_74} :catchall_7c

    .line 1786
    if-eqz v0, :cond_7b

    .line 1787
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 1789
    :cond_7b
    return-void

    .line 1785
    :catchall_7c
    move-exception v3

    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v3
.end method

.method private updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 9
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1930
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1931
    .local v0, "installedServiceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_48

    .line 1932
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1933
    .local v2, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1934
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_45

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x11

    if-gt v4, v5, :cond_45

    .line 1938
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    .local v4, "componentName":Landroid/content/ComponentName;
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1941
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 1931
    .end local v2  # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v3  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4  # "componentName":Landroid/content/ComponentName;
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1946
    .end local v1  # "i":I
    :cond_48
    return-void
.end method

.method private updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 7
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2221
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v1, :cond_7

    .line 2222
    return-void

    .line 2225
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    if-eqz v0, :cond_17

    .line 2227
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->unregisterAll()V

    .line 2228
    return-void

    .line 2234
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2235
    .local v0, "displays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-nez v1, :cond_4e

    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v1, :cond_24

    goto :goto_4e

    .line 2245
    :cond_24
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4d

    .line 2246
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    .line 2247
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 2248
    .local v3, "displayId":I
    invoke-direct {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->userHasListeningMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 2249
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/MagnificationController;->register(I)V

    goto :goto_4a

    .line 2250
    :cond_43
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    if-eqz v4, :cond_4a

    .line 2251
    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    .line 2245
    .end local v2  # "display":Landroid/view/Display;
    .end local v3  # "displayId":I
    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 2254
    .end local v1  # "i":I
    :cond_4d
    return-void

    .line 2237
    :cond_4e
    :goto_4e
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_69

    .line 2238
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    .line 2239
    .restart local v2  # "display":Landroid/view/Display;
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/MagnificationController;->register(I)V

    .line 2237
    .end local v2  # "display":Landroid/view/Display;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 2241
    .end local v1  # "i":I
    :cond_69
    return-void
.end method

.method private updatePerformGesturesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 6
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1949
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1950
    .local v0, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 1951
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1952
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1d

    .line 1954
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsPerformGesturesEnabled:Z

    .line 1955
    return-void

    .line 1950
    .end local v2  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1958
    .end local v1  # "i":I
    :cond_20
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsPerformGesturesEnabled:Z

    .line 1959
    return-void
.end method

.method private updateRecommendedUiTimeoutLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 10
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2331
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserNonInteractiveUiTimeout:I

    .line 2332
    .local v0, "newNonInteractiveUiTimeout":I
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserInteractiveUiTimeout:I

    .line 2334
    .local v1, "newInteractiveUiTimeout":I
    if-eqz v0, :cond_8

    if-nez v1, :cond_3e

    .line 2335
    :cond_8
    const/4 v2, 0x0

    .line 2336
    .local v2, "serviceNonInteractiveUiTimeout":I
    const/4 v3, 0x0

    .line 2337
    .local v3, "serviceInteractiveUiTimeout":I
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2338
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_38

    .line 2339
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getInteractiveUiTimeoutMillis()I

    move-result v6

    .line 2340
    .local v6, "timeout":I
    if-ge v3, v6, :cond_24

    .line 2341
    move v3, v6

    .line 2343
    :cond_24
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getNonInteractiveUiTimeoutMillis()I

    move-result v6

    .line 2344
    if-ge v2, v6, :cond_35

    .line 2345
    move v2, v6

    .line 2338
    .end local v6  # "timeout":I
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 2348
    .end local v5  # "i":I
    :cond_38
    if-nez v0, :cond_3b

    .line 2349
    move v0, v2

    .line 2351
    :cond_3b
    if-nez v1, :cond_3e

    .line 2352
    move v1, v3

    .line 2355
    .end local v2  # "serviceNonInteractiveUiTimeout":I
    .end local v3  # "serviceInteractiveUiTimeout":I
    .end local v4  # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :cond_3e
    iput v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mNonInteractiveUiTimeout:I

    .line 2356
    iput v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractiveUiTimeout:I

    .line 2357
    return-void
.end method

.method private updateRelevantEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 4
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1468
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$RFkfb_W9wnTTs_gy8Dg3k2uQOYQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$RFkfb_W9wnTTs_gy8Dg3k2uQOYQ;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1485
    return-void
.end method

.method private updateServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 25
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1614
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    iget-object v14, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 1616
    .local v14, "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iget v1, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 1617
    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v15

    .line 1619
    .local v15, "isUnlockingOrUnlocked":Z
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    move v10, v0

    .end local v0  # "i":I
    .local v10, "i":I
    .local v11, "count":I
    :goto_1c
    if-ge v10, v11, :cond_10e

    .line 1620
    iget-object v0, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1621
    .local v16, "installedService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    nop

    .line 1622
    invoke-virtual/range {v16 .. v16}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1621
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 1624
    .local v9, "componentName":Landroid/content/ComponentName;
    invoke-interface {v14, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1627
    .local v8, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    const-string v0, "AccessibilityManagerService"

    if-nez v15, :cond_5e

    invoke-virtual/range {v16 .. v16}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isDirectBootAware()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 1628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring non-encryption-aware service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    move/from16 v22, v10

    move/from16 v19, v11

    move-object/from16 v21, v14

    goto/16 :goto_106

    .line 1633
    :cond_5e
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1634
    move/from16 v22, v10

    move/from16 v19, v11

    move-object/from16 v21, v14

    goto/16 :goto_106

    .line 1636
    :cond_70
    iget-object v1, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    iget-object v1, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 1637
    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v1

    if-nez v1, :cond_d1

    .line 1638
    if-nez v8, :cond_bb

    .line 1639
    new-instance v17, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v2, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v0, v5, 0x1

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    iget-object v6, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v7, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    iget-object v4, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v3, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    move-object/from16 v0, v17

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v19, v3

    move-object v3, v9

    move-object/from16 v20, v4

    move-object/from16 v4, v16

    move-object/from16 v21, v14

    move-object v14, v8

    .end local v8  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .local v14, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .local v21, "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    move-object/from16 v8, v20

    move-object/from16 v20, v9

    .end local v9  # "componentName":Landroid/content/ComponentName;
    .local v20, "componentName":Landroid/content/ComponentName;
    move-object/from16 v9, p0

    move/from16 v22, v10

    .end local v10  # "i":I
    .local v22, "i":I
    move-object/from16 v10, v19

    move/from16 v19, v11

    .end local v11  # "count":I
    .local v19, "count":I
    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/android/server/accessibility/AccessibilityServiceConnection;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V

    move-object/from16 v8, v17

    move-object v14, v8

    .end local v14  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v8  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    goto :goto_cd

    .line 1642
    .end local v19  # "count":I
    .end local v20  # "componentName":Landroid/content/ComponentName;
    .end local v21  # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .end local v22  # "i":I
    .restart local v9  # "componentName":Landroid/content/ComponentName;
    .restart local v10  # "i":I
    .restart local v11  # "count":I
    .local v14, "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :cond_bb
    move-object/from16 v20, v9

    move/from16 v22, v10

    move/from16 v19, v11

    move-object/from16 v21, v14

    move-object v14, v8

    .end local v8  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v9  # "componentName":Landroid/content/ComponentName;
    .end local v10  # "i":I
    .end local v11  # "count":I
    .local v14, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v19  # "count":I
    .restart local v20  # "componentName":Landroid/content/ComponentName;
    .restart local v21  # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .restart local v22  # "i":I
    iget-object v0, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1643
    goto :goto_106

    .line 1645
    :cond_cd
    :goto_cd
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->bindLocked()V

    goto :goto_106

    .line 1637
    .end local v19  # "count":I
    .end local v20  # "componentName":Landroid/content/ComponentName;
    .end local v21  # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .end local v22  # "i":I
    .restart local v8  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v9  # "componentName":Landroid/content/ComponentName;
    .restart local v10  # "i":I
    .restart local v11  # "count":I
    .local v14, "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :cond_d1
    move-object/from16 v20, v9

    move/from16 v22, v10

    move/from16 v19, v11

    move-object/from16 v21, v14

    move-object v14, v8

    .end local v8  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v9  # "componentName":Landroid/content/ComponentName;
    .end local v10  # "i":I
    .end local v11  # "count":I
    .local v14, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v19  # "count":I
    .restart local v20  # "componentName":Landroid/content/ComponentName;
    .restart local v21  # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .restart local v22  # "i":I
    goto :goto_e4

    .line 1636
    .end local v19  # "count":I
    .end local v20  # "componentName":Landroid/content/ComponentName;
    .end local v21  # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .end local v22  # "i":I
    .restart local v8  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v9  # "componentName":Landroid/content/ComponentName;
    .restart local v10  # "i":I
    .restart local v11  # "count":I
    .local v14, "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :cond_db
    move-object/from16 v20, v9

    move/from16 v22, v10

    move/from16 v19, v11

    move-object/from16 v21, v14

    move-object v14, v8

    .line 1647
    .end local v8  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v9  # "componentName":Landroid/content/ComponentName;
    .end local v10  # "i":I
    .end local v11  # "count":I
    .local v14, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v19  # "count":I
    .restart local v20  # "componentName":Landroid/content/ComponentName;
    .restart local v21  # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .restart local v22  # "i":I
    :goto_e4
    if-eqz v14, :cond_106

    .line 1651
    const/4 v1, 0x0

    const-string/jumbo v2, "persist.sys.at.open"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_103

    .line 1652
    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.meizu.perfui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 1653
    const-string v1, "do not kill perfui!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 1655
    :cond_103
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    .line 1619
    .end local v14  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v16  # "installedService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v20  # "componentName":Landroid/content/ComponentName;
    :cond_106
    :goto_106
    add-int/lit8 v10, v22, 0x1

    move/from16 v11, v19

    move-object/from16 v14, v21

    .end local v22  # "i":I
    .restart local v10  # "i":I
    goto/16 :goto_1c

    .end local v19  # "count":I
    .end local v21  # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .restart local v11  # "count":I
    .local v14, "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :cond_10e
    move/from16 v22, v10

    move/from16 v19, v11

    move-object/from16 v21, v14

    .line 1662
    .end local v10  # "i":I
    .end local v11  # "count":I
    .end local v14  # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .restart local v21  # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    iget-object v0, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1663
    .local v0, "count":I
    iget-object v1, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 1664
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_120
    if-ge v1, v0, :cond_140

    .line 1665
    iget-object v2, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1666
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1667
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_13d

    .line 1668
    iget-object v3, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->add(I)V

    .line 1664
    .end local v2  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_13d
    add-int/lit8 v1, v1, 0x1

    goto :goto_120

    .line 1672
    .end local v1  # "i":I
    :cond_140
    const-class v1, Landroid/media/AudioManagerInternal;

    .line 1673
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    .line 1674
    .local v1, "audioManager":Landroid/media/AudioManagerInternal;
    if-eqz v1, :cond_14f

    .line 1675
    iget-object v2, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    invoke-virtual {v1, v2}, Landroid/media/AudioManagerInternal;->setAccessibilityServiceUids(Landroid/util/IntArray;)V

    .line 1677
    :cond_14f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityEnabledSetting(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1678
    return-void
.end method

.method private updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 10
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2058
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->isTouchExplorationEnabledLocked()Z

    move-result v0

    .line 2059
    .local v0, "enabled":Z
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2060
    .local v1, "serviceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_22

    .line 2061
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2062
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-direct {p0, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2063
    const/4 v0, 0x1

    .line 2064
    goto :goto_22

    .line 2060
    .end local v3  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2067
    .end local v2  # "i":I
    :cond_22
    :goto_22
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eq v0, v2, :cond_48

    .line 2068
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 2069
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2071
    .local v2, "identity":J
    :try_start_2c
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "touch_exploration_enabled"

    .line 2072
    if-eqz v0, :cond_39

    const/4 v6, 0x1

    goto :goto_3a

    :cond_39
    const/4 v6, 0x0

    :goto_3a
    iget v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 2071
    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_43

    .line 2075
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2076
    goto :goto_48

    .line 2075
    :catchall_43
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2078
    .end local v2  # "identity":J
    :cond_48
    :goto_48
    return-void
.end method

.method private updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 8
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1899
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->canRetrieveInteractiveWindowsLocked()Z

    move-result v0

    .line 1900
    .local v0, "observingWindows":Z
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1901
    .local v1, "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1902
    .local v2, "boundServiceCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-nez v0, :cond_21

    if-ge v3, v2, :cond_21

    .line 1903
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1904
    .local v4, "boundService":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->canRetrieveInteractiveWindowsLocked()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1905
    const/4 v0, 0x1

    .line 1902
    .end local v4  # "boundService":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1909
    .end local v3  # "i":I
    :cond_21
    if-eqz v0, :cond_36

    .line 1910
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez v3, :cond_35

    .line 1911
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    .line 1912
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    .line 1915
    :cond_35
    return-void

    .line 1918
    :cond_36
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-eqz v3, :cond_47

    .line 1919
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    .line 1920
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    .line 1922
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->clearWindowsLocked()V

    .line 1924
    :cond_47
    return-void
.end method

.method private userHasListeningMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;I)Z
    .registers 8
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .param p2, "displayId"  # I

    .line 2277
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2278
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_7
    if-ge v1, v2, :cond_22

    .line 2279
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2280
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2281
    invoke-virtual {v3, p2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isMagnificationCallbackEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2282
    const/4 v4, 0x1

    return v4

    .line 2278
    .end local v3  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2285
    .end local v1  # "i":I
    .end local v2  # "count":I
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method private userHasMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 7
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2261
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2262
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_7
    if-ge v1, v2, :cond_1c

    .line 2263
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2264
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2265
    const/4 v4, 0x1

    return v4

    .line 2262
    .end local v3  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2268
    .end local v1  # "i":I
    .end local v2  # "count":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method accessibilityFocusOnlyInActiveWindow()Z
    .registers 3

    .line 1074
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1075
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

    .line 1076
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I
    .registers 21
    .param p1, "windowToken"  # Landroid/view/IWindow;
    .param p2, "connection"  # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    move-object/from16 v14, p0

    move/from16 v15, p4

    iget-object v13, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 729
    :try_start_7
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 730
    invoke-virtual {v0, v15}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 731
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 734
    .local v6, "resolvedUid":I
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 735
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v2
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_88

    .line 734
    move-object/from16 v3, p3

    :try_start_1d
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v5
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_86

    .line 737
    .end local p3  # "packageName":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    :try_start_21
    sget v1, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    move v12, v1

    .line 741
    .local v12, "windowId":I
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, v15}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 742
    new-instance v8, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    const/4 v7, -0x1

    move-object v1, v8

    move-object/from16 v2, p0

    move v3, v12

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    move-object v1, v8

    .line 744
    .local v1, "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->linkToDeath()V

    .line 745
    iget-object v2, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 746
    iget-object v2, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 752
    .end local v1  # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    move v2, v12

    move-object v4, v13

    goto :goto_76

    .line 753
    :cond_51
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    :try_end_53
    .catchall {:try_start_21 .. :try_end_53} :catchall_83

    move-object v7, v1

    move-object/from16 v8, p0

    move v9, v12

    move-object/from16 v10, p2

    move-object v11, v5

    move v2, v12

    .end local v12  # "windowId":I
    .local v2, "windowId":I
    move v12, v6

    move-object v4, v13

    move v13, v0

    :try_start_5e
    invoke-direct/range {v7 .. v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 755
    .restart local v1  # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->linkToDeath()V

    .line 756
    invoke-direct {v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 757
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v7, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v7, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 758
    iget-object v7, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 765
    .end local v0  # "resolvedUserId":I
    .end local v1  # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v3  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v6  # "resolvedUid":I
    :goto_76
    monitor-exit v4
    :try_end_77
    .catchall {:try_start_5e .. :try_end_77} :catchall_8f

    .line 766
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 767
    .local v0, "wm":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility()V

    .line 768
    return v2

    .line 765
    .end local v0  # "wm":Lcom/android/server/wm/WindowManagerInternal;
    .end local v2  # "windowId":I
    :catchall_83
    move-exception v0

    move-object v4, v13

    goto :goto_8d

    .end local v5  # "packageName":Ljava/lang/String;
    .restart local p3  # "packageName":Ljava/lang/String;
    :catchall_86
    move-exception v0

    goto :goto_8b

    :catchall_88
    move-exception v0

    move-object/from16 v3, p3

    :goto_8b
    move-object v4, v13

    move-object v5, v3

    .end local p3  # "packageName":Ljava/lang/String;
    .restart local v5  # "packageName":Ljava/lang/String;
    :goto_8d
    :try_start_8d
    monitor-exit v4
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8f

    throw v0

    :catchall_8f
    move-exception v0

    goto :goto_8d
.end method

.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J
    .registers 13
    .param p1, "callback"  # Landroid/view/accessibility/IAccessibilityManagerClient;
    .param p2, "userId"  # I

    .line 535
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 540
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 545
    .local v1, "resolvedUserId":I
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 546
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/accessibility/AccessibilityManagerService$Client;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V

    move-object v3, v9

    .line 547
    .local v3, "client":Lcom/android/server/accessibility/AccessibilityManagerService$Client;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 548
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, p1, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 552
    nop

    .line 553
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result v4

    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 552
    invoke-static {v4, v5}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v4

    monitor-exit v0

    return-wide v4

    .line 556
    :cond_36
    iget-object v4, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, p1, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 565
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v1, v4, :cond_44

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result v4

    goto :goto_45

    :cond_44
    const/4 v4, 0x0

    :goto_45
    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 564
    invoke-static {v4, v5}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v4

    monitor-exit v0

    return-wide v4

    .line 568
    .end local v1  # "resolvedUserId":I
    .end local v2  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v3  # "client":Lcom/android/server/accessibility/AccessibilityManagerService$Client;
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method clearAccessibilityFocus(I)V
    .registers 3
    .param p1, "windowId"  # I

    .line 2713
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->clearAccessibilityFocusNotLocked(I)V

    .line 2714
    return-void
.end method

.method clearAccessibilityFocus(Ljava/util/function/IntSupplier;)V
    .registers 3
    .param p1, "windowId"  # Ljava/util/function/IntSupplier;

    .line 2709
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->clearAccessibilityFocus(I)V

    .line 2710
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 2550
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "AccessibilityManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2551
    :cond_b
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2552
    :try_start_e
    const-string v1, "ACCESSIBILITY MANAGER (dumpsys accessibility)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2553
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2554
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2555
    .local v1, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v1, :cond_1cd

    .line 2556
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2557
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User state[attributes:{id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", currentUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v5, v6, :cond_4f

    const/4 v5, 0x1

    goto :goto_50

    :cond_4f
    const/4 v5, 0x0

    :goto_50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", touchExplorationEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", displayMagnificationEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2562
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", navBarMagnificationEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", autoclickEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", nonInteractiveUiTimeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mNonInteractiveUiTimeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", interactiveUiTimeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractiveUiTimeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", installedServiceCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2568
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v4}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 2569
    const-string v4, ", "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2570
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/UiAutomationManager;->dumpUiAutomationService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2571
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2573
    :cond_10d
    const-string/jumbo v4, "}"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2574
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2575
    const-string v4, "     Bound services:{"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2576
    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2577
    .local v4, "serviceCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_122
    if-ge v5, v4, :cond_141

    .line 2578
    if-lez v5, :cond_133

    .line 2579
    const-string v6, ", "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2580
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2581
    const-string v6, "                     "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2583
    :cond_133
    iget-object v6, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2584
    .local v6, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2577
    .end local v6  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v5, v5, 0x1

    goto :goto_122

    .line 2586
    .end local v5  # "j":I
    :cond_141
    const-string/jumbo v5, "}"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2587
    const-string v5, "     Enabled services:{"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2588
    iget-object v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2589
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17f

    .line 2590
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 2591
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2592
    :goto_165
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17f

    .line 2593
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    move-object v6, v7

    .line 2594
    const-string v7, ", "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2595
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_165

    .line 2598
    .end local v6  # "componentName":Landroid/content/ComponentName;
    :cond_17f
    const-string/jumbo v6, "}"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2599
    const-string v6, "     Binding services:{"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2600
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v6

    .line 2601
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c0

    .line 2602
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 2603
    .restart local v6  # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2604
    :goto_1a6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c0

    .line 2605
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    move-object v6, v7

    .line 2606
    const-string v7, ", "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2607
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1a6

    .line 2610
    .end local v6  # "componentName":Landroid/content/ComponentName;
    :cond_1c0
    const-string/jumbo v6, "}]"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2611
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2555
    .end local v3  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v4  # "serviceCount":I
    .end local v5  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    .line 2613
    .end local v2  # "i":I
    :cond_1cd
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v2, :cond_20a

    .line 2614
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 2615
    .local v2, "windowCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1dc
    if-ge v3, v2, :cond_207

    .line 2616
    if-lez v3, :cond_1e8

    .line 2617
    const/16 v4, 0x2c

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 2618
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2620
    :cond_1e8
    const-string v4, "Window["

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2621
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 2622
    .local v4, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2623
    const/16 v5, 0x5d

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 2615
    nop

    .end local v4  # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1dc

    .line 2625
    .end local v3  # "j":I
    :cond_207
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2627
    .end local v1  # "userCount":I
    .end local v2  # "windowCount":I
    :cond_20a
    monitor-exit v0

    .line 2628
    return-void

    .line 2627
    :catchall_20c
    move-exception v1

    monitor-exit v0
    :try_end_20e
    .catchall {:try_start_e .. :try_end_20e} :catchall_20c

    throw v1
.end method

.method public ensureWindowsAvailableTimed()V
    .registers 10

    .line 2766
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2767
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 2768
    monitor-exit v0

    return-void

    .line 2772
    :cond_b
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez v1, :cond_16

    .line 2773
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 2774
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2777
    .end local v1  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_16
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez v1, :cond_1c

    .line 2778
    monitor-exit v0

    return-void

    .line 2782
    :cond_1c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2783
    .local v1, "startMillis":J
    :goto_20
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v3, :cond_3e

    .line 2784
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 2785
    .local v3, "elapsedMillis":J
    const-wide/16 v5, 0x1388

    sub-long/2addr v5, v3

    .line 2786
    .local v5, "remainMillis":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gtz v7, :cond_36

    .line 2787
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_40

    return-void

    .line 2790
    :cond_36
    :try_start_36
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3b} :catch_3c
    .catchall {:try_start_36 .. :try_end_3b} :catchall_40

    .line 2793
    goto :goto_3d

    .line 2791
    :catch_3c
    move-exception v7

    .line 2794
    .end local v3  # "elapsedMillis":J
    .end local v5  # "remainMillis":J
    :goto_3d
    goto :goto_20

    .line 2795
    .end local v1  # "startMillis":J
    :cond_3e
    :try_start_3e
    monitor-exit v0

    .line 2796
    return-void

    .line 2795
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_40

    throw v1
.end method

.method getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z
    .registers 3
    .param p1, "outPoint"  # Landroid/graphics/Point;

    .line 1036
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityShortcutService()Ljava/lang/String;
    .registers 4

    .line 2436
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    .line 2441
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2442
    :try_start_d
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 2443
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2444
    .end local v1  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v1

    .line 2438
    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getAccessibilityShortcutService requires the MANAGE_ACCESSIBILITY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccessibilityWindowId(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "windowToken"  # Landroid/os/IBinder;

    .line 2520
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2521
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_15

    .line 2525
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 2522
    :cond_15
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only SYSTEM can call getAccessibilityWindowId"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .end local p1  # "windowToken":Landroid/os/IBinder;
    throw v1

    .line 2526
    .restart local p0  # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .restart local p1  # "windowToken":Landroid/os/IBinder;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method getActiveWindowId()I
    .registers 2

    .line 1080
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getActiveWindowId()I

    move-result v0

    return v0
.end method

.method getBindInstantServiceAllowed(I)Z
    .registers 4
    .param p1, "userId"  # I

    .line 359
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserState(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 360
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    .line 361
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindInstantServiceAllowed()Z

    move-result v1

    return v1
.end method

.method public getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    .registers 4
    .param p1, "windowId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2362
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2363
    .local v0, "windowToken":Landroid/os/IBinder;
    if-nez v0, :cond_17

    .line 2364
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/IBinder;

    .line 2366
    :cond_17
    if-eqz v0, :cond_20

    .line 2367
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerInternal;->getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;

    move-result-object v1

    return-object v1

    .line 2370
    :cond_20
    const/4 v1, 0x0

    return-object v1
.end method

.method public getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .registers 4
    .param p1, "windowId"  # I

    .line 2867
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 2868
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 2869
    .local v0, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v0, :cond_17

    .line 2870
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 2872
    :cond_17
    if-eqz v0, :cond_20

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->access$2200(Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 2873
    return-object v0

    .line 2878
    :cond_20
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCurrentUserIdLocked()I
    .registers 2

    .line 322
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    return v0
.end method

.method public getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .registers 12
    .param p1, "feedbackType"  # I
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 663
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 666
    .local v1, "resolvedUserId":I
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 667
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v3}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 668
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 671
    :cond_1b
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 672
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 673
    .local v4, "serviceCount":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 674
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_27
    if-ge v6, v4, :cond_3e

    .line 675
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 676
    .local v7, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget v8, v7, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mFeedbackType:I

    and-int/2addr v8, p1

    if-eqz v8, :cond_3b

    .line 677
    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    .end local v7  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 680
    .end local v6  # "i":I
    :cond_3e
    monitor-exit v0

    return-object v5

    .line 681
    .end local v1  # "resolvedUserId":I
    .end local v2  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v3  # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .end local v4  # "serviceCount":I
    .end local v5  # "result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    return-object v0
.end method

.method public getInstalledAccessibilityServiceList(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 650
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 651
    .local v1, "resolvedUserId":I
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    monitor-exit v0

    return-object v2

    .line 652
    .end local v1  # "resolvedUserId":I
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;
    .registers 6

    .line 2375
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    if-nez v0, :cond_13

    .line 2376
    new-instance v0, Lcom/android/server/accessibility/KeyEventDispatcher;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/KeyEventDispatcher;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 2380
    :cond_13
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    return-object v0
.end method

.method public getMagnificationController()Lcom/android/server/accessibility/MagnificationController;
    .registers 5

    .line 2800
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2801
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    if-nez v1, :cond_19

    .line 2802
    new-instance v1, Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/accessibility/MagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 2803
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->setUserId(I)V

    .line 2805
    :cond_19
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    monitor-exit v0

    return-object v1

    .line 2806
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getMotionEventInjectorLocked()Lcom/android/server/accessibility/MotionEventInjector;
    .registers 6

    .line 1013
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 1014
    .local v0, "endMillis":J
    :goto_7
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    if-nez v2, :cond_21

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_21

    .line 1016
    :try_start_13
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1e} :catch_1f

    goto :goto_20

    .line 1017
    :catch_1f
    move-exception v2

    .line 1019
    :goto_20
    goto :goto_7

    .line 1021
    :cond_21
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    if-nez v2, :cond_2c

    .line 1022
    const-string v2, "AccessibilityManagerService"

    const-string v3, "MotionEventInjector installation timed out"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_2c
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    return-object v2
.end method

.method public getPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "requestCode"  # I
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "flags"  # I

    .line 2386
    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedTimeoutMillis()J
    .registers 5

    .line 2537
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2538
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 2539
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 2540
    .end local v1  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
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

    .line 3880
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getWindowBounds(ILandroid/graphics/Rect;)Z
    .registers 6
    .param p1, "windowId"  # I
    .param p2, "outBounds"  # Landroid/graphics/Rect;

    .line 1060
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1061
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 1062
    .local v1, "token":Landroid/os/IBinder;
    if-nez v1, :cond_1a

    .line 1063
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    move-object v1, v2

    .line 1065
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2a

    .line 1066
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerInternal;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1067
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1068
    const/4 v0, 0x1

    return v0

    .line 1070
    :cond_28
    const/4 v0, 0x0

    return v0

    .line 1065
    .end local v1  # "token":Landroid/os/IBinder;
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public getWindowToken(II)Landroid/os/IBinder;
    .registers 7
    .param p1, "windowId"  # I
    .param p2, "userId"  # I

    .line 899
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v1, "android.permission.RETRIEVE_WINDOW_TOKEN"

    const-string v2, "getWindowToken"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 906
    :try_start_c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 907
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 908
    .local v1, "resolvedUserId":I
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_19

    .line 909
    monitor-exit v0

    return-object v3

    .line 911
    :cond_19
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    if-nez v2, :cond_23

    .line 912
    monitor-exit v0

    return-object v3

    .line 914
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowTokenLocked(I)Landroid/os/IBinder;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 915
    .end local v1  # "resolvedUserId":I
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public interrupt(I)V
    .registers 11
    .param p1, "userId"  # I

    .line 687
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 692
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 694
    .local v1, "resolvedUserId":I
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v1, v2, :cond_f

    .line 695
    monitor-exit v0

    return-void

    .line 697
    :cond_f
    nop

    .line 698
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 699
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 700
    .local v3, "numServices":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 701
    .local v4, "interfacesToInterrupt":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/IAccessibilityServiceClient;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    if-ge v5, v3, :cond_36

    .line 702
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 703
    .local v6, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-object v7, v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 704
    .local v7, "a11yServiceBinder":Landroid/os/IBinder;
    iget-object v8, v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 705
    .local v8, "a11yServiceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v7, :cond_33

    if-eqz v8, :cond_33

    .line 706
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    .end local v6  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v7  # "a11yServiceBinder":Landroid/os/IBinder;
    .end local v8  # "a11yServiceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :cond_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 709
    .end local v1  # "resolvedUserId":I
    .end local v2  # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .end local v3  # "numServices":I
    .end local v5  # "i":I
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_67

    .line 710
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_3c
    if-ge v0, v1, :cond_66

    .line 712
    :try_start_3e
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onInterrupt()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_47} :catch_48

    .line 716
    goto :goto_63

    .line 713
    :catch_48
    move-exception v2

    .line 714
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending interrupt request to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 714
    const-string v5, "AccessibilityManagerService"

    invoke-static {v5, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    .end local v2  # "re":Landroid/os/RemoteException;
    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 718
    .end local v0  # "i":I
    .end local v1  # "count":I
    :cond_66
    return-void

    .line 709
    .end local v4  # "interfacesToInterrupt":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/IAccessibilityServiceClient;>;"
    :catchall_67
    move-exception v1

    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v1
.end method

.method public isAccessibilityButtonShown()Z
    .registers 2

    .line 327
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityButtonShown:Z

    return v0
.end method

.method public synthetic lambda$updateRelevantEventsLocked$0$AccessibilityManagerService(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .registers 7
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .param p2, "client"  # Lcom/android/server/accessibility/AccessibilityManagerService$Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1471
    const/4 v0, 0x0

    .line 1472
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1473
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result v2

    .line 1475
    .local v2, "relevantEventTypes":I
    iget v3, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    if-eq v3, v2, :cond_f

    .line 1476
    iput v2, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 1477
    const/4 v0, 0x1

    .line 1479
    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_18

    .line 1480
    if-eqz v0, :cond_17

    .line 1481
    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManagerClient;->setRelevantEventTypes(I)V

    .line 1483
    :cond_17
    return-void

    .line 1479
    .end local v2  # "relevantEventTypes":I
    :catchall_18
    move-exception v2

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public synthetic lambda$updateRelevantEventsLocked$1$AccessibilityManagerService(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .registers 3
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 1469
    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$CNt8wbTQCYcsUnUkUCQHtKqr-tY;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$CNt8wbTQCYcsUnUkUCQHtKqr-tY;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->broadcastToClients(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Ljava/util/function/Consumer;)V

    .line 1484
    return-void
.end method

.method public notifyAccessibilityButtonClicked(I)V
    .registers 4
    .param p1, "displayId"  # I

    .line 926
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 931
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityButtonClickedLocked(I)V

    .line 933
    monitor-exit v0

    .line 934
    return-void

    .line 933
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v1

    .line 928
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR_SERVICE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyAccessibilityButtonVisibilityChanged(Z)V
    .registers 4
    .param p1, "shown"  # Z

    .line 945
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 950
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 951
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityButtonVisibilityChangedLocked(Z)V

    .line 952
    monitor-exit v0

    .line 953
    return-void

    .line 952
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v1

    .line 947
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR_SERVICE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;I)Z
    .registers 6
    .param p1, "event"  # Landroid/view/KeyEvent;
    .param p2, "policyFlags"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 968
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 969
    nop

    .line 970
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    .line 971
    .local v1, "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 972
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 974
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/accessibility/KeyEventDispatcher;->notifyKeyEventLocked(Landroid/view/KeyEvent;ILjava/util/List;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 975
    .end local v1  # "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public notifyMagnificationChanged(ILandroid/graphics/Region;FFF)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "region"  # Landroid/graphics/Region;
    .param p3, "scale"  # F
    .param p4, "centerX"  # F
    .param p5, "centerY"  # F

    .line 991
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 992
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    .line 993
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V

    .line 994
    monitor-exit v0

    .line 995
    return-void

    .line 994
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public onClientChangeLocked(Z)V
    .registers 3
    .param p1, "serviceInfoChanged"  # Z

    .line 2899
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 2900
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2901
    if-eqz p1, :cond_e

    .line 2902
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2904
    :cond_e
    return-void
.end method

.method onGesture(I)Z
    .registers 5
    .param p1, "gestureId"  # I

    .line 957
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 958
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(IZ)Z

    move-result v1

    .line 959
    .local v1, "handled":Z
    if-nez v1, :cond_10

    .line 960
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(IZ)Z

    move-result v2

    move v1, v2

    .line 962
    :cond_10
    monitor-exit v0

    return v1

    .line 963
    .end local v1  # "handled":Z
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 2910
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

    .line 2912
    return-void
.end method

.method onTouchInteractionEnd()V
    .registers 2

    .line 1088
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionEnd()V

    .line 1089
    return-void
.end method

.method onTouchInteractionStart()V
    .registers 2

    .line 1084
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionStart()V

    .line 1085
    return-void
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
    .registers 33
    .param p1, "resolvedWindowId"  # I
    .param p2, "accessibilityNodeId"  # J
    .param p4, "action"  # I
    .param p5, "arguments"  # Landroid/os/Bundle;
    .param p6, "interactionId"  # I
    .param p7, "callback"  # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "fetchFlags"  # I
    .param p9, "interrogatingTid"  # J

    .line 2815
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v14, p4

    const/4 v3, 0x0

    .line 2816
    .local v3, "activityToken":Landroid/os/IBinder;
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2817
    :try_start_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v0

    .line 2818
    .local v0, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    const/4 v15, 0x0

    if-nez v0, :cond_13

    .line 2819
    monitor-exit v4

    return v15

    .line 2821
    :cond_13
    const/16 v5, 0x40

    const/16 v16, 0x1

    if-eq v14, v5, :cond_20

    const/16 v5, 0x80

    if-ne v14, v5, :cond_1e

    goto :goto_20

    :cond_1e
    move v5, v15

    goto :goto_22

    :cond_20
    :goto_20
    move/from16 v5, v16

    .line 2823
    .local v5, "isA11yFocusAction":Z
    :goto_22
    iget-object v6, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 2824
    invoke-virtual {v6, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v6

    .line 2825
    .local v6, "a11yWindowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v5, :cond_37

    .line 2826
    iget-object v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 2827
    invoke-static {v7, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$2100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/WindowInfo;

    move-result-object v7

    .line 2828
    .local v7, "windowInfo":Landroid/view/WindowInfo;
    if-eqz v7, :cond_37

    iget-object v8, v7, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_b5

    move-object v3, v8

    move-object v12, v3

    goto :goto_38

    .line 2830
    .end local v7  # "windowInfo":Landroid/view/WindowInfo;
    :cond_37
    move-object v12, v3

    .end local v3  # "activityToken":Landroid/os/IBinder;
    .local v12, "activityToken":Landroid/os/IBinder;
    :goto_38
    if-eqz v6, :cond_50

    :try_start_3a
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    if-eqz v3, :cond_50

    if-nez v5, :cond_50

    .line 2832
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_4c

    move-object v0, v3

    move-object/from16 v17, v0

    goto :goto_52

    .line 2834
    .end local v0  # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v5  # "isA11yFocusAction":Z
    .end local v6  # "a11yWindowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_4c
    move-exception v0

    move-object v3, v12

    goto/16 :goto_b6

    .restart local v0  # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    :cond_50
    move-object/from16 v17, v0

    .end local v0  # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .local v17, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    :goto_52
    :try_start_52
    monitor-exit v4
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_af

    .line 2835
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 2836
    .local v18, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 2840
    .local v19, "identityToken":J
    :try_start_5b
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v4, v5, v15}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 2843
    invoke-direct {v1, v2, v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyOutsideTouchIfNeeded(II)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_68} :catch_a7
    .catchall {:try_start_5b .. :try_end_68} :catchall_a0

    .line 2844
    if-eqz v12, :cond_7e

    .line 2845
    :try_start_6a
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2846
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setFocusedActivity(Landroid/os/IBinder;)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_75} :catch_7a
    .catchall {:try_start_6a .. :try_end_75} :catchall_76

    goto :goto_7e

    .line 2857
    :catchall_76
    move-exception v0

    move-object/from16 v21, v12

    goto :goto_a3

    .line 2851
    :catch_7a
    move-exception v0

    move-object/from16 v21, v12

    goto :goto_aa

    .line 2848
    :cond_7e
    :goto_7e
    :try_start_7e
    invoke-static/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->access$2200(Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v3
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_82} :catch_a7
    .catchall {:try_start_7e .. :try_end_82} :catchall_a0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, v18

    move-object/from16 v21, v12

    .end local v12  # "activityToken":Landroid/os/IBinder;
    .local v21, "activityToken":Landroid/os/IBinder;
    move-wide/from16 v12, p9

    :try_start_94
    invoke-interface/range {v3 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_97} :catch_9e
    .catchall {:try_start_94 .. :try_end_97} :catchall_9c

    .line 2857
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2858
    nop

    .line 2859
    return v16

    .line 2857
    :catchall_9c
    move-exception v0

    goto :goto_a3

    .line 2851
    :catch_9e
    move-exception v0

    goto :goto_aa

    .line 2857
    .end local v21  # "activityToken":Landroid/os/IBinder;
    .restart local v12  # "activityToken":Landroid/os/IBinder;
    :catchall_a0
    move-exception v0

    move-object/from16 v21, v12

    .end local v12  # "activityToken":Landroid/os/IBinder;
    .restart local v21  # "activityToken":Landroid/os/IBinder;
    :goto_a3
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2851
    .end local v21  # "activityToken":Landroid/os/IBinder;
    .restart local v12  # "activityToken":Landroid/os/IBinder;
    :catch_a7
    move-exception v0

    move-object/from16 v21, v12

    .line 2855
    .end local v12  # "activityToken":Landroid/os/IBinder;
    .local v0, "re":Landroid/os/RemoteException;
    .restart local v21  # "activityToken":Landroid/os/IBinder;
    :goto_aa
    nop

    .line 2857
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2855
    return v15

    .line 2834
    .end local v0  # "re":Landroid/os/RemoteException;
    .end local v17  # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v18  # "interrogatingPid":I
    .end local v19  # "identityToken":J
    .end local v21  # "activityToken":Landroid/os/IBinder;
    .restart local v12  # "activityToken":Landroid/os/IBinder;
    :catchall_af
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v3, v21

    .end local v12  # "activityToken":Landroid/os/IBinder;
    .restart local v21  # "activityToken":Landroid/os/IBinder;
    goto :goto_b6

    .end local v21  # "activityToken":Landroid/os/IBinder;
    .restart local v3  # "activityToken":Landroid/os/IBinder;
    :catchall_b5
    move-exception v0

    :goto_b6
    :try_start_b6
    monitor-exit v4
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v0
.end method

.method public performAccessibilityShortcut()V
    .registers 10

    .line 2395
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2396
    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_20

    .line 2398
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "performAccessibilityShortcut requires the MANAGE_ACCESSIBILITY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2402
    :cond_20
    :goto_20
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    .line 2403
    .local v0, "frameworkFeatureMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;>;"
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2404
    :try_start_27
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 2405
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    .line 2406
    .local v3, "serviceName":Landroid/content/ComponentName;
    if-nez v3, :cond_33

    .line 2407
    monitor-exit v1

    return-void

    .line 2409
    :cond_33
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 2411
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 2412
    .local v4, "featureInfo":Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;
    new-instance v5, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2413
    invoke-virtual {v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {v5, v6, v7, v8}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 2415
    .local v5, "setting":Landroid/provider/SettingsStringUtil$SettingStringHelper;
    invoke-virtual {v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_66

    .line 2416
    invoke-virtual {v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    goto :goto_6d

    .line 2418
    :cond_66
    invoke-virtual {v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOffValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 2421
    .end local v4  # "featureInfo":Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;
    .end local v5  # "setting":Landroid/provider/SettingsStringUtil$SettingStringHelper;
    :cond_6d
    :goto_6d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_71
    .catchall {:try_start_27 .. :try_end_71} :catchall_8f

    .line 2423
    .local v4, "identity":J
    :try_start_71
    iget-object v6, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7f

    .line 2424
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v3, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V

    goto :goto_84

    .line 2426
    :cond_7f
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v3, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->disableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    :try_end_84
    .catchall {:try_start_71 .. :try_end_84} :catchall_8a

    .line 2429
    :goto_84
    :try_start_84
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2430
    nop

    .line 2431
    .end local v2  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v3  # "serviceName":Landroid/content/ComponentName;
    .end local v4  # "identity":J
    monitor-exit v1

    .line 2432
    return-void

    .line 2429
    .restart local v2  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .restart local v3  # "serviceName":Landroid/content/ComponentName;
    .restart local v4  # "identity":J
    :catchall_8a
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "frameworkFeatureMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;>;"
    .end local p0  # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    throw v6

    .line 2431
    .end local v2  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v3  # "serviceName":Landroid/content/ComponentName;
    .end local v4  # "identity":J
    .restart local v0  # "frameworkFeatureMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;>;"
    .restart local p0  # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    :catchall_8f
    move-exception v2

    monitor-exit v1
    :try_end_91
    .catchall {:try_start_84 .. :try_end_91} :catchall_8f

    throw v2
.end method

.method public performActionOnAccessibilityFocusedItem(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 3
    .param p1, "action"  # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1050
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->performActionOnAccessibilityFocusedItemNotLocked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v0

    return v0
.end method

.method public persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 10
    .param p1, "settingName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 1596
    .local p2, "componentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1597
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1598
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 1599
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1601
    :cond_20
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    .end local v2  # "componentName":Landroid/content/ComponentName;
    goto :goto_9

    .line 1603
    :cond_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1605
    .local v1, "identity":J
    :try_start_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1606
    .local v3, "settingValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1607
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const/4 v5, 0x0

    goto :goto_3f

    :cond_3e
    move-object v5, v3

    .line 1606
    :goto_3f
    invoke-static {v4, p1, v5, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_48

    .line 1609
    nop

    .end local v3  # "settingValue":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1610
    nop

    .line 1611
    return-void

    .line 1609
    :catchall_48
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V
    .registers 20
    .param p1, "owner"  # Landroid/os/IBinder;
    .param p2, "serviceClient"  # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "accessibilityServiceInfo"  # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p4, "flags"  # I

    .line 851
    move-object v13, p0

    iget-object v0, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v1, "android.permission.RETRIEVE_WINDOW_CONTENT"

    const-string/jumbo v2, "registerUiTestAutomationService"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v14, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 855
    :try_start_e
    iget-object v1, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    iget-object v4, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v0, v6, 0x1

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    iget-object v7, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v8, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v10, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v11, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object v9, p0

    move/from16 v12, p4

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/accessibility/UiAutomationManager;->registerUiTestAutomationServiceLocked(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;I)V

    .line 858
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 859
    monitor-exit v14

    .line 860
    return-void

    .line 859
    :catchall_35
    move-exception v0

    monitor-exit v14
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_35

    throw v0
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .registers 10
    .param p1, "window"  # Landroid/view/IWindow;

    .line 773
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 778
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 777
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 779
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 780
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v2

    .line 782
    .local v2, "removedWindowId":I
    if-ltz v2, :cond_21

    .line 783
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onAccessibilityClientRemovedLocked(I)V

    .line 788
    monitor-exit v0

    return-void

    .line 790
    :cond_21
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 791
    .local v3, "userCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    if-ge v4, v3, :cond_46

    .line 792
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 793
    .local v5, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    iget-object v7, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    .line 794
    invoke-direct {p0, v1, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v6

    .line 796
    .local v6, "removedWindowIdForUser":I
    if-ltz v6, :cond_43

    .line 797
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v7, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onAccessibilityClientRemovedLocked(I)V

    .line 803
    monitor-exit v0

    return-void

    .line 791
    .end local v5  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v6  # "removedWindowIdForUser":I
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 806
    .end local v1  # "token":Landroid/os/IBinder;
    .end local v2  # "removedWindowId":I
    .end local v3  # "userCount":I
    .end local v4  # "i":I
    :cond_46
    monitor-exit v0

    .line 807
    return-void

    .line 806
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .registers 19
    .param p1, "originalCallback"  # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p2, "resolvedWindowId"  # I
    .param p3, "interactionId"  # I
    .param p4, "interrogatingPid"  # I
    .param p5, "interrogatingTid"  # J

    .line 2886
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 2887
    move v2, p2

    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 2888
    .local v1, "windowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    if-nez v3, :cond_15

    goto :goto_26

    .line 2892
    :cond_15
    new-instance v11, Lcom/android/server/accessibility/ActionReplacingCallback;

    .line 2893
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->access$2200(Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v6

    move-object v4, v11

    move-object v5, p1

    move v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Lcom/android/server/accessibility/ActionReplacingCallback;-><init>(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;Landroid/view/accessibility/IAccessibilityInteractionConnection;IIJ)V

    .line 2892
    return-object v11

    .line 2890
    :cond_26
    :goto_26
    return-object p1
.end method

.method restoreEnabledAccessibilityServicesLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "oldSetting"  # Ljava/lang/String;
    .param p2, "newSetting"  # Ljava/lang/String;

    .line 1167
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 1168
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 1170
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1171
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1172
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1173
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    const-string v3, "enabled_accessibility_services"

    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 1177
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1178
    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 13
    .param p1, "event"  # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "userId"  # I

    .line 573
    const/4 v0, 0x0

    .line 575
    .local v0, "dispatchEvent":Z
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 576
    :try_start_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    const/4 v3, -0x3

    if-ne v2, v3, :cond_1a

    .line 579
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 580
    .local v2, "pip":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v2, :cond_1a

    .line 581
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    .line 582
    .local v3, "pipId":I
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 589
    .end local v2  # "pip":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v3  # "pipId":I
    :cond_1a
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 590
    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 593
    .local v2, "resolvedUserId":I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 594
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v5

    .line 593
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 597
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v2, v3, :cond_6f

    .line 598
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 599
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 600
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 601
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I

    move-result v9

    .line 599
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateActiveAndAccessibilityFocusedWindowLocked(IJII)V

    .line 602
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 603
    const/4 v0, 0x1

    .line 605
    :cond_58
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v3, :cond_6f

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v3, :cond_6f

    .line 606
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v4, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$BX2CMQr5jU9WhPYx7Aaae4zgxf4;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$BX2CMQr5jU9WhPYx7Aaae4zgxf4;

    .line 608
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    .line 606
    invoke-static {v4, p0, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 611
    .end local v2  # "resolvedUserId":I
    :cond_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_4 .. :try_end_70} :catchall_aa

    .line 613
    if-eqz v0, :cond_9e

    .line 617
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_89

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-eqz v1, :cond_89

    .line 619
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 620
    .local v1, "wm":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility()V

    .line 622
    .end local v1  # "wm":Lcom/android/server/wm/WindowManagerInternal;
    :cond_89
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 623
    const/4 v2, 0x0

    :try_start_8d
    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 624
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 625
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/UiAutomationManager;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 626
    monitor-exit v1

    goto :goto_9e

    :catchall_9b
    move-exception v2

    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_8d .. :try_end_9d} :catchall_9b

    throw v2

    .line 629
    :cond_9e
    :goto_9e
    sget v1, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-eq v1, v2, :cond_a9

    .line 630
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 632
    :cond_a9
    return-void

    .line 611
    :catchall_aa
    move-exception v2

    :try_start_ab
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v2
.end method

.method public sendFingerprintGesture(I)Z
    .registers 5
    .param p1, "gestureKeyCode"  # I

    .line 2499
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2500
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1b

    .line 2503
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_23

    .line 2504
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-nez v0, :cond_16

    .line 2505
    const/4 v0, 0x0

    return v0

    .line 2507
    :cond_16
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->onFingerprintGesture(I)Z

    move-result v0

    return v0

    .line 2501
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only SYSTEM can call sendFingerprintGesture"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .end local p1  # "gestureKeyCode":I
    throw v1

    .line 2503
    .restart local p0  # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .restart local p1  # "gestureKeyCode":I
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v1
.end method

.method setBindInstantServiceAllowed(IZ)V
    .registers 6
    .param p1, "userId"  # I
    .param p2, "allowed"  # Z

    .line 366
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserState(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 368
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v1, :cond_18

    .line 369
    if-nez p2, :cond_d

    .line 370
    monitor-exit v0

    return-void

    .line 372
    :cond_d
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-direct {v2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    move-object v1, v2

    .line 373
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1d

    .line 376
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setBindInstantServiceAllowed(Z)V

    .line 377
    return-void

    .line 375
    .end local v1  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method setMotionEventInjector(Lcom/android/server/accessibility/MotionEventInjector;)V
    .registers 4
    .param p1, "motionEventInjector"  # Lcom/android/server/accessibility/MotionEventInjector;

    .line 1004
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1005
    :try_start_3
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    .line 1007
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1008
    monitor-exit v0

    .line 1009
    return-void

    .line 1008
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .registers 11
    .param p1, "connection"  # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v1, "android.permission.MODIFY_ACCESSIBILITY_DATA"

    const-string/jumbo v2, "setPictureInPictureActionReplacingConnection"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    :try_start_d
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    if-eqz v1, :cond_19

    .line 833
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->unlinkToDeath()V

    .line 834
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 836
    :cond_19
    if-eqz p1, :cond_2e

    .line 837
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    const/4 v4, -0x3

    const-string v6, "foo.bar.baz"

    const/16 v7, 0x3e8

    const/4 v8, -0x1

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 840
    .local v1, "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 841
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->linkToDeath()V

    .line 843
    .end local v1  # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    :cond_2e
    monitor-exit v0

    .line 844
    return-void

    .line 843
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_30

    throw v1
.end method

.method public temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "service"  # Landroid/content/ComponentName;
    .param p2, "touchExplorationEnabled"  # Z

    .line 872
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v1, "android.permission.TEMPORARY_ENABLE_ACCESSIBILITY"

    const-string/jumbo v2, "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_13

    .line 876
    return-void

    .line 878
    :cond_13
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 882
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iput-boolean p2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 883
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 884
    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    .line 885
    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    .line 886
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 887
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 888
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 889
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 890
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 893
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 894
    .end local v1  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v0

    .line 895
    return-void

    .line 894
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .registers 4
    .param p1, "serviceClient"  # Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 864
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 865
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/UiAutomationManager;->unregisterUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 866
    monitor-exit v0

    .line 867
    return-void

    .line 866
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
