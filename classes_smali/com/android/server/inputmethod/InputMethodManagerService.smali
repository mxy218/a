.class public Lcom/android/server/inputmethod/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;,
        Lcom/android/server/inputmethod/InputMethodManagerService$Injector;,
        Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;,
        Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;,
        Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;,
        Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;,
        Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;,
        Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;,
        Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;,
        Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;,
        Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;,
        Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;,
        Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;,
        Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardBehavior;,
        Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandResult;
    }
.end annotation


# static fields
.field private static final ACTION_SHOW_INPUT_METHOD_PICKER:Ljava/lang/String; = "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

.field static final DEBUG:Z = false

.field private static final FALLBACK_DISPLAY_ID:I = 0x0

.field private static final IME_CONNECTION_BIND_FLAGS:I = 0x40800005

.field private static final IME_VISIBLE_BIND_FLAGS:I = 0x2c081001

.field static final MSG_APPLY_IME_VISIBILITY:I = 0xbfe

.field static final MSG_BIND_CLIENT:I = 0xbc2

.field static final MSG_BIND_INPUT:I = 0x3f2

.field static final MSG_CREATE_SESSION:I = 0x41a

.field static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field static final MSG_HIDE_CURRENT_INPUT_METHOD:I = 0x40b

.field static final MSG_HIDE_SOFT_INPUT:I = 0x406

.field static final MSG_INITIALIZE_IME:I = 0x410

.field static final MSG_MZ_FINISH_INPUT:I = 0x26b6

.field static final MSG_MZ_VIS_CHANGED:I = 0x26ac

.field static final MSG_REPORT_FULLSCREEN_MODE:I = 0xbe5

.field static final MSG_REPORT_PRE_RENDERED:I = 0xbf4

.field static final MSG_SET_ACTIVE:I = 0xbcc

.field static final MSG_SET_INTERACTIVE:I = 0xbd6

.field static final MSG_SHOW_IM_CONFIG:I = 0x3

.field static final MSG_SHOW_IM_SUBTYPE_ENABLER:I = 0x2

.field static final MSG_SHOW_IM_SUBTYPE_PICKER:I = 0x1

.field static final MSG_SHOW_SOFT_INPUT:I = 0x3fc

.field static final MSG_START_INPUT:I = 0x7d0

.field static final MSG_SYSTEM_UNLOCK_USER:I = 0x1388

.field static final MSG_UNBIND_CLIENT:I = 0xbb8

.field static final MSG_UNBIND_INPUT:I = 0x3e8

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final QUICK_REPLY_KEY:Ljava/lang/String; = "quick_reply"

.field static final SECURE_SUGGESTION_SPANS_MAX_SIZE:I = 0x14

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field static final TIME_TO_RECONNECT:J = 0xbb8L


# instance fields
.field private mAccessibilityRequestingNoSoftKeyboard:Z

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdditionalSubtypeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBackDisposition:I

.field mBoundToMethod:Z

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

.field mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

.field private mCurClientInKeyguard:Z

.field mCurFocusedWindow:Landroid/os/IBinder;

.field mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

.field mCurFocusedWindowSoftInputMode:I

.field mCurId:Ljava/lang/String;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field mCurInputContextMissingMethods:I

.field mCurIntent:Landroid/content/Intent;

.field mCurMethod:Lcom/android/internal/view/IInputMethod;

.field mCurMethodId:Ljava/lang/String;

.field mCurSeq:I

.field mCurToken:Landroid/os/IBinder;

.field mCurTokenDisplayId:I

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mDeviceRotation:I

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

.field private mGameModeController:Lcom/android/server/inputmethod/GameModeController;

.field final mHandler:Landroid/os/Handler;

.field private final mHardKeyboardBehavior:I

.field private final mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

.field final mHasFeature:Z

.field mHaveConnection:Z

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

.field private mImeSwitchPendingIntent:Landroid/app/PendingIntent;

.field private mImeSwitcherNotification:Landroid/app/Notification$Builder;

.field private final mImeTargetWindowMap:Ljava/util/WeakHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field mImeWindowVis:I

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field mInFullscreenMode:Z

.field mInputShown:Z

.field private mIsInGameMode:Z

.field mIsInteractive:Z

.field private final mIsLowRam:Z

.field private mIsQuickReply:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBindTime:J

.field mLastImeTargetWindow:Landroid/os/IBinder;

.field private mLastInputShown:Z

.field private mLastSwitchUserId:I

.field private mLastSystemLocales:Landroid/os/LocaleList;

.field private mMeizuFlags:I

.field private mMeizuLock:Ljava/lang/Object;

.field private mMethodIdBeforeFloatingMode:Ljava/lang/String;

.field final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mMethodMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMethodMapUpdateCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation
.end field

.field private final mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationShown:Z

.field final mRes:Landroid/content/res/Resources;

.field private final mSecureSuggestionSpans:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/text/style/SuggestionSpan;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

.field final mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

.field private mShouldUseFloatingKeyboard:Z

.field mShowExplicitlyRequested:Z

.field mShowForced:Z

.field private mShowImeWithHardKeyboard:Z

.field private mShowOngoingImeSwitcherForPhones:Z

.field mShowRequested:Z

.field private final mSlotIme:Ljava/lang/String;

.field private final mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation
.end field

.field private mStartInputToken:Landroid/os/IBinder;

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field private mSubtypeIds:[I

.field private mSwitchFloatingKeyboardRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;

.field private final mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field private mSwitchingDialogToken:Landroid/os/IBinder;

.field mSystemReady:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field mVisibleBound:Z

.field final mVisibleConnection:Landroid/content/ServiceConnection;

.field final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private final mWindowModeKeyboardObserver:Landroid/database/ContentObserver;

.field private mWindowModeKeyboardOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"  # Landroid/content/Context;

    .line 1468
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 319
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDeviceRotation:I

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 345
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 346
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    .line 353
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 357
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 373
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 462
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    .line 488
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    .line 574
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 641
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 677
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 679
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 706
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    .line 713
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    .line 786
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    .line 943
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    invoke-direct {v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    .line 5835
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$8;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$8;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowModeKeyboardObserver:Landroid/database/ContentObserver;

    .line 5844
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$9;

    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$9;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1469
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1470
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1471
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1472
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1474
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    .line 1476
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->addWindowModeKeyboardListObserver()V

    .line 1478
    nop

    .line 1479
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1478
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1480
    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1481
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1482
    new-instance v3, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$oxpSIwENeEjKtHbxqUXuaXD0Gn8;

    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$oxpSIwENeEjKtHbxqUXuaXD0Gn8;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 1483
    new-instance v3, Lcom/android/internal/os/HandlerCaller;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-direct {v3, p1, v1, v4, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1489
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1490
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1491
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1492
    const-class v3, Landroid/os/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1493
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    invoke-direct {v3, p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    .line 1494
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.software.input_methods"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHasFeature:Z

    .line 1496
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10406bc

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 1497
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0058

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardBehavior:I

    .line 1499
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsLowRam:Z

    .line 1501
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1503
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "android.allowDuringSetup"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1505
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1506
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v4, 0x106001c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 1508
    .local v3, "accentColor":I
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1510
    const v5, 0x10804d2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1511
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1512
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1513
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1514
    const-string/jumbo v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1515
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 1517
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->mzSetImeSwitcherIcons()V

    .line 1520
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1521
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1522
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 1524
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1526
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    .line 1527
    const/4 v0, 0x0

    .line 1529
    .local v0, "userId":I
    :try_start_190
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I
    :try_end_19a
    .catch Landroid/os/RemoteException; {:try_start_190 .. :try_end_19a} :catch_19c

    move v0, v5

    .line 1532
    goto :goto_1a4

    .line 1530
    :catch_19c
    move-exception v5

    .line 1531
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "InputMethodManagerService"

    const-string v7, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1534
    .end local v5  # "e":Landroid/os/RemoteException;
    :goto_1a4
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    .line 1537
    new-instance v5, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1538
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    xor-int/lit8 v13, v6, 0x1

    move-object v8, v5

    move v12, v0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1540
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1541
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-static {v5, v0}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1542
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-static {v5, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 1546
    new-instance v5, Lcom/android/server/inputmethod/GameModeControllerImpl;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/inputmethod/GameModeControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mGameModeController:Lcom/android/server/inputmethod/GameModeController;

    .line 1547
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mGameModeController:Lcom/android/server/inputmethod/GameModeController;

    invoke-interface {v5, v2}, Lcom/android/server/inputmethod/GameModeController;->setListening(Z)V

    .line 1548
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mGameModeController:Lcom/android/server/inputmethod/GameModeController;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$3;

    invoke-direct {v5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-interface {v2, v5}, Lcom/android/server/inputmethod/GameModeController;->addGameModeControllerCallback(Lcom/android/server/inputmethod/GameModeController$GameModeControllerCallback;)V

    .line 1556
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->initParams()V

    .line 1558
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/view/View;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Z

    .line 185
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Z

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setIsInGameMode(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/inputmethod/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/inputmethod/InputMethodManagerService;)[I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showConfigureInputMethods()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/UserManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # I

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # I

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/ShellCommand;

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getLastSwitchUserId(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/ShellCommand;

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I
    .registers 4
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/ShellCommand;
    .param p2, "x2"  # Z

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/ShellCommand;

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/ShellCommand;

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;II)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeWindowStatus(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Landroid/os/IBinder;

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportStartInput(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 5
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Landroid/net/Uri;
    .param p3, "x3"  # Ljava/lang/String;

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Z

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportFullscreenMode(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Ljava/lang/String;

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # I

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideMySoftInput(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # I

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showMySoftInput(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # I

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToPreviousInputMethod(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Z

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyUserAction(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Landroid/view/inputmethod/EditorInfo;

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportPreRendered(Landroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Z

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->applyImeVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Z

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchFloatingModeLocked(Z)V

    return-void
.end method

.method static synthetic access$4302(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Z

    .line 185
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowModeKeyboardOn:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isWindowModeKeyboardSwitchOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/hardware/display/DisplayManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/inputmethod/InputMethodManagerService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDeviceRotation:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/inputmethod/InputMethodManagerService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # I

    .line 185
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDeviceRotation:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Z

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setIsQuickReply(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Z

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/inputmethod/InputMethodManagerService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 185
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private addWindowModeKeyboardListObserver()V
    .registers 5

    .line 5825
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isWindowModeKeyboardSwitchOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowModeKeyboardOn:Z

    .line 5826
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5827
    const-string/jumbo v1, "mz_window_mode_system_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowModeKeyboardObserver:Landroid/database/ContentObserver;

    .line 5826
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5831
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 5832
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 5833
    return-void
.end method

.method private applyImeVisibility(Landroid/os/IBinder;Z)V
    .registers 9
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "setVisible"  # Z

    .line 3753
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3754
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3755
    monitor-exit v0

    return-void

    .line 3757
    :cond_b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_2b

    .line 3758
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbfe

    .line 3759
    if-eqz p2, :cond_21

    const/4 v4, 0x1

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    :goto_22
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3758
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3761
    :cond_2b
    monitor-exit v0

    .line 3762
    return-void

    .line 3761
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 7
    .param p1, "service"  # Landroid/content/Intent;
    .param p2, "conn"  # Landroid/content/ServiceConnection;
    .param p3, "flags"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1786
    if-eqz p1, :cond_17

    if-nez p2, :cond_5

    goto :goto_17

    .line 1790
    :cond_5
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1791
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1790
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 1787
    :cond_17
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- bind failed: service = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", conn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    const/4 v0, 0x0

    return v0
.end method

.method private calledFromValidUserLocked()Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1717
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1718
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1726
    .local v1, "userId":I
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_e

    .line 1727
    return v2

    .line 1729
    :cond_e
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    if-ne v1, v3, :cond_17

    .line 1730
    return v2

    .line 1732
    :cond_17
    sget-boolean v3, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-nez v3, :cond_24

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1733
    return v2

    .line 1741
    :cond_24
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2f

    .line 1748
    return v2

    .line 1751
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- IPC called from background users. Ignore. callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    .line 1752
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1751
    const-string v4, "InputMethodManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    invoke-static {v1}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1758
    return v2

    .line 1761
    :cond_52
    const/4 v2, 0x0

    return v2
.end method

.method private calledWithValidTokenLocked(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1772
    if-eqz p1, :cond_38

    .line 1775
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_36

    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to an invalid token. uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1776
    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const/4 v0, 0x0

    return v0

    .line 1780
    :cond_36
    const/4 v0, 0x1

    return v0

    .line 1773
    :cond_38
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "token must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 6
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;

    .line 3340
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3341
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    if-eqz p1, :cond_18

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 3342
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_18

    .line 3343
    return v2

    .line 3344
    :cond_18
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2d

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 3347
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3344
    invoke-static {v3, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 3348
    return v2

    .line 3350
    :cond_2d
    const/4 v1, 0x0

    return v1
.end method

.method public static checkIsQuickReply(Landroid/app/ActivityManager;)Z
    .registers 3
    .param p0, "activityManager"  # Landroid/app/ActivityManager;

    .line 5803
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->isWindowMode(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    .line 5804
    :catch_a
    move-exception v0

    .line 5805
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5806
    const/4 v1, 0x0

    return v1
.end method

.method private chooseNewDefaultIMELocked()Z
    .registers 3

    .line 4074
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4075
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 4074
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 4076
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_15

    .line 4080
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 4081
    const/4 v1, 0x1

    return v1

    .line 4084
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method static computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I
    .registers 4
    .param p0, "displayId"  # I
    .param p1, "checker"  # Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 2294
    const/4 v0, 0x0

    if-eqz p0, :cond_f

    const/4 v1, -0x1

    if-ne p0, v1, :cond_7

    goto :goto_f

    .line 2300
    :cond_7
    invoke-interface {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;->displayCanShowIme(I)Z

    move-result v1

    if-eqz v1, :cond_e

    move v0, p0

    :cond_e
    return v0

    .line 2295
    :cond_f
    :goto_f
    return v0
.end method

.method private createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 14
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "contentUri"  # Landroid/net/Uri;
    .param p3, "packageName"  # Ljava/lang/String;

    .line 4695
    if-eqz p1, :cond_ae

    .line 4698
    if-eqz p3, :cond_a5

    .line 4701
    if-eqz p2, :cond_9d

    .line 4704
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 4705
    .local v0, "contentUriScheme":Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 4709
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 4710
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 4711
    .local v4, "uid":I
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_20

    .line 4712
    monitor-exit v1

    return-object v3

    .line 4714
    :cond_20
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v2, p1, :cond_46

    .line 4715
    const-string v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring createInputContentUriToken mCurToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4717
    monitor-exit v1

    return-object v3

    .line 4722
    :cond_46
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 4723
    const-string v2, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring createInputContentUriToken mCurAttribute.packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v6, v6, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    monitor-exit v1

    return-object v3

    .line 4728
    :cond_74
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move v8, v2

    .line 4730
    .local v8, "imeUserId":I
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4732
    .local v7, "appUserId":I
    invoke-static {p2, v8}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 4734
    .local v6, "contentUriOwnerUserId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 4741
    .local v3, "contentUriWithoutUserId":Landroid/net/Uri;
    new-instance v9, Lcom/android/server/inputmethod/InputContentUriTokenHandler;

    move-object v2, v9

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;-><init>(Landroid/net/Uri;ILjava/lang/String;II)V

    monitor-exit v1

    return-object v9

    .line 4743
    .end local v3  # "contentUriWithoutUserId":Landroid/net/Uri;
    .end local v4  # "uid":I
    .end local v6  # "contentUriOwnerUserId":I
    .end local v7  # "appUserId":I
    .end local v8  # "imeUserId":I
    :catchall_92
    move-exception v2

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_15 .. :try_end_94} :catchall_92

    throw v2

    .line 4706
    :cond_95
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "contentUri must have content scheme"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4702
    .end local v0  # "contentUriScheme":Ljava/lang/String;
    :cond_9d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentUri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4699
    :cond_a5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4696
    :cond_ae
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "token"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .registers 6
    .param p1, "sessionState"  # Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2405
    if-eqz p1, :cond_28

    .line 2406
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 2408
    :try_start_7
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 2412
    goto :goto_1b

    .line 2409
    :catch_d
    move-exception v0

    .line 2410
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "InputMethodManagerService"

    const-string v3, "Session failed to close due to remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2411
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2413
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_1b
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2415
    :cond_1d
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_28

    .line 2416
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2417
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    .line 2420
    :cond_28
    return-void
.end method

.method private getActivityViewToScreenMatrixLocked(II)Landroid/graphics/Matrix;
    .registers 9
    .param p1, "clientDisplayId"  # I
    .param p2, "imeDisplayId"  # I

    .line 2105
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 2106
    return-object v0

    .line 2108
    :cond_4
    move v1, p1

    .line 2109
    .local v1, "displayId":I
    const/4 v2, 0x0

    .line 2111
    .local v2, "matrix":Landroid/graphics/Matrix;
    :goto_6
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 2112
    .local v3, "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    if-nez v3, :cond_11

    .line 2113
    return-object v0

    .line 2115
    :cond_11
    if-nez v2, :cond_1e

    .line 2116
    new-instance v4, Landroid/graphics/Matrix;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1600(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v2, v4

    goto :goto_25

    .line 2118
    :cond_1e
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1600(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 2120
    :goto_25
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1500(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v4

    iget v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-ne v4, p2, :cond_2e

    .line 2121
    return-object v2

    .line 2123
    :cond_2e
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1500(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v4

    iget v1, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 2124
    .end local v3  # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    goto :goto_6
.end method

.method private getAppShowFlags()I
    .registers 3

    .line 2064
    const/4 v0, 0x0

    .line 2065
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_8

    .line 2066
    or-int/lit8 v0, v0, 0x2

    goto :goto_e

    .line 2067
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v1, :cond_e

    .line 2068
    or-int/lit8 v0, v0, 0x1

    .line 2070
    :cond_e
    :goto_e
    return v0
.end method

.method private getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 9

    .line 4610
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 4611
    return-object v1

    .line 4613
    :cond_6
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    move-result v0

    .line 4614
    .local v0, "subtypeIsSelected":Z
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4615
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_80

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_80

    .line 4618
    :cond_1f
    if-eqz v0, :cond_2f

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v3, :cond_2f

    .line 4619
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v3

    if-nez v3, :cond_7d

    .line 4620
    :cond_2f
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v3

    .line 4621
    .local v3, "subtypeId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_71

    .line 4625
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4626
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 4629
    .local v4, "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_53

    .line 4630
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_70

    .line 4631
    :cond_53
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_70

    .line 4632
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v7, "keyboard"

    invoke-static {v5, v4, v7, v1, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4635
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v5, :cond_70

    .line 4636
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v5, v4, v1, v1, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4641
    .end local v4  # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_70
    :goto_70
    goto :goto_7d

    .line 4642
    :cond_71
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4645
    .end local v3  # "subtypeId":I
    :cond_7d
    :goto_7d
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v1

    .line 4616
    :cond_80
    :goto_80
    return-object v1
.end method

.method private getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 4655
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4656
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4657
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private getEnabledInputMethodListLocked(I)Ljava/util/List;
    .registers 12
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1854
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 1855
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 1857
    :cond_f
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1858
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 1859
    .local v7, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v1

    .line 1861
    .local v8, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v8, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1862
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v8, v0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 1864
    new-instance v9, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1865
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x1

    move-object v1, v9

    move-object v4, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 1866
    .local v1, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method private getEnabledInputMethodSubtypeListLocked(Ljava/lang/String;ZI)Ljava/util/List;
    .registers 15
    .param p1, "imiId"  # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"  # Z
    .param p3, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1896
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p3, v0, :cond_2f

    .line 1898
    if-nez p1, :cond_17

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 1899
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_1f

    .line 1901
    .end local v0  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_17
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 1903
    .restart local v0  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1f
    if-nez v0, :cond_26

    .line 1904
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1906
    :cond_26
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1909
    .end local v0  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2f
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1910
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 1911
    .local v7, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v1

    .line 1913
    .local v8, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v8, p3}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1914
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p3, v8, v0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 1916
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 1917
    .local v9, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v9, :cond_56

    .line 1918
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1920
    :cond_56
    new-instance v10, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1921
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x1

    move-object v1, v10

    move-object v4, v0

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 1922
    .local v1, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v9, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getImeShowFlags()I
    .registers 3

    .line 2053
    const/4 v0, 0x0

    .line 2054
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_8

    .line 2055
    or-int/lit8 v0, v0, 0x3

    goto :goto_e

    .line 2057
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-eqz v1, :cond_e

    .line 2058
    or-int/lit8 v0, v0, 0x1

    .line 2060
    :cond_e
    :goto_e
    return v0
.end method

.method private getInputMethodListAsUser(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 4649
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4650
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4651
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private getInputMethodListLocked(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1837
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_10

    .line 1839
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    goto :goto_28

    .line 1841
    .end local v0  # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_10
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1842
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1843
    .local v1, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1845
    .local v2, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v2, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1846
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    move-object v0, v1

    .line 1849
    .end local v1  # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2  # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local v0, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_28
    return-object v0
.end method

.method private getIsInGameMode()Z
    .registers 2

    .line 5721
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInGameMode:Z

    return v0
.end method

.method private getIsQuickReply()Z
    .registers 2

    .line 5725
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsQuickReply:Z

    return v0
.end method

.method private getLastSwitchUserId(Landroid/os/ShellCommand;)I
    .registers 5
    .param p1, "shellCommand"  # Landroid/os/ShellCommand;

    .line 5045
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5046
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5047
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 5048
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private static handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I
    .registers 6
    .param p0, "shellCommand"  # Landroid/os/ShellCommand;

    .line 5151
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 5152
    .local v0, "nextOption":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 5153
    nop

    .line 5161
    .end local v0  # "nextOption":Ljava/lang/String;
    const/4 v0, -0x2

    return v0

    .line 5155
    .restart local v0  # "nextOption":Ljava/lang/String;
    :cond_9
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x5e8

    const/4 v4, 0x1

    if-eq v2, v3, :cond_23

    const v3, 0x4f7b216b

    if-eq v2, v3, :cond_19

    :cond_18
    goto :goto_2c

    :cond_19
    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v1, v4

    goto :goto_2c

    :cond_23
    const-string v2, "-u"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v1, 0x0

    :goto_2c
    if-eqz v1, :cond_31

    if-eq v1, v4, :cond_31

    .line 5160
    .end local v0  # "nextOption":Ljava/lang/String;
    goto :goto_0

    .line 5158
    .restart local v0  # "nextOption":Ljava/lang/String;
    :cond_31
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private handleSetInteractive(Z)V
    .registers 10
    .param p1, "interactive"  # Z

    .line 4060
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4061
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 4062
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 4065
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v2, :cond_39

    .line 4066
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbcc

    .line 4067
    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2a

    move v5, v6

    goto :goto_2b

    :cond_2a
    move v5, v1

    :goto_2b
    iget-boolean v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    if-eqz v7, :cond_30

    move v1, v6

    :cond_30
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4066
    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4070
    :cond_39
    monitor-exit v0

    .line 4071
    return-void

    .line 4070
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I
    .registers 20
    .param p1, "shellCommand"  # Landroid/os/ShellCommand;
    .param p2, "enabled"  # Z

    .line 5117
    move-object/from16 v7, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v8

    .line 5118
    .local v8, "userIdToBeResolved":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 5119
    .local v9, "imeId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    .line 5120
    .local v10, "out":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v11

    .line 5121
    .local v11, "error":Ljava/io/PrintWriter;
    iget-object v12, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 5122
    :try_start_15
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5123
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 5122
    invoke-static {v8, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 5124
    .local v0, "userIds":[I
    array-length v13, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_26
    if-ge v15, v13, :cond_44

    aget v1, v0, v15

    move v6, v1

    .line 5125
    .local v6, "userId":I
    move-object/from16 v5, p1

    invoke-direct {v7, v6, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 5126
    goto :goto_41

    .line 5128
    :cond_34
    move-object/from16 v1, p0

    move v2, v6

    move-object v3, v9

    move/from16 v4, p2

    move-object v5, v10

    move/from16 v16, v6

    .end local v6  # "userId":I
    .local v16, "userId":I
    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)V

    .line 5124
    .end local v16  # "userId":I
    :goto_41
    add-int/lit8 v15, v15, 0x1

    goto :goto_26

    .line 5131
    .end local v0  # "userIds":[I
    :cond_44
    monitor-exit v12

    .line 5132
    return v14

    .line 5131
    :catchall_46
    move-exception v0

    monitor-exit v12
    :try_end_48
    .catchall {:try_start_15 .. :try_end_48} :catchall_46

    throw v0
.end method

.method private handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)V
    .registers 25
    .param p1, "userId"  # I
    .param p2, "imeId"  # Ljava/lang/String;
    .param p3, "enabled"  # Z
    .param p4, "out"  # Ljava/io/PrintWriter;
    .param p5, "error"  # Ljava/io/PrintWriter;

    .line 5168
    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    const/4 v12, 0x0

    .line 5169
    .local v12, "failedToEnableUnknownIme":Z
    const/4 v13, 0x0

    .line 5170
    .local v13, "previouslyEnabled":Z
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-ne v7, v1, :cond_29

    .line 5171
    if-eqz v9, :cond_23

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 5172
    const/4 v12, 0x1

    goto/16 :goto_9f

    .line 5174
    :cond_23
    invoke-direct {v0, v8, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result v13

    goto/16 :goto_9f

    .line 5177
    :cond_29
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v14, v1

    .line 5178
    .local v14, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v1

    .line 5179
    .local v15, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v6, v1

    .line 5181
    .local v6, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v6, v7}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 5182
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, v6, v14, v15}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 5184
    new-instance v16, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5185
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v17, 0x0

    move-object/from16 v1, v16

    move-object v4, v14

    move/from16 v5, p1

    move-object/from16 v18, v6

    .end local v6  # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local v18, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 5186
    .local v1, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    if-eqz v9, :cond_92

    .line 5187
    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 5188
    const/4 v12, 0x1

    goto :goto_9f

    .line 5190
    :cond_69
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 5191
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 5192
    const/4 v2, 0x1

    .line 5193
    .end local v13  # "previouslyEnabled":Z
    .local v2, "previouslyEnabled":Z
    move v13, v2

    goto :goto_8b

    .line 5195
    .end local v2  # "previouslyEnabled":Z
    .end local v3  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v13  # "previouslyEnabled":Z
    :cond_8a
    goto :goto_71

    .line 5196
    :cond_8b
    :goto_8b
    if-nez v13, :cond_9f

    .line 5197
    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    goto :goto_9f

    .line 5201
    :cond_92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5204
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v3

    .line 5202
    invoke-virtual {v1, v2, v3, v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v13

    .line 5207
    .end local v1  # "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .end local v14  # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v15  # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v18  # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :cond_9f
    :goto_9f
    if-eqz v12, :cond_be

    .line 5208
    const-string v1, "Unknown input method "

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5209
    invoke-virtual {v11, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cannot be enabled for user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e8

    .line 5212
    :cond_be
    const-string v1, "Input method "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5213
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5214
    const-string v1, ": "

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5215
    if-ne v9, v13, :cond_d0

    const-string v1, "already "

    goto :goto_d3

    :cond_d0
    const-string/jumbo v1, "now "

    :goto_d3
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5216
    if-eqz v9, :cond_db

    const-string v1, "enabled"

    goto :goto_dd

    :cond_db
    const-string v1, "disabled"

    :goto_dd
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5217
    const-string v1, " for user #"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5218
    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 5220
    :goto_e8
    return-void
.end method

.method private handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I
    .registers 18
    .param p1, "shellCommand"  # Landroid/os/ShellCommand;

    .line 5059
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 5060
    .local v0, "all":Z
    const/4 v2, 0x0

    .line 5061
    .local v2, "brief":Z
    const/4 v3, -0x2

    move v4, v3

    move v3, v2

    move v2, v0

    .line 5063
    .end local v0  # "all":Z
    .local v2, "all":Z
    .local v3, "brief":Z
    .local v4, "userIdToBeResolved":I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 5064
    .local v0, "nextOption":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_86

    .line 5065
    nop

    .line 5080
    .end local v0  # "nextOption":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 5081
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 5082
    .local v0, "pr":Ljava/io/PrintWriter;
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5083
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 5082
    invoke-static {v4, v8, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v8

    .line 5084
    .local v8, "userIds":[I
    array-length v9, v8

    move v10, v5

    :goto_28
    if-ge v10, v9, :cond_81

    aget v11, v8, v10

    .line 5085
    .local v11, "userId":I
    if-eqz v2, :cond_33

    .line 5086
    invoke-direct {v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(I)Ljava/util/List;

    move-result-object v12

    goto :goto_37

    .line 5087
    :cond_33
    invoke-direct {v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object v12

    :goto_37
    nop

    .line 5088
    .local v12, "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    array-length v13, v8

    if-le v13, v6, :cond_48

    .line 5089
    const-string v13, "User #"

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5090
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 5091
    const-string v13, ":"

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5093
    :cond_48
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    .line 5094
    .local v14, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v3, :cond_62

    .line 5095
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7b

    .line 5097
    :cond_62
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5098
    const-string v15, ":"

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5099
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/android/server/inputmethod/-$$Lambda$Z2NtIIfW6UZqUgiVBM1fNETGPS8;

    invoke-direct {v15, v0}, Lcom/android/server/inputmethod/-$$Lambda$Z2NtIIfW6UZqUgiVBM1fNETGPS8;-><init>(Ljava/io/PrintWriter;)V

    const-string v6, "  "

    invoke-virtual {v14, v15, v6}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5101
    .end local v14  # "info":Landroid/view/inputmethod/InputMethodInfo;
    :goto_7b
    const/4 v6, 0x1

    goto :goto_4c

    .line 5084
    .end local v11  # "userId":I
    .end local v12  # "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_7d
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    goto :goto_28

    .line 5103
    .end local v0  # "pr":Ljava/io/PrintWriter;
    .end local v8  # "userIds":[I
    :cond_81
    monitor-exit v7

    .line 5104
    return v5

    .line 5103
    :catchall_83
    move-exception v0

    monitor-exit v7
    :try_end_85
    .catchall {:try_start_14 .. :try_end_85} :catchall_83

    throw v0

    .line 5067
    .local v0, "nextOption":Ljava/lang/String;
    :cond_86
    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x5d4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v7, v8, :cond_bd

    const/16 v5, 0x5e6

    if-eq v7, v5, :cond_b3

    const/16 v5, 0x5e8

    if-eq v7, v5, :cond_a9

    const v5, 0x4f7b216b

    if-eq v7, v5, :cond_9f

    :cond_9e
    goto :goto_c6

    :cond_9f
    const-string v5, "--user"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    move v5, v9

    goto :goto_c7

    :cond_a9
    const-string v5, "-u"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    move v5, v10

    goto :goto_c7

    :cond_b3
    const-string v5, "-s"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    const/4 v5, 0x1

    goto :goto_c7

    :cond_bd
    const-string v7, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    goto :goto_c7

    :goto_c6
    move v5, v6

    :goto_c7
    if-eqz v5, :cond_dc

    const/4 v6, 0x1

    if-eq v5, v6, :cond_da

    if-eq v5, v10, :cond_d1

    if-eq v5, v9, :cond_d1

    goto :goto_de

    .line 5076
    :cond_d1
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    goto :goto_de

    .line 5072
    :cond_da
    const/4 v3, 0x1

    .line 5073
    goto :goto_de

    .line 5069
    :cond_dc
    const/4 v2, 0x1

    .line 5070
    nop

    .line 5079
    .end local v0  # "nextOption":Ljava/lang/String;
    :goto_de
    goto/16 :goto_8
.end method

.method private handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I
    .registers 22
    .param p1, "shellCommand"  # Landroid/os/ShellCommand;

    .line 5290
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 5291
    .local v2, "out":Ljava/io/PrintWriter;
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v3

    .line 5292
    .local v3, "userIdToBeResolved":I
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 5293
    :try_start_d
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5294
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 5293
    invoke-static {v3, v0, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 5295
    .local v0, "userIds":[I
    array-length v5, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_1e
    if-ge v7, v5, :cond_11b

    aget v8, v0, v7
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_120

    .line 5296
    .local v8, "userId":I
    move-object/from16 v15, p1

    :try_start_24
    invoke-direct {v1, v8, v15}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v9

    if-nez v9, :cond_2c

    .line 5297
    goto/16 :goto_116

    .line 5301
    :cond_2c
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    if-ne v8, v9, :cond_89

    .line 5302
    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 5303
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 5305
    invoke-direct {v1, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 5307
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v10, v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5309
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$SkFx0gCz5ltIh90rm1gl_N-wDWM;

    invoke-direct {v10, v1}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$SkFx0gCz5ltIh90rm1gl_N-wDWM;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5312
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$-9-NV9-J24Jr9m-wcbQnLu0hhjU;

    invoke-direct {v10, v1}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$-9-NV9-J24Jr9m-wcbQnLu0hhjU;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5314
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 5315
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5316
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5317
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v11

    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5318
    invoke-virtual {v12}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v12

    .line 5315
    invoke-static {v9, v10, v11, v12}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 5319
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v9

    .line 5320
    .local v9, "nextIme":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v10

    .local v10, "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    goto :goto_e6

    .line 5322
    .end local v9  # "nextIme":Ljava/lang/String;
    .end local v10  # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_89
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    move-object v14, v9

    .line 5323
    .local v14, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v9

    .line 5324
    .local v13, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    move-object v12, v9

    .line 5326
    .local v12, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v12, v8}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 5327
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9, v8, v12, v14, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 5329
    new-instance v16, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5330
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/16 v17, 0x0

    move-object/from16 v9, v16

    move-object/from16 v18, v12

    .end local v12  # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local v18, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    move-object v12, v14

    move-object v6, v13

    .end local v13  # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v6, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    move v13, v8

    move-object/from16 v19, v14

    .end local v14  # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v19, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    move/from16 v14, v17

    invoke-direct/range {v9 .. v14}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    move-object/from16 v9, v16

    .line 5333
    .local v9, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    .line 5334
    .restart local v10  # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {v10}, Lcom/android/server/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    .line 5337
    .local v11, "nextIme":Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v9, v12}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 5338
    new-instance v12, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$cbEjGgC40X7HsuUviRQkKGegQKg;

    invoke-direct {v12, v9}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$cbEjGgC40X7HsuUviRQkKGegQKg;-><init>(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;)V

    invoke-interface {v10, v12}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 5342
    invoke-virtual {v9, v11}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5343
    const/4 v12, -0x1

    invoke-virtual {v9, v12}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    move-object v9, v11

    .line 5345
    .end local v6  # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v11  # "nextIme":Ljava/lang/String;
    .end local v18  # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v19  # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v9, "nextIme":Ljava/lang/String;
    :goto_e6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reset current and enabled IMEs for user #"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Selected: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5347
    new-instance v6, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$yBUcRNgC_2SdMjBHdbSjb2l9-Rw;

    invoke-direct {v6, v2}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$yBUcRNgC_2SdMjBHdbSjb2l9-Rw;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v10, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 5295
    .end local v8  # "userId":I
    .end local v9  # "nextIme":Ljava/lang/String;
    .end local v10  # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_116
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1e

    :cond_11b
    move-object/from16 v15, p1

    .line 5349
    .end local v0  # "userIds":[I
    monitor-exit v4

    .line 5350
    const/4 v0, 0x0

    return v0

    .line 5349
    :catchall_120
    move-exception v0

    move-object/from16 v15, p1

    :goto_123
    monitor-exit v4
    :try_end_124
    .catchall {:try_start_24 .. :try_end_124} :catchall_125

    throw v0

    :catchall_125
    move-exception v0

    goto :goto_123
.end method

.method private handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I
    .registers 25
    .param p1, "shellCommand"  # Landroid/os/ShellCommand;

    .line 5230
    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v2

    .line 5231
    .local v2, "userIdToBeResolved":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 5232
    .local v3, "imeId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 5233
    .local v4, "out":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 5234
    .local v5, "error":Ljava/io/PrintWriter;
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 5235
    :try_start_15
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5236
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    .line 5235
    invoke-static {v2, v0, v7}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 5237
    .local v0, "userIds":[I
    array-length v7, v0

    const/4 v9, 0x0

    :goto_25
    if-ge v9, v7, :cond_c9

    aget v10, v0, v9

    .line 5238
    .local v10, "userId":I
    move-object/from16 v15, p1

    invoke-direct {v1, v10, v15}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v11

    if-nez v11, :cond_35

    .line 5239
    move-object/from16 v22, v0

    goto/16 :goto_c3

    .line 5241
    :cond_35
    const/16 v17, 0x0

    .line 5242
    .local v17, "failedToSelectUnknownIme":Z
    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v11

    const/4 v14, -0x1

    if-ne v10, v11, :cond_53

    .line 5243
    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4e

    .line 5244
    invoke-virtual {v1, v3, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    move-object/from16 v22, v0

    goto :goto_a0

    .line 5246
    :cond_4e
    const/16 v17, 0x1

    move-object/from16 v22, v0

    goto :goto_a0

    .line 5249
    :cond_53
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    move-object v13, v11

    .line 5250
    .local v13, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v11

    .line 5251
    .local v12, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 5253
    .local v11, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-static {v11, v10}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 5254
    iget-object v14, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14, v10, v11, v13, v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 5256
    new-instance v18, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v14, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5257
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/16 v19, 0x0

    move-object/from16 v20, v11

    .end local v11  # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local v20, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    move-object/from16 v11, v18

    move-object/from16 v21, v12

    .end local v12  # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v21, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    move-object v12, v14

    move-object v14, v13

    .end local v13  # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v14, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    move-object v13, v8

    move-object/from16 v22, v0

    move-object v8, v14

    const/4 v0, -0x1

    .end local v0  # "userIds":[I
    .end local v14  # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v8, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v22, "userIds":[I
    move v15, v10

    move/from16 v16, v19

    invoke-direct/range {v11 .. v16}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    move-object/from16 v11, v18

    .line 5259
    .local v11, "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9e

    .line 5260
    invoke-virtual {v11, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5261
    invoke-virtual {v11, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    goto :goto_a0

    .line 5263
    :cond_9e
    const/16 v17, 0x1

    .line 5266
    .end local v8  # "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v11  # "settings":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .end local v20  # "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v21  # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_a0
    if-eqz v17, :cond_b3

    .line 5267
    const-string v0, "Unknown input method "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5268
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5269
    const-string v0, " cannot be selected for user #"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5270
    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_c3

    .line 5272
    :cond_b3
    const-string v0, "Input method "

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5273
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5274
    const-string v0, " selected for user #"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5275
    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 5237
    .end local v10  # "userId":I
    .end local v17  # "failedToSelectUnknownIme":Z
    :goto_c3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v22

    goto/16 :goto_25

    .end local v22  # "userIds":[I
    .restart local v0  # "userIds":[I
    :cond_c9
    move-object/from16 v22, v0

    .line 5278
    .end local v0  # "userIds":[I
    monitor-exit v6

    .line 5279
    const/4 v0, 0x0

    return v0

    .line 5278
    :catchall_ce
    move-exception v0

    monitor-exit v6
    :try_end_d0
    .catchall {:try_start_15 .. :try_end_d0} :catchall_ce

    throw v0
.end method

.method private hasNavigationBar()Z
    .registers 4

    .line 5811
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "mz_show_navigation_bar"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5814
    .local v0, "hasValue":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v1, v2

    :cond_12
    return v1
.end method

.method private hideMySoftInput(Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "flags"  # I

    .line 3789
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3790
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3791
    monitor-exit v0

    return-void

    .line 3793
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1e

    .line 3795
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_10
    invoke-virtual {p0, p2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_19

    .line 3797
    :try_start_13
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3798
    nop

    .line 3799
    .end local v1  # "ident":J
    monitor-exit v0

    .line 3800
    return-void

    .line 3797
    .restart local v1  # "ident":J
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "flags":I
    throw v3

    .line 3799
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "flags":I
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private initParams()V
    .registers 3

    .line 5482
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMeizuFlags:I

    .line 5483
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMeizuLock:Ljava/lang/Object;

    .line 5484
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastInputShown:Z

    .line 5485
    return-void
.end method

.method private isGameKeyboardSwitchOn()Z
    .registers 4

    .line 5740
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "mz_game_mode_game_keyboard"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method private isKeyguardLocked()Z
    .registers 2

    .line 2574
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isLandscape()Z
    .registers 4

    .line 5731
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getDefaultDisplayRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getDefaultDisplayRotation()I

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_16

    const/4 v2, 0x3

    if-ne v0, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :cond_14
    :goto_14
    move v0, v1

    .line 5735
    .local v0, "res":Z
    goto :goto_1b

    .line 5732
    .end local v0  # "res":Z
    :catch_16
    move-exception v0

    .line 5733
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5734
    const/4 v0, 0x0

    .line 5736
    .local v0, "res":Z
    :goto_1b
    return v0
.end method

.method private isOriginalNavigationBar()Z
    .registers 4

    .line 5818
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "mz_use_flyme_navigation_bar"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5821
    .local v0, "hasValue":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v1, v2

    :cond_12
    return v1
.end method

.method private isScreenLocked()Z
    .registers 2

    .line 4277
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_14

    .line 4278
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 4277
    :goto_15
    return v0
.end method

.method private isWindowModeKeyboardSwitchOn()Z
    .registers 4

    .line 5744
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "mz_window_mode_system_keyboard"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method static synthetic lambda$handleShellCommandResetInputMethod$3(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 4
    .param p0, "settings"  # Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .param p1, "imi"  # Landroid/view/inputmethod/InputMethodInfo;

    .line 5338
    nop

    .line 5339
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 5338
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$handleShellCommandResetInputMethod$4(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 4
    .param p0, "out"  # Ljava/io/PrintWriter;
    .param p1, "ime"  # Landroid/view/inputmethod/InputMethodInfo;

    .line 5347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private mzSetImeSwitcherIcons()V
    .registers 3

    .line 5488
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    const v1, 0xa08029d

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 5491
    return-void
.end method

.method private notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4
    .param p1, "userId"  # I
    .param p2, "inputMethodInfo"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 2780
    return-void
.end method

.method private notifyUserAction(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;

    .line 3723
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3724
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v1, p1, :cond_9

    .line 3729
    monitor-exit v0

    return-void

    .line 3731
    :cond_9
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 3732
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_1c

    .line 3733
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3735
    .end local v1  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1c
    monitor-exit v0

    .line 3736
    return-void

    .line 3735
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private onFloatingKeyboardModeChanged(Z)V
    .registers 3
    .param p1, "isFloatingKeyboard"  # Z

    .line 5760
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onFloatingKeyboardModeChanged(ZZ)V

    .line 5761
    return-void
.end method

.method private onFloatingKeyboardModeChanged(ZZ)V
    .registers 5
    .param p1, "isFloatingKeyboard"  # Z
    .param p2, "sendMsg"  # Z

    .line 5764
    if-eqz p2, :cond_20

    .line 5765
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchFloatingKeyboardRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;

    if-nez v0, :cond_e

    .line 5766
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;

    invoke-direct {v0, p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;-><init>(ZLcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchFloatingKeyboardRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;

    goto :goto_13

    .line 5768
    :cond_e
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5770
    :goto_13
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchFloatingKeyboardRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;->setUseFloangtingKeyboard(Z)V

    .line 5771
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchFloatingKeyboardRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2c

    .line 5773
    :cond_20
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchFloatingKeyboardRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchFloatingKeyboardRunnable;

    if-eqz v0, :cond_29

    .line 5774
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5776
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchFloatingModeLocked(Z)V

    .line 5778
    :goto_2c
    return-void
.end method

.method static queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V
    .registers 14
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .line 4090
    .local p2, "additionalSubtypeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local p3, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p4, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 4091
    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    .line 4096
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8080

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 4101
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 4102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 4104
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_98

    .line 4105
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 4106
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 4107
    .local v3, "si":Landroid/content/pm/ServiceInfo;
    invoke-static {v2}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v4

    .line 4108
    .local v4, "imeId":Ljava/lang/String;
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v6, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "InputMethodManagerService"

    if-nez v5, :cond_62

    .line 4109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping input method "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": it does not require the permission "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4112
    goto :goto_95

    .line 4118
    :cond_62
    :try_start_62
    new-instance v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 4119
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v5, p0, v2, v6}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 4120
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v6

    if-eqz v6, :cond_74

    .line 4121
    goto :goto_95

    .line 4123
    :cond_74
    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4124
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7e} :catch_80

    .line 4131
    nop

    .end local v5  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_95

    .line 4129
    :catch_80
    move-exception v5

    .line 4130
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load input method "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4104
    .end local v2  # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3  # "si":Landroid/content/pm/ServiceInfo;
    .end local v4  # "imeId":Ljava/lang/String;
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_95
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 4133
    .end local v1  # "i":I
    :cond_98
    return-void
.end method

.method private reportFullscreenMode(Landroid/os/IBinder;Z)V
    .registers 9
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "fullscreen"  # Z

    .line 4748
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4749
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 4750
    monitor-exit v0

    return-void

    .line 4752
    :cond_b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_2d

    .line 4753
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 4754
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbe5

    .line 4755
    if-eqz p2, :cond_23

    const/4 v4, 0x1

    goto :goto_24

    :cond_23
    const/4 v4, 0x0

    :goto_24
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4754
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4757
    :cond_2d
    monitor-exit v0

    .line 4758
    return-void

    .line 4757
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private reportPreRendered(Landroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;)V
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "info"  # Landroid/view/inputmethod/EditorInfo;

    .line 3740
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3741
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3742
    monitor-exit v0

    return-void

    .line 3744
    :cond_b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_26

    .line 3745
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbf4

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3748
    :cond_26
    monitor-exit v0

    .line 3749
    return-void

    .line 3748
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private reportStartInput(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "startInputToken"  # Landroid/os/IBinder;

    .line 2618
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2619
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2620
    monitor-exit v0

    return-void

    .line 2622
    :cond_b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 2623
    .local v1, "targetWindow":Landroid/os/IBinder;
    if-eqz v1, :cond_1e

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    if-eq v2, v1, :cond_1e

    .line 2624
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodTargetWindow(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 2626
    :cond_1e
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 2627
    .end local v1  # "targetWindow":Landroid/os/IBinder;
    monitor-exit v0

    .line 2628
    return-void

    .line 2627
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;

    .line 1562
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1563
    return-void

    .line 1565
    :cond_13
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1566
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 1565
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1567
    .local v0, "suitableImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1568
    const-string v1, "InputMethodManagerService"

    const-string v2, "No default found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    return-void

    .line 1571
    :cond_2b
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 1575
    .local v2, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 1577
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$Injector;->selectDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1579
    return-void
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .registers 8
    .param p1, "newDefaultIme"  # Ljava/lang/String;

    .line 4578
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4579
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, -0x1

    .line 4581
    .local v1, "lastSubtypeId":I
    if-eqz v0, :cond_3b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 4582
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4583
    .local v2, "subtypeHashCode":Ljava/lang/String;
    if-eqz v2, :cond_3b

    .line 4585
    nop

    .line 4586
    :try_start_1a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4585
    invoke-static {v0, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v3
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_22} :catch_24

    move v1, v3

    .line 4589
    goto :goto_3b

    .line 4587
    :catch_24
    move-exception v3

    .line 4588
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HashCode for subtype looks broken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputMethodManagerService"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4592
    .end local v2  # "subtypeHashCode":Ljava/lang/String;
    .end local v3  # "e":Ljava/lang/NumberFormatException;
    :cond_3b
    :goto_3b
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 4593
    return-void
.end method

.method private setImeWindowStatus(Landroid/os/IBinder;II)V
    .registers 10
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "vis"  # I
    .param p3, "backDisposition"  # I

    .line 2580
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v0

    .line 2582
    .local v0, "topFocusedDisplayId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2583
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2584
    monitor-exit v1

    return-void

    .line 2590
    :cond_11
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eq v2, v0, :cond_1b

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eqz v2, :cond_1b

    .line 2592
    monitor-exit v1

    return-void

    .line 2594
    :cond_1b
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 2595
    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 2596
    invoke-direct {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2597
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_41

    .line 2600
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v2, :cond_34

    const/4 v3, 0x2

    if-eq p3, v3, :cond_32

    .line 2609
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_30

    move v3, v2

    goto :goto_31

    :cond_30
    move v3, v1

    .local v3, "dismissImeOnBackKeyPressed":Z
    :goto_31
    goto :goto_36

    .line 2602
    .end local v3  # "dismissImeOnBackKeyPressed":Z
    :cond_32
    const/4 v3, 0x1

    .line 2603
    .restart local v3  # "dismissImeOnBackKeyPressed":Z
    goto :goto_36

    .line 2605
    .end local v3  # "dismissImeOnBackKeyPressed":Z
    :cond_34
    const/4 v3, 0x0

    .line 2606
    .restart local v3  # "dismissImeOnBackKeyPressed":Z
    nop

    .line 2612
    :goto_36
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_3d

    move v1, v2

    :cond_3d
    invoke-virtual {v4, p1, v1, v3}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodWindowStatus(Landroid/os/IBinder;ZZ)V

    .line 2614
    return-void

    .line 2597
    .end local v3  # "dismissImeOnBackKeyPressed":Z
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v2
.end method

.method private setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "id"  # Ljava/lang/String;

    .line 3399
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3400
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3401
    monitor-exit v0

    return-void

    .line 3403
    :cond_b
    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3404
    monitor-exit v0

    .line 3405
    return-void

    .line 3404
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "id"  # Ljava/lang/String;
    .param p3, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 3410
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3411
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3412
    monitor-exit v0

    return-void

    .line 3414
    :cond_b
    if-eqz p3, :cond_21

    .line 3415
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 3416
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 3417
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    .line 3416
    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 3415
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_24

    .line 3419
    :cond_21
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3421
    :goto_24
    monitor-exit v0

    .line 3422
    return-void

    .line 3421
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "enabled"  # Z

    .line 4517
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4518
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 4520
    .local v0, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2c

    .line 4521
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 4522
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 4525
    return v1

    .line 4527
    .end local v4  # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_25
    goto :goto_e

    .line 4528
    :cond_26
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    .line 4530
    return v2

    .line 4532
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4533
    .local v3, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4, v3, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 4536
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 4537
    .local v2, "selId":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v4

    if-nez v4, :cond_57

    .line 4538
    const-string v4, "InputMethodManagerService"

    const-string v5, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4539
    const-string v4, ""

    invoke-direct {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 4542
    :cond_57
    return v1

    .line 4546
    .end local v2  # "selId":Ljava/lang/String;
    :cond_58
    return v2
.end method

.method private setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "id"  # Ljava/lang/String;
    .param p3, "subtypeId"  # I

    .line 3765
    if-nez p1, :cond_15

    .line 3766
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3c

    .line 3769
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3773
    :cond_15
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_3c

    .line 3774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring setInputMethod of uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    return-void

    .line 3779
    :cond_3c
    :goto_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3781
    .local v0, "ident":J
    :try_start_40
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_48

    .line 3783
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3784
    nop

    .line 3785
    return-void

    .line 3783
    :catchall_48
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setIsInGameMode(Z)Z
    .registers 5
    .param p1, "inGameMode"  # Z

    .line 5692
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInGameMode:Z

    .line 5694
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldUseFloatingMode()Z

    move-result v0

    .line 5696
    .local v0, "shouldUseFloatingMode":Z
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShouldUseFloatingKeyboard:Z

    if-eq v1, v0, :cond_13

    .line 5697
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShouldUseFloatingKeyboard:Z

    .line 5698
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShouldUseFloatingKeyboard:Z

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onFloatingKeyboardModeChanged(ZZ)V

    .line 5699
    return v2

    .line 5702
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method private setIsQuickReply(Z)Z
    .registers 4
    .param p1, "isQuickReply"  # Z

    .line 5706
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsQuickReply:Z

    .line 5708
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldUseFloatingMode()Z

    move-result v0

    .line 5710
    .local v0, "shouldUseFloatingMode":Z
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShouldUseFloatingKeyboard:Z

    if-eq v1, v0, :cond_13

    .line 5711
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShouldUseFloatingKeyboard:Z

    .line 5712
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShouldUseFloatingKeyboard:Z

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onFloatingKeyboardModeChanged(Z)V

    .line 5714
    const/4 v1, 0x1

    return v1

    .line 5717
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .registers 7
    .param p1, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtypeId"  # I
    .param p3, "setSubtypeOnly"  # Z

    .line 4553
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4556
    const/4 v0, -0x1

    if-eqz p1, :cond_31

    if-gez p2, :cond_f

    goto :goto_31

    .line 4560
    :cond_f
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-ge p2, v1, :cond_25

    .line 4561
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 4562
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 4563
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4564
    .end local v0  # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_39

    .line 4565
    :cond_25
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 4567
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_39

    .line 4557
    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 4558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4571
    :goto_39
    if-nez p3, :cond_49

    .line 4573
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    :cond_44
    const-string v1, ""

    :goto_46
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 4575
    :cond_49
    return-void
.end method

.method private shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;

    .line 3528
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3529
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 3530
    monitor-exit v0

    return v2

    .line 3532
    :cond_c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 3533
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3532
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v1

    .line 3534
    .local v1, "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v1, :cond_22

    .line 3535
    monitor-exit v0

    return v2

    .line 3537
    :cond_22
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 3538
    .end local v1  # "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private shouldShowImeSwitcherLocked(I)Z
    .registers 18
    .param p1, "visibility"  # I

    .line 2507
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 2508
    :cond_8
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_d

    return v2

    .line 2509
    :cond_d
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_20

    .line 2510
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_20

    return v2

    .line 2511
    :cond_20
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_c5

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2a

    goto/16 :goto_c5

    .line 2515
    :cond_2a
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_38

    .line 2516
    iget v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardBehavior:I

    if-nez v1, :cond_3d

    .line 2521
    return v3

    .line 2523
    :cond_38
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_3d

    .line 2524
    return v2

    .line 2527
    :cond_3d
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 2528
    .local v1, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 2529
    .local v4, "N":I
    const/4 v5, 0x2

    if-le v4, v5, :cond_4b

    return v3

    .line 2530
    :cond_4b
    if-ge v4, v3, :cond_4e

    return v2

    .line 2532
    :cond_4e
    if-ne v4, v5, :cond_57

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService$Injector;->containsGoogleVoice(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_57

    return v2

    .line 2534
    :cond_57
    const/4 v5, 0x0

    .line 2535
    .local v5, "nonAuxCount":I
    const/4 v6, 0x0

    .line 2536
    .local v6, "auxCount":I
    const/4 v7, 0x0

    .line 2537
    .local v7, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v8, 0x0

    .line 2538
    .local v8, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5c
    if-ge v9, v4, :cond_91

    .line 2539
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 2540
    .local v10, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v11, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v12, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2541
    invoke-virtual {v11, v12, v10, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 2542
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 2543
    .local v12, "subtypeCount":I
    if-nez v12, :cond_75

    .line 2544
    add-int/lit8 v5, v5, 0x1

    goto :goto_8e

    .line 2546
    :cond_75
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_76
    if-ge v13, v12, :cond_8e

    .line 2547
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2548
    .local v14, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v15

    if-nez v15, :cond_88

    .line 2549
    add-int/lit8 v5, v5, 0x1

    .line 2550
    move-object v7, v14

    goto :goto_8b

    .line 2552
    :cond_88
    add-int/lit8 v6, v6, 0x1

    .line 2553
    move-object v8, v14

    .line 2546
    .end local v14  # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_8b
    add-int/lit8 v13, v13, 0x1

    goto :goto_76

    .line 2538
    .end local v10  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v11  # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v12  # "subtypeCount":I
    .end local v13  # "j":I
    :cond_8e
    :goto_8e
    add-int/lit8 v9, v9, 0x1

    goto :goto_5c

    .line 2558
    .end local v9  # "i":I
    :cond_91
    if-gt v5, v3, :cond_c4

    if-le v6, v3, :cond_96

    goto :goto_c4

    .line 2560
    :cond_96
    if-ne v5, v3, :cond_c3

    if-ne v6, v3, :cond_c3

    .line 2561
    if-eqz v7, :cond_c2

    if-eqz v8, :cond_c2

    .line 2562
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b8

    .line 2563
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v9

    if-nez v9, :cond_b8

    .line 2564
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v9

    if-eqz v9, :cond_c2

    :cond_b8
    nop

    .line 2565
    const-string v9, "TrySuppressingImeSwitcher"

    invoke-virtual {v7, v9}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c2

    .line 2566
    return v2

    .line 2568
    :cond_c2
    return v3

    .line 2570
    :cond_c3
    return v2

    .line 2559
    :cond_c4
    :goto_c4
    return v3

    .line 2513
    .end local v1  # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v4  # "N":I
    .end local v5  # "nonAuxCount":I
    .end local v6  # "auxCount":I
    .end local v7  # "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8  # "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_c5
    :goto_c5
    return v2
.end method

.method private shouldUseFloatingMode()Z
    .registers 6

    .line 5748
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isGameKeyboardSwitchOn()Z

    move-result v0

    .line 5749
    .local v0, "isGameKeyboardSwitchOn":Z
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isLandscape()Z

    move-result v1

    .line 5750
    .local v1, "isLandScape":Z
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsQuickReply:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1d

    .line 5751
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowModeKeyboardOn:Z

    if-eqz v2, :cond_1b

    if-eqz v1, :cond_1b

    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v3, v4

    :goto_1c
    return v3

    .line 5753
    :cond_1d
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInGameMode:Z

    if-eqz v2, :cond_2c

    if-eqz v0, :cond_2c

    if-eqz v1, :cond_2c

    .line 5755
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_2d

    :cond_2c
    move v3, v4

    .line 5753
    :goto_2d
    return v3
.end method

.method private showConfigureInputMethods()V
    .registers 5

    .line 4263
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenu()V

    .line 4265
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4266
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 4267
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_20

    .line 4269
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4270
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4273
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4274
    return-void

    .line 4267
    .end local v0  # "intent":Landroid/content/Intent;
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 7
    .param p1, "inputMethodId"  # Ljava/lang/String;

    .line 4247
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4248
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 4252
    const-string/jumbo v1, "input_method_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4255
    :cond_18
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 4256
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 4257
    .local v2, "userId":I
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_2d

    .line 4258
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4259
    return-void

    .line 4257
    .end local v2  # "userId":I
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method private showInputMethodMenu(ZI)V
    .registers 26
    .param p1, "showAuxSubtypes"  # Z
    .param p2, "displayId"  # I

    .line 4284
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isScreenLocked()Z

    move-result v2

    .line 4286
    .local v2, "isScreenLocked":Z
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 4287
    .local v3, "lastInputMethodId":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v4

    .line 4290
    .local v4, "lastInputMethodSubtypeId":I
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 4291
    :try_start_15
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1c1

    .line 4292
    move/from16 v6, p1

    :try_start_19
    invoke-virtual {v0, v6, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;

    move-result-object v0

    .line 4294
    .local v0, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_1bf

    if-eqz v7, :cond_2c

    .line 4295
    :try_start_23
    monitor-exit v5
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_25

    return-void

    .line 4439
    .end local v0  # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :catchall_25
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v16, v3

    goto/16 :goto_1c8

    .line 4298
    .restart local v0  # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_2c
    :try_start_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenuLocked()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_1bf

    .line 4300
    const/4 v7, -0x1

    if-ne v4, v7, :cond_4c

    .line 4301
    :try_start_32
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 4302
    .local v8, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v8, :cond_4c

    .line 4303
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 4304
    .local v9, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    nop

    .line 4305
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v10

    .line 4304
    invoke-static {v9, v10}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v10
    :try_end_4b
    .catchall {:try_start_32 .. :try_end_4b} :catchall_25

    move v4, v10

    .line 4309
    .end local v8  # "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v9  # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4c
    :try_start_4c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 4310
    .local v8, "N":I
    new-array v9, v8, [Landroid/view/inputmethod/InputMethodInfo;

    iput-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4311
    new-array v9, v8, [I

    iput-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_1b7

    .line 4312
    const/4 v9, 0x0

    .line 4313
    .local v9, "checkedItem":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5a
    if-ge v10, v8, :cond_8c

    .line 4314
    :try_start_5c
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4315
    .local v11, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    iget-object v13, v11, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    aput-object v13, v12, v10

    .line 4316
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I

    iget v13, v11, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    aput v13, v12, v10

    .line 4317
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v12, v12, v10

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_89

    .line 4318
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I

    aget v12, v12, v10
    :try_end_80
    .catchall {:try_start_5c .. :try_end_80} :catchall_25

    .line 4319
    .local v12, "subtypeId":I
    if-eq v12, v7, :cond_88

    if-ne v4, v7, :cond_86

    if-eqz v12, :cond_88

    :cond_86
    if-ne v12, v4, :cond_89

    .line 4322
    :cond_88
    move v9, v10

    .line 4313
    .end local v11  # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v12  # "subtypeId":I
    :cond_89
    add-int/lit8 v10, v10, 0x1

    goto :goto_5a

    .line 4336
    .end local v10  # "i":I
    :cond_8c
    :try_start_8c
    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v11, 0xa110030

    invoke-direct {v7, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4338
    .local v7, "themedContext":Landroid/content/Context;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x5

    invoke-direct {v10, v7, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 4340
    sget-object v10, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v11, 0x101005d

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 4343
    .local v10, "a":Landroid/content/res/TypedArray;
    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 4345
    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v14, Lcom/android/server/inputmethod/InputMethodManagerService$4;

    invoke-direct {v14, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v11, v14}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4352
    move-object v11, v7

    .line 4353
    .local v11, "dialogContext":Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 4356
    const-class v14, Landroid/view/LayoutInflater;

    invoke-virtual {v11, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 4357
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const v15, 0x1090080

    invoke-virtual {v14, v15, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 4359
    .local v13, "tv":Landroid/view/View;
    iget-object v15, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v15, v13}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4362
    iput-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 4363
    iget-object v15, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v12, 0x10202ac

    .line 4364
    invoke-virtual {v15, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 4365
    iget-object v15, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v15

    if-eqz v15, :cond_ea

    .line 4366
    const/4 v15, 0x0

    goto :goto_ec

    :cond_ea
    const/16 v15, 0x8

    .line 4365
    :goto_ec
    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    .line 4367
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v15, 0x10202ad

    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Switch;

    .line 4369
    .local v12, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v15, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v12, v15}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4370
    new-instance v15, Lcom/android/server/inputmethod/InputMethodManagerService$5;

    invoke-direct {v15, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v12, v15}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4380
    invoke-virtual {v1, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->mzSetImeSwitchDialogTitleStyle(Landroid/content/Context;)V

    .line 4383
    new-instance v15, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    :try_end_10c
    .catchall {:try_start_8c .. :try_end_10c} :catchall_1b7

    move-object/from16 v16, v3

    .end local v3  # "lastInputMethodId":Ljava/lang/String;
    .local v16, "lastInputMethodId":Ljava/lang/String;
    const v3, 0x1090081

    :try_start_111
    invoke-direct {v15, v11, v3, v0, v9}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    move-object v3, v15

    .line 4385
    .local v3, "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    new-instance v15, Lcom/android/server/inputmethod/InputMethodManagerService$6;

    invoke-direct {v15, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$6;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;)V

    .line 4407
    .local v15, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v17, v0

    .end local v0  # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .local v17, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3, v9, v15}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_121
    .catchall {:try_start_111 .. :try_end_121} :catchall_1b1

    .line 4409
    if-nez v2, :cond_13a

    .line 4410
    :try_start_123
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$7;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$7;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    :try_end_128
    .catchall {:try_start_123 .. :try_end_128} :catchall_135

    .line 4416
    .local v0, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    move/from16 v18, v2

    .end local v2  # "isScreenLocked":Z
    .local v18, "isScreenLocked":Z
    :try_start_12a
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v19, v3

    .end local v3  # "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    .local v19, "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    const v3, 0xa10002a

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_134
    .catchall {:try_start_12a .. :try_end_134} :catchall_1ca

    goto :goto_13e

    .line 4439
    .end local v0  # "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v7  # "themedContext":Landroid/content/Context;
    .end local v8  # "N":I
    .end local v9  # "checkedItem":I
    .end local v10  # "a":Landroid/content/res/TypedArray;
    .end local v11  # "dialogContext":Landroid/content/Context;
    .end local v12  # "hardKeySwitch":Landroid/widget/Switch;
    .end local v13  # "tv":Landroid/view/View;
    .end local v14  # "inflater":Landroid/view/LayoutInflater;
    .end local v15  # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v17  # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v18  # "isScreenLocked":Z
    .end local v19  # "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    .restart local v2  # "isScreenLocked":Z
    :catchall_135
    move-exception v0

    move/from16 v18, v2

    .end local v2  # "isScreenLocked":Z
    .restart local v18  # "isScreenLocked":Z
    goto/16 :goto_1c8

    .line 4409
    .end local v18  # "isScreenLocked":Z
    .restart local v2  # "isScreenLocked":Z
    .restart local v3  # "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    .restart local v7  # "themedContext":Landroid/content/Context;
    .restart local v8  # "N":I
    .restart local v9  # "checkedItem":I
    .restart local v10  # "a":Landroid/content/res/TypedArray;
    .restart local v11  # "dialogContext":Landroid/content/Context;
    .restart local v12  # "hardKeySwitch":Landroid/widget/Switch;
    .restart local v13  # "tv":Landroid/view/View;
    .restart local v14  # "inflater":Landroid/view/LayoutInflater;
    .restart local v15  # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v17  # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_13a
    move/from16 v18, v2

    move-object/from16 v19, v3

    .line 4420
    .end local v2  # "isScreenLocked":Z
    .end local v3  # "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    .restart local v18  # "isScreenLocked":Z
    .restart local v19  # "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    :goto_13e
    :try_start_13e
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 4421
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4422
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4423
    .local v0, "w":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4424
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7dc

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 4428
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4429
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4430
    const-string v3, "Select input method"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 4431
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4432
    iget v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    move-object/from16 v20, v0

    .end local v0  # "w":Landroid/view/Window;
    .local v20, "w":Landroid/view/Window;
    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {v1, v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 4433
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4435
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v1, "dialogSpace4"

    move-object/from16 v21, v2

    .end local v2  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v21, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v2, "id"
    :try_end_18a
    .catchall {:try_start_13e .. :try_end_18a} :catchall_1ad

    move/from16 v22, v4

    .end local v4  # "lastInputMethodSubtypeId":I
    .local v22, "lastInputMethodSubtypeId":I
    :try_start_18c
    const-string v4, "flyme"

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4436
    .local v0, "space":Landroid/view/View;
    if-eqz v0, :cond_1a7

    .line 4437
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    mul-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    const/high16 v3, 0x43200000  # 160.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4439
    .end local v0  # "space":Landroid/view/View;
    .end local v7  # "themedContext":Landroid/content/Context;
    .end local v8  # "N":I
    .end local v9  # "checkedItem":I
    .end local v10  # "a":Landroid/content/res/TypedArray;
    .end local v11  # "dialogContext":Landroid/content/Context;
    .end local v12  # "hardKeySwitch":Landroid/widget/Switch;
    .end local v13  # "tv":Landroid/view/View;
    .end local v14  # "inflater":Landroid/view/LayoutInflater;
    .end local v15  # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v17  # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v19  # "adapter":Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
    .end local v20  # "w":Landroid/view/Window;
    .end local v21  # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1a7
    monitor-exit v5
    :try_end_1a8
    .catchall {:try_start_18c .. :try_end_1a8} :catchall_1a9

    .line 4440
    return-void

    .line 4439
    :catchall_1a9
    move-exception v0

    move/from16 v4, v22

    goto :goto_1c8

    .end local v22  # "lastInputMethodSubtypeId":I
    .restart local v4  # "lastInputMethodSubtypeId":I
    :catchall_1ad
    move-exception v0

    move/from16 v22, v4

    .end local v4  # "lastInputMethodSubtypeId":I
    .restart local v22  # "lastInputMethodSubtypeId":I
    goto :goto_1c8

    .end local v18  # "isScreenLocked":Z
    .end local v22  # "lastInputMethodSubtypeId":I
    .local v2, "isScreenLocked":Z
    .restart local v4  # "lastInputMethodSubtypeId":I
    :catchall_1b1
    move-exception v0

    move/from16 v18, v2

    move/from16 v22, v4

    .end local v2  # "isScreenLocked":Z
    .end local v4  # "lastInputMethodSubtypeId":I
    .restart local v18  # "isScreenLocked":Z
    .restart local v22  # "lastInputMethodSubtypeId":I
    goto :goto_1c8

    .end local v16  # "lastInputMethodId":Ljava/lang/String;
    .end local v18  # "isScreenLocked":Z
    .end local v22  # "lastInputMethodSubtypeId":I
    .restart local v2  # "isScreenLocked":Z
    .local v3, "lastInputMethodId":Ljava/lang/String;
    .restart local v4  # "lastInputMethodSubtypeId":I
    :catchall_1b7
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v16, v3

    move/from16 v22, v4

    .end local v2  # "isScreenLocked":Z
    .end local v3  # "lastInputMethodId":Ljava/lang/String;
    .end local v4  # "lastInputMethodSubtypeId":I
    .restart local v16  # "lastInputMethodId":Ljava/lang/String;
    .restart local v18  # "isScreenLocked":Z
    .restart local v22  # "lastInputMethodSubtypeId":I
    goto :goto_1c8

    .end local v16  # "lastInputMethodId":Ljava/lang/String;
    .end local v18  # "isScreenLocked":Z
    .end local v22  # "lastInputMethodSubtypeId":I
    .restart local v2  # "isScreenLocked":Z
    .restart local v3  # "lastInputMethodId":Ljava/lang/String;
    .restart local v4  # "lastInputMethodSubtypeId":I
    :catchall_1bf
    move-exception v0

    goto :goto_1c4

    :catchall_1c1
    move-exception v0

    move/from16 v6, p1

    :goto_1c4
    move/from16 v18, v2

    move-object/from16 v16, v3

    .end local v2  # "isScreenLocked":Z
    .end local v3  # "lastInputMethodId":Ljava/lang/String;
    .restart local v16  # "lastInputMethodId":Ljava/lang/String;
    .restart local v18  # "isScreenLocked":Z
    :goto_1c8
    :try_start_1c8
    monitor-exit v5
    :try_end_1c9
    .catchall {:try_start_1c8 .. :try_end_1c9} :catchall_1ca

    throw v0

    :catchall_1ca
    move-exception v0

    goto :goto_1c8
.end method

.method private showMySoftInput(Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "flags"  # I

    .line 3804
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3805
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3806
    monitor-exit v0

    return-void

    .line 3808
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1e

    .line 3810
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_10
    invoke-virtual {p0, p2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_19

    .line 3812
    :try_start_13
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3813
    nop

    .line 3814
    .end local v1  # "ident":J
    monitor-exit v0

    .line 3815
    return-void

    .line 3812
    .restart local v1  # "ident":J
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "flags":I
    throw v3

    .line 3814
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "flags":I
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;III)Lcom/android/internal/view/InputBindResult;
    .registers 35
    .param p1, "startInputReason"  # I
    .param p2, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"  # Landroid/os/IBinder;
    .param p4, "startInputFlags"  # I
    .param p5, "softInputMode"  # I
    .param p6, "windowFlags"  # I
    .param p7, "attribute"  # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"  # Lcom/android/internal/view/IInputContext;
    .param p9, "missingMethods"  # I
    .param p10, "unverifiedTargetSdkVersion"  # I
    .param p11, "userId"  # I

    .line 3123
    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p7

    move/from16 v13, p10

    invoke-static/range {p11 .. p11}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3127
    const/4 v0, 0x0

    move v14, v0

    .end local p11  # "userId":I
    .local v0, "userId":I
    goto :goto_17

    .line 3123
    .end local v0  # "userId":I
    .restart local p11  # "userId":I
    :cond_15
    move/from16 v14, p11

    .line 3132
    .end local p11  # "userId":I
    .local v14, "userId":I
    :goto_17
    if-eqz v12, :cond_44

    .line 3133
    iget-object v7, v12, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 3134
    .local v7, "focusedPkg":Ljava/lang/String;
    iget v15, v12, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 3135
    .local v15, "inputType":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3137
    .local v16, "identity":J
    :try_start_21
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 3138
    invoke-virtual {v0, v1, v7, v15}, Lcom/android/server/hips/security/SecurityMargin;->updateSecurityMarginState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3141
    invoke-static {}, Lcom/android/server/hips/security/PasswordMode;->getInstance()Lcom/android/server/hips/security/PasswordMode;

    move-result-object v1

    iget-object v3, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v5, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/hips/security/PasswordMode;->updatePasswordModeState(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/view/IWindowManager;Landroid/view/inputmethod/EditorInfo;Landroid/os/IBinder;I)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3a} :catch_40
    .catchall {:try_start_21 .. :try_end_3a} :catchall_3b

    goto :goto_41

    .line 3145
    :catchall_3b
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3143
    :catch_40
    move-exception v0

    .line 3145
    :goto_41
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3150
    .end local v7  # "focusedPkg":Ljava/lang/String;
    .end local v15  # "inputType":I
    .end local v16  # "identity":J
    :cond_44
    iget-object v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result v0

    .line 3152
    .local v0, "windowDisplayId":I
    iget-object v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3153
    .local v15, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v15, :cond_217

    .line 3156
    iget v1, v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    const-string v2, "InputMethodManagerService"

    if-eq v1, v0, :cond_81

    .line 3157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startInputOrWindowGainedFocusInternal: display ID mismatch. from client:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from window:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    sget-object v1, Lcom/android/internal/view/InputBindResult;->DISPLAY_ID_MISMATCH:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3163
    :cond_81
    iget-object v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v3, v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v4, v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v5, v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result v1

    if-nez v1, :cond_92

    .line 3174
    sget-object v1, Lcom/android/internal/view/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3178
    :cond_92
    iget-object v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v14}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v7, 0x0

    if-nez v1, :cond_ac

    .line 3179
    const-string v1, "A background user is requesting window. Hiding IME."

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    const-string v1, "If you need to impersonate a foreground user/profile from a background user, use EditorInfo.targetInputMethodUser with INTERACT_ACROSS_USERS_FULL permission."

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3183
    invoke-virtual {v8, v3, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 3184
    sget-object v1, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3187
    :cond_ac
    sget-boolean v1, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-eqz v1, :cond_bb

    iget-object v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-eq v14, v1, :cond_bb

    .line 3188
    invoke-direct {v8, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchUserLocked(I)V

    .line 3196
    :cond_bb
    sget-object v1, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_PRE_RENDER_IME_VIEWS:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->value()Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_ca

    iget-boolean v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsLowRam:Z

    if-nez v1, :cond_ca

    move v1, v6

    goto :goto_cb

    :cond_ca
    move v1, v3

    :goto_cb
    iput-boolean v1, v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->shouldPreRenderIme:Z

    .line 3198
    iget-object v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-ne v1, v9, :cond_f9

    .line 3203
    if-eqz v12, :cond_e5

    .line 3204
    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p7

    move/from16 v6, p4

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    return-object v1

    .line 3207
    :cond_e5
    new-instance v1, Lcom/android/internal/view/InputBindResult;

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v22}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v1

    .line 3211
    :cond_f9
    iput-object v9, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 3212
    iput v11, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 3213
    iput-object v15, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3222
    and-int/lit16 v1, v11, 0xf0

    const/16 v4, 0x10

    const/4 v5, 0x3

    if-eq v1, v4, :cond_115

    iget-object v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 3225
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v1

    if-eqz v1, :cond_113

    goto :goto_115

    :cond_113
    move v1, v3

    goto :goto_116

    :cond_115
    :goto_115
    move v1, v6

    :goto_116
    move/from16 v16, v1

    .line 3227
    .local v16, "doAutoShow":Z
    and-int/lit8 v1, v10, 0x2

    if-eqz v1, :cond_11e

    move v1, v6

    goto :goto_11f

    :cond_11e
    move v1, v3

    :goto_11f
    move/from16 v17, v1

    .line 3233
    .local v17, "isTextEditor":Z
    const/16 v18, 0x0

    .line 3235
    .local v18, "didStart":Z
    const/16 v19, 0x0

    .line 3236
    .local v19, "res":Lcom/android/internal/view/InputBindResult;
    and-int/lit8 v1, v11, 0xf

    const/4 v4, 0x2

    if-eqz v1, :cond_1af

    if-eq v1, v6, :cond_1ac

    if-eq v1, v4, :cond_1a1

    if-eq v1, v5, :cond_19a

    const/4 v3, 0x4

    if-eq v1, v3, :cond_16c

    const/4 v3, 0x5

    if-eq v1, v3, :cond_13a

    move/from16 p11, v0

    goto/16 :goto_1ee

    .line 3306
    :cond_13a
    invoke-static {v13, v10}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v1

    if-eqz v1, :cond_163

    .line 3308
    if-eqz v12, :cond_15a

    .line 3309
    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p7

    move/from16 p11, v0

    move v0, v6

    .end local v0  # "windowDisplayId":I
    .local p11, "windowDisplayId":I
    move/from16 v6, p4

    move-object v0, v7

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v19

    .line 3311
    const/16 v18, 0x1

    goto :goto_15d

    .line 3308
    .end local p11  # "windowDisplayId":I
    .restart local v0  # "windowDisplayId":I
    :cond_15a
    move/from16 p11, v0

    move-object v0, v7

    .line 3313
    .end local v0  # "windowDisplayId":I
    .restart local p11  # "windowDisplayId":I
    :goto_15d
    const/4 v1, 0x1

    invoke-virtual {v8, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_1ee

    .line 3315
    .end local p11  # "windowDisplayId":I
    .restart local v0  # "windowDisplayId":I
    :cond_163
    move/from16 p11, v0

    .end local v0  # "windowDisplayId":I
    .restart local p11  # "windowDisplayId":I
    const-string v0, "SOFT_INPUT_STATE_ALWAYS_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ee

    .line 3287
    .end local p11  # "windowDisplayId":I
    .restart local v0  # "windowDisplayId":I
    :cond_16c
    move/from16 p11, v0

    move-object v0, v7

    .end local v0  # "windowDisplayId":I
    .restart local p11  # "windowDisplayId":I
    and-int/lit16 v1, v11, 0x100

    if-eqz v1, :cond_1ee

    .line 3289
    invoke-static {v13, v10}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v1

    if-eqz v1, :cond_194

    .line 3291
    if-eqz v12, :cond_18e

    .line 3292
    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p7

    move/from16 v6, p4

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v19

    .line 3294
    const/16 v18, 0x1

    .line 3296
    :cond_18e
    const/4 v1, 0x1

    invoke-virtual {v8, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_1ee

    .line 3298
    :cond_194
    const-string v0, "SOFT_INPUT_STATE_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ee

    .line 3284
    .end local p11  # "windowDisplayId":I
    .restart local v0  # "windowDisplayId":I
    :cond_19a
    move/from16 p11, v0

    move-object v0, v7

    .end local v0  # "windowDisplayId":I
    .restart local p11  # "windowDisplayId":I
    invoke-virtual {v8, v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 3285
    goto :goto_1ee

    .line 3277
    .end local p11  # "windowDisplayId":I
    .restart local v0  # "windowDisplayId":I
    :cond_1a1
    move/from16 p11, v0

    move-object v0, v7

    .end local v0  # "windowDisplayId":I
    .restart local p11  # "windowDisplayId":I
    and-int/lit16 v1, v11, 0x100

    if-eqz v1, :cond_1ee

    .line 3279
    invoke-virtual {v8, v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_1ee

    .line 3275
    .end local p11  # "windowDisplayId":I
    .restart local v0  # "windowDisplayId":I
    :cond_1ac
    move/from16 p11, v0

    .end local v0  # "windowDisplayId":I
    .restart local p11  # "windowDisplayId":I
    goto :goto_1ee

    .line 3238
    .end local p11  # "windowDisplayId":I
    .restart local v0  # "windowDisplayId":I
    :cond_1af
    move/from16 p11, v0

    move-object v0, v7

    .end local v0  # "windowDisplayId":I
    .restart local p11  # "windowDisplayId":I
    if-eqz v17, :cond_1dc

    if-nez v16, :cond_1b7

    goto :goto_1dc

    .line 3255
    :cond_1b7
    if-eqz v17, :cond_1ee

    if-eqz v16, :cond_1ee

    and-int/lit16 v1, v11, 0x100

    if-eqz v1, :cond_1ee

    .line 3265
    if-eqz v12, :cond_1d7

    .line 3266
    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p7

    move/from16 v6, p4

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    .line 3268
    .end local v19  # "res":Lcom/android/internal/view/InputBindResult;
    .local v1, "res":Lcom/android/internal/view/InputBindResult;
    const/4 v2, 0x1

    move-object/from16 v19, v1

    move/from16 v18, v2

    .line 3270
    .end local v1  # "res":Lcom/android/internal/view/InputBindResult;
    .restart local v19  # "res":Lcom/android/internal/view/InputBindResult;
    :cond_1d7
    const/4 v1, 0x1

    invoke-virtual {v8, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_1ee

    .line 3239
    :cond_1dc
    :goto_1dc
    invoke-static/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v1

    if-eqz v1, :cond_1ee

    .line 3244
    invoke-virtual {v8, v4, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 3251
    iget v0, v15, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eq v0, v1, :cond_1ee

    .line 3252
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 3322
    :cond_1ee
    :goto_1ee
    if-nez v18, :cond_216

    .line 3323
    if-eqz v12, :cond_214

    .line 3324
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->value()Z

    move-result v0

    if-eqz v0, :cond_202

    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_1ff

    goto :goto_202

    .line 3329
    :cond_1ff
    sget-object v19, Lcom/android/internal/view/InputBindResult;->NO_EDITOR:Lcom/android/internal/view/InputBindResult;

    goto :goto_216

    .line 3326
    :cond_202
    :goto_202
    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p7

    move/from16 v6, p4

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v19

    goto :goto_216

    .line 3332
    :cond_214
    sget-object v19, Lcom/android/internal/view/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;

    .line 3335
    :cond_216
    :goto_216
    return-object v19

    .line 3154
    .end local v16  # "doAutoShow":Z
    .end local v17  # "isTextEditor":Z
    .end local v18  # "didStart":Z
    .end local v19  # "res":Lcom/android/internal/view/InputBindResult;
    .end local p11  # "windowDisplayId":I
    .restart local v0  # "windowDisplayId":I
    :cond_217
    move/from16 p11, v0

    .end local v0  # "windowDisplayId":I
    .restart local p11  # "windowDisplayId":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private switchFloatingModeLocked(Z)V
    .registers 7
    .param p1, "floatingMode"  # Z

    .line 5781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchFloatingModeLocked floatingMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5782
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5784
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    .line 5785
    :try_start_1d
    const-string v2, "com.sohu.inputmethod.sogou.meizu/com.sohu.inputmethod.sogou.SogouIME"

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;IZ)V

    goto :goto_43

    .line 5787
    :cond_2c
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodIdBeforeFloatingMode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 5788
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodIdBeforeFloatingMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodIdBeforeFloatingMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 5790
    :cond_41
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodIdBeforeFloatingMode:Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_43} :catch_46
    .catchall {:try_start_1d .. :try_end_43} :catchall_44

    .line 5797
    :goto_43
    goto :goto_56

    .line 5798
    :catchall_44
    move-exception v1

    goto :goto_58

    .line 5792
    :catch_46
    move-exception v2

    .line 5793
    .local v2, "e":Ljava/lang/Exception;
    :try_start_47
    const-string v3, "InputMethodManagerService"

    const-string v4, "Unknown input method from prefs: "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5794
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 5795
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 5796
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 5798
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_56
    monitor-exit v0

    .line 5799
    return-void

    .line 5798
    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_47 .. :try_end_59} :catchall_44

    throw v1
.end method

.method private switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"  # Z

    .line 3511
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3512
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 3513
    monitor-exit v0

    return v2

    .line 3515
    :cond_c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 3516
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3515
    invoke-virtual {v1, p2, v3, v4}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v1

    .line 3517
    .local v1, "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v1, :cond_22

    .line 3518
    monitor-exit v0

    return v2

    .line 3520
    :cond_22
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3522
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 3523
    .end local v1  # "nextSubtype":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private switchToPreviousInputMethod(Landroid/os/IBinder;)Z
    .registers 18
    .param p1, "token"  # Landroid/os/IBinder;

    .line 3439
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 3440
    :try_start_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_e

    .line 3441
    monitor-exit v2

    return v3

    .line 3443
    :cond_e
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v0

    .line 3445
    .local v0, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_21

    .line 3446
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .local v4, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_22

    .line 3448
    .end local v4  # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_21
    const/4 v4, 0x0

    .line 3450
    .restart local v4  # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_22
    const/4 v5, 0x0

    .line 3451
    .local v5, "targetLastImiId":Ljava/lang/String;
    const/4 v6, -0x1

    .line 3452
    .local v6, "subtypeId":I
    if-eqz v0, :cond_55

    if-eqz v4, :cond_55

    .line 3453
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 3454
    .local v7, "imiIdIsSame":Z
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3455
    .local v8, "lastSubtypeHash":I
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v9, :cond_40

    const/4 v9, -0x1

    goto :goto_46

    .line 3456
    :cond_40
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    :goto_46
    nop

    .line 3459
    .local v9, "currentSubtypeHash":I
    if-eqz v7, :cond_4b

    if-eq v8, v9, :cond_55

    .line 3460
    :cond_4b
    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object v5, v10

    .line 3461
    invoke-static {v4, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v10

    move v6, v10

    .line 3465
    .end local v7  # "imiIdIsSame":Z
    .end local v8  # "lastSubtypeHash":I
    .end local v9  # "currentSubtypeHash":I
    :cond_55
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_c9

    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3466
    invoke-static {v7}, Lcom/android/server/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v7

    if-nez v7, :cond_c9

    .line 3470
    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v7

    .line 3471
    .local v7, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v7, :cond_c9

    .line 3472
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 3473
    .local v9, "N":I
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v10, :cond_81

    .line 3474
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_87

    .line 3475
    :cond_81
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    :goto_87
    nop

    .line 3476
    .local v10, "locale":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_89
    if-ge v11, v9, :cond_c9

    .line 3477
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 3478
    .local v12, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v13

    if-lez v13, :cond_c6

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v13

    if-eqz v13, :cond_c6

    .line 3479
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 3481
    invoke-static {v12}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v14

    const-string/jumbo v15, "keyboard"

    .line 3480
    invoke-static {v13, v14, v15, v10, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v13

    .line 3483
    .local v13, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v13, :cond_c6

    .line 3484
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 3485
    nop

    .line 3486
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v14

    .line 3485
    invoke-static {v12, v14}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v14

    move v6, v14

    .line 3487
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c6

    .line 3488
    goto :goto_c9

    .line 3476
    .end local v12  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v13  # "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_c6
    add-int/lit8 v11, v11, 0x1

    goto :goto_89

    .line 3496
    .end local v7  # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v9  # "N":I
    .end local v10  # "locale":Ljava/lang/String;
    .end local v11  # "i":I
    :cond_c9
    :goto_c9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_cd
    .catchall {:try_start_5 .. :try_end_cd} :catchall_da

    if-nez v7, :cond_d6

    .line 3501
    move-object/from16 v7, p1

    :try_start_d1
    invoke-direct {v1, v7, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3502
    monitor-exit v2

    return v8

    .line 3504
    :cond_d6
    move-object/from16 v7, p1

    monitor-exit v2

    return v3

    .line 3506
    .end local v0  # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4  # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5  # "targetLastImiId":Ljava/lang/String;
    .end local v6  # "subtypeId":I
    :catchall_da
    move-exception v0

    move-object/from16 v7, p1

    :goto_dd
    monitor-exit v2
    :try_end_de
    .catchall {:try_start_d1 .. :try_end_de} :catchall_df

    throw v0

    :catchall_df
    move-exception v0

    goto :goto_dd
.end method

.method private switchUserLocked(I)V
    .registers 8
    .param p1, "newUserId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1587
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1591
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1592
    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_16

    :cond_14
    move v0, v1

    goto :goto_17

    :cond_16
    :goto_16
    move v0, v2

    .line 1593
    .local v0, "useCopyOnWriteSettings":Z
    :goto_17
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1594
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1596
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-static {v3, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1597
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 1607
    .local v3, "defaultImiId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1608
    .local v4, "initialUserSwitch":Z
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1611
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedImeIfNeeded(Ljava/lang/String;)V

    .line 1615
    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-eqz v5, :cond_60

    .line 1616
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1617
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 1618
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1619
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1622
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1624
    :cond_5d
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1627
    :cond_60
    if-eqz v4, :cond_73

    .line 1628
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1629
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1630
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    .line 1628
    invoke-static {v1, v2, p1, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1636
    :cond_73
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    .line 1637
    return-void
.end method

.method private updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 15
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "iconId"  # I

    .line 2470
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2471
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2472
    monitor-exit v0

    return-void

    .line 2474
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_66

    .line 2476
    .local v1, "ident":J
    const/4 v3, 0x0

    if-nez p3, :cond_20

    .line 2478
    :try_start_12
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v4, :cond_60

    .line 2479
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    goto :goto_60

    .line 2501
    :catchall_1e
    move-exception v3

    goto :goto_5c

    .line 2481
    :cond_20
    if-eqz p2, :cond_60

    .line 2483
    const/4 v4, 0x0

    .line 2486
    .local v4, "contentDescription":Ljava/lang/CharSequence;
    :try_start_23
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2487
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2489
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 2488
    invoke-interface {v6, p2, v3, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2487
    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_39} :catch_3b
    .catchall {:try_start_23 .. :try_end_39} :catchall_1e

    move-object v4, v3

    .line 2492
    .end local v5  # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_3c

    .line 2490
    :catch_3b
    move-exception v3

    .line 2493
    :goto_3c
    :try_start_3c
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v3, :cond_60

    .line 2494
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v9, 0x0

    .line 2495
    if-eqz v4, :cond_4c

    .line 2496
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    :goto_4d
    move-object v10, v3

    .line 2494
    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2497
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_5b
    .catchall {:try_start_3c .. :try_end_5b} :catchall_1e

    goto :goto_60

    .line 2501
    .end local v4  # "contentDescription":Ljava/lang/CharSequence;
    :goto_5c
    :try_start_5c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "packageName":Ljava/lang/String;
    .end local p3  # "iconId":I
    throw v3

    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "packageName":Ljava/lang/String;
    .restart local p3  # "iconId":I
    :cond_60
    :goto_60
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2502
    nop

    .line 2503
    .end local v1  # "ident":J
    monitor-exit v0

    .line 2504
    return-void

    .line 2503
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_66

    throw v1
.end method

.method private updateSystemUiLocked(II)V
    .registers 19
    .param p1, "vis"  # I
    .param p2, "backDisposition"  # I

    .line 2632
    move-object/from16 v1, p0

    const-string v0, "force_refresh"

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v2, :cond_9

    .line 2633
    return-void

    .line 2644
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2647
    .local v2, "ident":J
    if-eqz p1, :cond_20

    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-boolean v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClientInKeyguard:Z
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    if-nez v4, :cond_20

    .line 2648
    const/4 v4, 0x0

    .end local p1  # "vis":I
    .local v4, "vis":I
    goto :goto_22

    .line 2703
    .end local v4  # "vis":I
    .restart local p1  # "vis":I
    :catchall_1b
    move-exception v0

    move/from16 v4, p1

    goto/16 :goto_be

    .line 2651
    :cond_20
    move/from16 v4, p1

    .end local p1  # "vis":I
    .restart local v4  # "vis":I
    :goto_22
    :try_start_22
    invoke-direct {v1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    move-result v5

    move v11, v5

    .line 2652
    .local v11, "needsToShowImeSwitcher":Z
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v5, :cond_38

    .line 2653
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    move v8, v4

    move/from16 v9, p2

    move v10, v11

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 2656
    :cond_38
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 2657
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_a7

    if-eqz v11, :cond_a7

    .line 2659
    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v10, 0x104065c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 2661
    .local v9, "title":Ljava/lang/CharSequence;
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v12, v5, v13}, Lcom/android/server/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 2663
    .local v12, "summary":Ljava/lang/CharSequence;
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v13, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 2664
    invoke-virtual {v13, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 2665
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2671
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v13, :cond_8a

    .line 2672
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasNavigationBar()Z

    move-result v13

    if-eqz v13, :cond_7a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isOriginalNavigationBar()Z

    move-result v13

    if-nez v13, :cond_8a

    .line 2677
    :cond_7a
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v14, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 2679
    invoke-virtual {v14}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v14

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2677
    invoke-virtual {v13, v8, v6, v14, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2680
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    .line 2685
    :cond_8a
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 2686
    .local v6, "forceRefresh":Z
    if-eqz v6, :cond_a6

    .line 2687
    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v13, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2688
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v10, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2692
    .end local v6  # "forceRefresh":Z
    .end local v9  # "title":Ljava/lang/CharSequence;
    .end local v12  # "summary":Ljava/lang/CharSequence;
    :cond_a6
    goto :goto_b8

    .line 2693
    :cond_a7
    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v0, :cond_b8

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_b8

    .line 2697
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v6, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2699
    iput-boolean v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z
    :try_end_b8
    .catchall {:try_start_22 .. :try_end_b8} :catchall_bd

    .line 2703
    .end local v5  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v11  # "needsToShowImeSwitcher":Z
    :cond_b8
    :goto_b8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2704
    nop

    .line 2705
    return-void

    .line 2703
    :catchall_bd
    move-exception v0

    :goto_be
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private userHasDebugPriv(ILandroid/os/ShellCommand;)Z
    .registers 6
    .param p1, "userId"  # I
    .param p2, "shellCommand"  # Landroid/os/ShellCommand;

    .line 5360
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 5361
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 5360
    const-string/jumbo v2, "no_debugging_features"

    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5362
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is restricted with DISALLOW_DEBUGGING_FEATURES."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5364
    const/4 v0, 0x0

    return v0

    .line 5366
    :cond_2e
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;I)V
    .registers 20
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"  # Lcom/android/internal/view/IInputContext;
    .param p3, "selfReportedDisplayId"  # I

    .line 1952
    move-object/from16 v1, p0

    move/from16 v9, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1953
    .local v10, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1954
    .local v11, "callerPid":I
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 1956
    :try_start_f
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v13, v0

    .line 1957
    .local v13, "numClients":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    if-ge v0, v13, :cond_5e

    .line 1958
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 1959
    .local v2, "state":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    iget v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    if-ne v3, v10, :cond_5b

    iget v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    if-ne v3, v11, :cond_5b

    iget v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-eq v3, v9, :cond_2e

    goto :goto_5b

    .line 1961
    :cond_2e
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is already registered."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v10  # "callerUid":I
    .end local v11  # "callerPid":I
    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2  # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local p3  # "selfReportedDisplayId":I
    throw v3

    .line 1957
    .end local v2  # "state":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v10  # "callerUid":I
    .restart local v11  # "callerPid":I
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2  # "inputContext":Lcom/android/internal/view/IInputContext;
    .restart local p3  # "selfReportedDisplayId":I
    :cond_5b
    :goto_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1965
    .end local v0  # "i":I
    :cond_5e
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    :try_end_60
    .catchall {:try_start_f .. :try_end_60} :catchall_93

    move-object/from16 v14, p1

    :try_start_62
    invoke-direct {v0, v1, v14}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_98

    move-object v15, v0

    .line 1967
    .local v15, "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    :try_start_66
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v15, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6e} :catch_8c
    .catchall {:try_start_66 .. :try_end_6e} :catchall_98

    .line 1970
    nop

    .line 1981
    :try_start_6f
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    new-instance v7, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-object v2, v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v5, v10

    move v6, v11

    move-object v1, v7

    move/from16 v7, p3

    move-object v9, v8

    move-object v8, v15

    invoke-direct/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;-><init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;IIILcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;)V

    invoke-virtual {v0, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    nop

    .end local v13  # "numClients":I
    .end local v15  # "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    monitor-exit v12

    .line 1984
    return-void

    .line 1968
    .restart local v13  # "numClients":I
    .restart local v15  # "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    :catch_8c
    move-exception v0

    .line 1969
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v10  # "callerUid":I
    .end local v11  # "callerPid":I
    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2  # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local p3  # "selfReportedDisplayId":I
    throw v1

    .line 1983
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v13  # "numClients":I
    .end local v15  # "deathRecipient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
    .restart local v10  # "callerUid":I
    .restart local v11  # "callerPid":I
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2  # "inputContext":Lcom/android/internal/view/IInputContext;
    .restart local p3  # "selfReportedDisplayId":I
    :catchall_93
    move-exception v0

    move-object/from16 v14, p1

    :goto_96
    monitor-exit v12
    :try_end_97
    .catchall {:try_start_6f .. :try_end_97} :catchall_98

    throw v0

    :catchall_98
    move-exception v0

    goto :goto_96
.end method

.method attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;
    .registers 22
    .param p1, "startInputReason"  # I
    .param p2, "initial"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 2076
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    if-nez v1, :cond_1a

    .line 2077
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3f2

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2079
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2082
    :cond_1a
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 2083
    .local v1, "startInputToken":Landroid/os/Binder;
    new-instance v15, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    xor-int/lit8 v8, p2, 0x1

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    .line 2085
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v10, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget-object v11, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    iget-object v12, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v13, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    iget v14, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    move-object v2, v15

    move/from16 v7, p1

    invoke-direct/range {v2 .. v14}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;-><init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V

    move-object v10, v15

    .line 2087
    .local v10, "info":Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v2, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    invoke-virtual {v2, v10}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->addEntry(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V

    .line 2090
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v11, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2091
    .local v11, "session":Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
    iget-object v12, v11, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x7d0

    iget v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContextMissingMethods:I

    .line 2092
    xor-int/lit8 v5, p2, 0x1

    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 2091
    move-object v6, v1

    move-object v7, v11

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOOOO(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2094
    iget-boolean v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_7d

    .line 2096
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getAppShowFlags()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 2098
    :cond_7d
    new-instance v2, Lcom/android/internal/view/InputBindResult;

    const/4 v13, 0x0

    iget-object v14, v11, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2099
    iget-object v4, v11, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_8c

    iget-object v3, v11, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v3

    :cond_8c
    move-object v15, v3

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    move-object v12, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v18}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    .line 2098
    return-object v2
.end method

.method buildInputMethodListLocked(Z)V
    .registers 12
    .param p1, "resetDefaultEnabledIme"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 4141
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const-string v1, "InputMethodManagerService"

    if-nez v0, :cond_c

    .line 4142
    const-string v0, "buildInputMethodListLocked is not allowed until system is ready"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4143
    return-void

    .line 4145
    :cond_c
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 4146
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearKnownImePackageNamesLocked()V

    .line 4148
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 4152
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_29
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_63

    .line 4153
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_51

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 4154
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodUtils;->isGoogleVoiceInput(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 4155
    :cond_51
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 4152
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 4167
    .end local v0  # "ii":I
    :cond_63
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4168
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.view.InputMethod"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x200

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4170
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    .line 4168
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 4171
    .local v0, "allInputMethodServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 4172
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_81
    if-ge v4, v3, :cond_9f

    .line 4173
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 4174
    .local v5, "si":Landroid/content/pm/ServiceInfo;
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v7, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 4175
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->addKnownImePackageNameLocked(Ljava/lang/String;)V

    .line 4172
    .end local v5  # "si":Landroid/content/pm/ServiceInfo;
    :cond_9c
    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    .line 4180
    .end local v0  # "allInputMethodServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3  # "N":I
    .end local v4  # "i":I
    :cond_9f
    const/4 v0, 0x0

    .line 4182
    .local v0, "reenableMinimumNonAuxSystemImes":Z
    if-nez p1, :cond_d7

    .line 4183
    const/4 v3, 0x0

    .line 4184
    .local v3, "enabledImeFound":Z
    const/4 v4, 0x0

    .line 4185
    .local v4, "enabledNonAuxImeFound":Z
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v5

    .line 4186
    .local v5, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 4187
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_af
    if-ge v7, v6, :cond_cb

    .line 4188
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 4189
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 4190
    const/4 v3, 0x1

    .line 4191
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v9

    if-nez v9, :cond_c8

    .line 4192
    const/4 v4, 0x1

    .line 4193
    goto :goto_cb

    .line 4187
    .end local v8  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_c8
    add-int/lit8 v7, v7, 0x1

    goto :goto_af

    .line 4197
    .end local v7  # "i":I
    :cond_cb
    :goto_cb
    if-nez v3, :cond_d4

    .line 4201
    const/4 p1, 0x1

    .line 4202
    const-string v7, ""

    invoke-direct {p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    goto :goto_d7

    .line 4203
    :cond_d4
    if-nez v4, :cond_d7

    .line 4207
    const/4 v0, 0x1

    .line 4211
    .end local v3  # "enabledImeFound":Z
    .end local v4  # "enabledNonAuxImeFound":Z
    .end local v5  # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v6  # "N":I
    :cond_d7
    :goto_d7
    if-nez p1, :cond_db

    if-eqz v0, :cond_fa

    .line 4212
    :cond_db
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 4213
    invoke-static {v3, v4, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 4215
    .local v3, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4216
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e8
    if-ge v5, v4, :cond_fa

    .line 4217
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 4221
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 4216
    .end local v6  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_e8

    .line 4225
    .end local v3  # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v4  # "N":I
    .end local v5  # "i":I
    :cond_fa
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 4226
    .local v3, "defaultImiId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_120

    .line 4227
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11d

    .line 4228
    const-string v4, "Default IME is uninstalled. Choose new default IME."

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4229
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v1

    if-eqz v1, :cond_120

    .line 4230
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    goto :goto_120

    .line 4234
    :cond_11d
    invoke-direct {p0, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 4241
    :cond_120
    :goto_120
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 4242
    return-void
.end method

.method calledFromValidUserWrapper()Z
    .registers 2

    .line 5549
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v0

    return v0
.end method

.method clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .registers 3
    .param p1, "cs"  # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2399
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 2400
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2401
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2402
    return-void
.end method

.method clearCurMethodLocked()V
    .registers 4

    .line 2423
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_25

    .line 2424
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2425
    .local v0, "numClients":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_1b

    .line 2426
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2425
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2429
    .end local v1  # "i":I
    :cond_1b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 2430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2431
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2433
    .end local v0  # "numClients":I
    :cond_25
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 2434
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2436
    :cond_2f
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 2437
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 4762
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 4768
    :cond_b
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4770
    .local v0, "p":Landroid/util/Printer;
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 4771
    :try_start_13
    const-string v2, "Current Input Method Manager state:"

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4772
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4773
    .local v2, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Input Methods: mMethodMapUpdateCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4774
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_35
    if-ge v3, v2, :cond_60

    .line 4775
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 4776
    .local v4, "info":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  InputMethod #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4777
    const-string v5, "    "

    invoke-virtual {v4, v0, v5}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4774
    .end local v4  # "info":Landroid/view/inputmethod/InputMethodInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 4779
    .end local v3  # "i":I
    :cond_60
    const-string v3, "  Clients:"

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4780
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 4781
    .local v3, "numClients":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6c
    if-ge v4, v3, :cond_ea

    .line 4782
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4783
    .local v5, "ci":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Client "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4784
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    client="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4785
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    inputContext="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4786
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    sessionRequested="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4787
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    curSession="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4781
    .end local v5  # "ci":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .line 4789
    .end local v4  # "i":I
    :cond_ea
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurMethodId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4790
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4791
    .local v4, "client":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurClient="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mCurSeq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4792
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurFocusedWindow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " softInputMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 4794
    invoke-static {v6}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4792
    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4796
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4797
    .local v5, "focusedWindowClient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mHaveConnection="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mBoundToMethod="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mVisibleBound="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4799
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4800
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurTokenDisplayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4801
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurIntent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4802
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 4803
    .local v6, "method":Lcom/android/internal/view/IInputMethod;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mCurMethod="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4804
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mEnabledSession="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4805
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mShowRequested="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mShowExplicitlyRequested="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mShowForced="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mInputShown="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4809
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mInFullscreenMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4810
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mSystemReady="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mInteractive="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4811
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mSettingsObserver="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4812
    const-string v7, "  mSwitchingController:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4813
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v7, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    .line 4814
    const-string v7, "  mSettings:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4815
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v8, "    "

    invoke-virtual {v7, v0, v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4817
    const-string v7, "  mStartInputHistory:"

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4818
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    const-string v8, "   "

    invoke-virtual {v7, p2, v8}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4819
    .end local v2  # "N":I
    .end local v3  # "numClients":I
    monitor-exit v1
    :try_end_297
    .catchall {:try_start_13 .. :try_end_297} :catchall_32e

    .line 4821
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4822
    if-eqz v4, :cond_2c1

    .line 4823
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4825
    :try_start_2a1
    iget-object v1, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2aa
    .catch Ljava/io/IOException; {:try_start_2a1 .. :try_end_2aa} :catch_2ab
    .catch Landroid/os/RemoteException; {:try_start_2a1 .. :try_end_2aa} :catch_2ab

    goto :goto_2c0

    .line 4826
    :catch_2ab
    move-exception v1

    .line 4827
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dump input method client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4828
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_2c0
    goto :goto_2c6

    .line 4830
    :cond_2c1
    const-string v1, "No input method client."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4833
    :goto_2c6
    if-eqz v5, :cond_300

    if-eq v4, v5, :cond_300

    .line 4834
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4835
    const-string v1, "Warning: Current input method client doesn\'t match the last focused. window."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4837
    const-string v1, "Dumping input method client in the last focused window just in case."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4838
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4839
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4841
    :try_start_2e1
    iget-object v1, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2ea
    .catch Ljava/io/IOException; {:try_start_2e1 .. :try_end_2ea} :catch_2eb
    .catch Landroid/os/RemoteException; {:try_start_2e1 .. :try_end_2ea} :catch_2eb

    .line 4844
    goto :goto_300

    .line 4842
    :catch_2eb
    move-exception v1

    .line 4843
    .restart local v1  # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dump input method client in focused window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4847
    .end local v1  # "e":Ljava/lang/Exception;
    :cond_300
    :goto_300
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4848
    if-eqz v6, :cond_328

    .line 4849
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4851
    :try_start_30a
    invoke-interface {v6}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_311
    .catch Ljava/io/IOException; {:try_start_30a .. :try_end_311} :catch_312
    .catch Landroid/os/RemoteException; {:try_start_30a .. :try_end_311} :catch_312

    goto :goto_327

    .line 4852
    :catch_312
    move-exception v1

    .line 4853
    .restart local v1  # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dump input method service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4854
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_327
    goto :goto_32d

    .line 4856
    :cond_328
    const-string v1, "No input method service."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4858
    :goto_32d
    return-void

    .line 4819
    .end local v4  # "client":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v5  # "focusedWindowClient":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v6  # "method":Lcom/android/internal/view/IInputMethod;
    :catchall_32e
    move-exception v2

    :try_start_32f
    monitor-exit v1
    :try_end_330
    .catchall {:try_start_32f .. :try_end_330} :catchall_32e

    throw v2
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .registers 4
    .param p1, "target"  # Landroid/os/IInterface;
    .param p2, "msg"  # Landroid/os/Message;

    .line 2020
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_e

    .line 2021
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    goto :goto_14

    .line 2023
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 2024
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 2026
    :goto_14
    return-void
.end method

.method getCaller()Lcom/android/internal/os/HandlerCaller;
    .registers 2

    .line 5528
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    return-object v0
.end method

.method getCurClient()Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .registers 2

    .line 5513
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    return-object v0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3

    .line 4600
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4602
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_c

    .line 4603
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 4605
    :cond_c
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4606
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getEnabledInputMethodList(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1816
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_e

    .line 1817
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1820
    :try_start_11
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1821
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 1820
    invoke-static {p1, v2, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v1

    .line 1822
    .local v1, "resolvedUserIds":[I
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_25

    .line 1823
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1825
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_3a

    .line 1827
    .local v2, "ident":J
    const/4 v4, 0x0

    :try_start_2a
    aget v4, v1, v4

    invoke-direct {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object v4
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_35

    .line 1829
    :try_start_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 1827
    return-object v4

    .line 1829
    :catchall_35
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "userId":I
    throw v4

    .line 1831
    .end local v1  # "resolvedUserIds":[I
    .end local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "userId":I
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .registers 9
    .param p1, "imiId"  # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1876
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1877
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1878
    :try_start_7
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1879
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    const/4 v3, 0x0

    .line 1878
    invoke-static {v0, v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v2

    .line 1880
    .local v2, "resolvedUserIds":[I
    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    .line 1881
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1883
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_31

    .line 1885
    .local v3, "ident":J
    const/4 v5, 0x0

    :try_start_21
    aget v5, v2, v5

    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodSubtypeListLocked(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v5
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_2c

    .line 1888
    :try_start_27
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    .line 1885
    return-object v5

    .line 1888
    :catchall_2c
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "callingUserId":I
    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "imiId":Ljava/lang/String;
    .end local p2  # "allowsImplicitlySelectedSubtypes":Z
    throw v5

    .line 1890
    .end local v2  # "resolvedUserIds":[I
    .end local v3  # "ident":J
    .restart local v0  # "callingUserId":I
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "imiId":Ljava/lang/String;
    .restart local p2  # "allowsImplicitlySelectedSubtypes":Z
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public getInputMethodList(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1796
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_e

    .line 1797
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1800
    :try_start_11
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1801
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 1800
    invoke-static {p1, v2, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v1

    .line 1802
    .local v1, "resolvedUserIds":[I
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_25

    .line 1803
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1805
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_3a

    .line 1807
    .local v2, "ident":J
    const/4 v4, 0x0

    :try_start_2a
    aget v4, v1, v4

    invoke-direct {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(I)Ljava/util/List;

    move-result-object v4
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_35

    .line 1809
    :try_start_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 1807
    return-object v4

    .line 1809
    :catchall_35
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "userId":I
    throw v4

    .line 1811
    .end local v1  # "resolvedUserIds":[I
    .end local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "userId":I
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public getInputMethodWindowVisibleHeight()I
    .registers 3

    .line 3633
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight(I)I

    move-result v0

    return v0
.end method

.method getInputShown()Z
    .registers 2

    .line 5518
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 8

    .line 3543
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3544
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 3545
    monitor-exit v0

    return-object v2

    .line 3547
    :cond_c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    .line 3549
    .local v1, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_58

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_58

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .line 3550
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_58

    .line 3551
    :cond_29
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 3552
    .local v3, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_37

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_5a

    return-object v2

    .line 3554
    :cond_37
    :try_start_37
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3555
    .local v4, "lastSubtypeHash":I
    nop

    .line 3556
    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v5

    .line 3557
    .local v5, "lastSubtypeId":I
    if-ltz v5, :cond_53

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v6

    if-lt v5, v6, :cond_4d

    goto :goto_53

    .line 3560
    :cond_4d
    invoke-virtual {v3, v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_51} :catch_55
    .catchall {:try_start_37 .. :try_end_51} :catchall_5a

    :try_start_51
    monitor-exit v0

    return-object v2

    .line 3558
    :cond_53
    :goto_53
    monitor-exit v0

    return-object v2

    .line 3561
    .end local v4  # "lastSubtypeHash":I
    .end local v5  # "lastSubtypeId":I
    :catch_55
    move-exception v4

    .line 3562
    .local v4, "e":Ljava/lang/NumberFormatException;
    monitor-exit v0

    return-object v2

    .line 3550
    .end local v3  # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4  # "e":Ljava/lang/NumberFormatException;
    :cond_58
    :goto_58
    monitor-exit v0

    return-object v2

    .line 3564
    .end local v1  # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method getLastInputShown()Z
    .registers 2

    .line 5523
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastInputShown:Z

    return v0
.end method

.method getMethodMap()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 5533
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 16
    .param p1, "msg"  # Landroid/os/Message;

    .line 3841
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_27f

    if-eq v0, v1, :cond_277

    const/4 v1, 0x3

    if-eq v0, v1, :cond_273

    sparse-switch v0, :sswitch_data_2ae

    .line 4055
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Injector;->handleMessageMz(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 4049
    :sswitch_14
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4050
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnlockUser(I)V

    .line 4051
    return v3

    .line 4046
    .end local v0  # "userId":I
    :sswitch_1a
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_21

    move v2, v3

    :cond_21
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    .line 4047
    return v3

    .line 4032
    :sswitch_25
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2a

    move v2, v3

    :cond_2a
    move v0, v2

    .line 4033
    .local v0, "setVisible":Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4035
    .local v1, "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :try_start_2f
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2, v0}, Lcom/android/internal/view/IInputMethodClient;->applyImeVisibility(Z)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_35

    .line 4040
    goto :goto_60

    .line 4036
    :catch_35
    move-exception v2

    .line 4037
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got RemoteException sending applyImeVisibility("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") notification to pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputMethodManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_60
    return v3

    .line 4018
    .end local v0  # "setVisible":Z
    .end local v1  # "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :sswitch_61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 4019
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    .line 4020
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4022
    .local v2, "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :try_start_6d
    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v4, v1}, Lcom/android/internal/view/IInputMethodClient;->reportPreRendered(Landroid/view/inputmethod/EditorInfo;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_72} :catch_73

    .line 4027
    goto :goto_9e

    .line 4023
    :catch_73
    move-exception v4

    .line 4024
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got RemoteException sending reportPreRendered("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") notification to pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "InputMethodManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4028
    .end local v4  # "e":Landroid/os/RemoteException;
    :goto_9e
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 4029
    return v3

    .line 4006
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1  # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v2  # "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :sswitch_a2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_a7

    move v2, v3

    :cond_a7
    move v0, v2

    .line 4007
    .local v0, "fullscreen":Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4009
    .local v1, "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :try_start_ac
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2, v0}, Lcom/android/internal/view/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_b1} :catch_b2

    .line 4014
    goto :goto_dd

    .line 4010
    :catch_b2
    move-exception v2

    .line 4011
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got RemoteException sending reportFullscreen("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") notification to pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputMethodManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4015
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_dd
    return v3

    .line 4003
    .end local v0  # "fullscreen":Z
    .end local v1  # "clientState":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :sswitch_de
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_e3

    move v2, v3

    :cond_e3
    invoke-direct {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleSetInteractive(Z)V

    .line 4004
    return v3

    .line 3995
    :sswitch_e7
    :try_start_e7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_f3

    move v1, v3

    goto :goto_f4

    :cond_f3
    move v1, v2

    :goto_f4
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_f9

    move v2, v3

    :cond_f9
    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_fc
    .catch Landroid/os/RemoteException; {:try_start_e7 .. :try_end_fc} :catch_fd

    .line 4000
    goto :goto_128

    .line 3996
    :catch_fd
    move-exception v0

    .line 3997
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got RemoteException sending setActive(false) notification to pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_128
    return v3

    .line 3976
    :sswitch_129
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3977
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodClient;

    .line 3978
    .local v1, "client":Lcom/android/internal/view/IInputMethodClient;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/InputBindResult;

    .line 3980
    .local v2, "res":Lcom/android/internal/view/InputBindResult;
    :try_start_135
    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_138
    .catch Landroid/os/RemoteException; {:try_start_135 .. :try_end_138} :catch_14a
    .catchall {:try_start_135 .. :try_end_138} :catchall_148

    .line 3986
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_16f

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_16f

    .line 3987
    :goto_142
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    goto :goto_16f

    .line 3986
    :catchall_148
    move-exception v3

    goto :goto_173

    .line 3981
    :catch_14a
    move-exception v4

    .line 3982
    .restart local v4  # "e":Landroid/os/RemoteException;
    :try_start_14b
    const-string v5, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client died receiving input method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_163
    .catchall {:try_start_14b .. :try_end_163} :catchall_148

    .line 3986
    nop

    .end local v4  # "e":Landroid/os/RemoteException;
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_16f

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_16f

    .line 3987
    goto :goto_142

    .line 3990
    :cond_16f
    :goto_16f
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3991
    return v3

    .line 3986
    :goto_173
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_182

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_182

    .line 3987
    iget-object v4, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    :cond_182
    throw v3

    .line 3970
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1  # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local v2  # "res":Lcom/android/internal/view/InputBindResult;
    :sswitch_183
    :try_start_183
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethodClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_18e
    .catch Landroid/os/RemoteException; {:try_start_183 .. :try_end_18e} :catch_18f

    .line 3973
    goto :goto_190

    .line 3971
    :catch_18f
    move-exception v0

    .line 3974
    :goto_190
    return v3

    .line 3949
    :sswitch_191
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3950
    .local v0, "missingMethods":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_199

    move v9, v3

    goto :goto_19a

    :cond_199
    move v9, v2

    .line 3951
    .local v9, "restarting":Z
    :goto_19a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 3952
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    .line 3953
    .local v2, "startInputToken":Landroid/os/IBinder;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v11, v4

    check-cast v11, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 3954
    .local v11, "session":Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v12, v4

    check-cast v12, Lcom/android/internal/view/IInputContext;

    .line 3955
    .local v12, "inputContext":Lcom/android/internal/view/IInputContext;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v13, v4

    check-cast v13, Landroid/view/inputmethod/EditorInfo;

    .line 3957
    .local v13, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :try_start_1b1
    invoke-virtual {p0, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 3958
    iget-object v4, v11, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v5, v11, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->client:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-boolean v10, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->shouldPreRenderIme:Z

    move-object v5, v2

    move-object v6, v12

    move v7, v0

    move-object v8, v13

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/view/IInputMethod;->startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;ZZ)V
    :try_end_1c1
    .catch Landroid/os/RemoteException; {:try_start_1b1 .. :try_end_1c1} :catch_1c2

    .line 3961
    goto :goto_1c3

    .line 3960
    :catch_1c2
    move-exception v4

    .line 3962
    :goto_1c3
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3963
    return v3

    .line 3930
    .end local v0  # "missingMethods":I
    .end local v1  # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2  # "startInputToken":Landroid/os/IBinder;
    .end local v9  # "restarting":Z
    .end local v11  # "session":Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;
    .end local v12  # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local v13  # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :sswitch_1c7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3931
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    .line 3932
    .local v1, "method":Lcom/android/internal/view/IInputMethod;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/InputChannel;

    .line 3934
    .local v2, "channel":Landroid/view/InputChannel;
    :try_start_1d3
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/IInputSessionCallback;

    invoke-interface {v1, v2, v4}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_1da
    .catch Landroid/os/RemoteException; {:try_start_1d3 .. :try_end_1da} :catch_1f0
    .catchall {:try_start_1d3 .. :try_end_1da} :catchall_1e3

    .line 3939
    if-eqz v2, :cond_1fc

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1fc

    .line 3940
    goto :goto_1f9

    .line 3939
    :catchall_1e3
    move-exception v3

    if-eqz v2, :cond_1ef

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1ef

    .line 3940
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    :cond_1ef
    throw v3

    .line 3935
    :catch_1f0
    move-exception v4

    .line 3939
    if-eqz v2, :cond_1fc

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1fc

    .line 3940
    :goto_1f9
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 3943
    :cond_1fc
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3944
    return v3

    .line 3916
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1  # "method":Lcom/android/internal/view/IInputMethod;
    .end local v2  # "channel":Landroid/view/InputChannel;
    :sswitch_200
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3922
    .restart local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_204
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    .line 3923
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputMethod;

    iget v4, p1, Landroid/os/Message;->arg1:I

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;

    invoke-direct {v5, p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    invoke-interface {v2, v1, v4, v5}, Lcom/android/internal/view/IInputMethod;->initializeInternal(Landroid/os/IBinder;ILcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V
    :try_end_216
    .catch Landroid/os/RemoteException; {:try_start_204 .. :try_end_216} :catch_217

    .line 3926
    .end local v1  # "token":Landroid/os/IBinder;
    goto :goto_218

    .line 3925
    :catch_217
    move-exception v1

    .line 3927
    :goto_218
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3928
    return v3

    .line 3911
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_21c
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3912
    const/4 v1, 0x0

    :try_start_220
    invoke-virtual {p0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 3913
    monitor-exit v0

    .line 3914
    return v3

    .line 3913
    :catchall_225
    move-exception v1

    monitor-exit v0
    :try_end_227
    .catchall {:try_start_220 .. :try_end_227} :catchall_225

    throw v1

    .line 3901
    :sswitch_228
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3905
    .restart local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_22c
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/ResultReceiver;

    invoke-interface {v1, v2, v4}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_237
    .catch Landroid/os/RemoteException; {:try_start_22c .. :try_end_237} :catch_238

    .line 3907
    goto :goto_239

    .line 3906
    :catch_238
    move-exception v1

    .line 3908
    :goto_239
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3909
    return v3

    .line 3891
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_23d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3895
    .restart local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_241
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/ResultReceiver;

    invoke-interface {v1, v2, v4}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_24e
    .catch Landroid/os/RemoteException; {:try_start_241 .. :try_end_24e} :catch_24f

    .line 3897
    goto :goto_250

    .line 3896
    :catch_24f
    move-exception v1

    .line 3898
    :goto_250
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3899
    return v3

    .line 3883
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_254
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3885
    .restart local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_258
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_263
    .catch Landroid/os/RemoteException; {:try_start_258 .. :try_end_263} :catch_264

    .line 3887
    goto :goto_265

    .line 3886
    :catch_264
    move-exception v1

    .line 3888
    :goto_265
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3889
    return v3

    .line 3877
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_269
    :try_start_269
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_270
    .catch Landroid/os/RemoteException; {:try_start_269 .. :try_end_270} :catch_271

    .line 3880
    goto :goto_272

    .line 3878
    :catch_271
    move-exception v0

    .line 3881
    :goto_272
    return v3

    .line 3870
    :cond_273
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showConfigureInputMethods()V

    .line 3871
    return v3

    .line 3866
    :cond_277
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    .line 3867
    return v3

    .line 3844
    :cond_27f
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 3845
    .local v0, "displayId":I
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2a6

    if-eq v4, v3, :cond_2a4

    if-eq v4, v1, :cond_2a2

    .line 3859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown subtype picker mode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "InputMethodManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    return v2

    .line 3856
    :cond_2a2
    const/4 v1, 0x0

    .line 3857
    .local v1, "showAuxSubtypes":Z
    goto :goto_2a9

    .line 3853
    .end local v1  # "showAuxSubtypes":Z
    :cond_2a4
    const/4 v1, 0x1

    .line 3854
    .restart local v1  # "showAuxSubtypes":Z
    goto :goto_2a9

    .line 3850
    .end local v1  # "showAuxSubtypes":Z
    :cond_2a6
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 3851
    .restart local v1  # "showAuxSubtypes":Z
    nop

    .line 3862
    :goto_2a9
    invoke-direct {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodMenu(ZI)V

    .line 3863
    return v3

    nop

    :sswitch_data_2ae
    .sparse-switch
        0x3e8 -> :sswitch_269
        0x3f2 -> :sswitch_254
        0x3fc -> :sswitch_23d
        0x406 -> :sswitch_228
        0x40b -> :sswitch_21c
        0x410 -> :sswitch_200
        0x41a -> :sswitch_1c7
        0x7d0 -> :sswitch_191
        0xbb8 -> :sswitch_183
        0xbc2 -> :sswitch_129
        0xbcc -> :sswitch_e7
        0xbd6 -> :sswitch_de
        0xbe5 -> :sswitch_a2
        0xbf4 -> :sswitch_61
        0xbfe -> :sswitch_25
        0xfa0 -> :sswitch_1a
        0x1388 -> :sswitch_14
    .end sparse-switch
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .registers 8
    .param p1, "flags"  # I
    .param p2, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 2998
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_e

    .line 3001
    :cond_d
    return v1

    .line 3003
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_17

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_17

    .line 3005
    return v1

    .line 3016
    :cond_17
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    if-nez v0, :cond_25

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_26

    :cond_25
    goto :goto_27

    :cond_26
    move v2, v1

    :goto_27
    move v0, v2

    .line 3019
    .local v0, "shouldHideSoftInput":Z
    if-eqz v0, :cond_3c

    .line 3025
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenu()V

    .line 3026
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x406

    invoke-virtual {v3, v4, v2, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3028
    const/4 v2, 0x1

    .local v2, "res":Z
    goto :goto_3d

    .line 3030
    .end local v2  # "res":Z
    :cond_3c
    const/4 v2, 0x0

    .line 3032
    .restart local v2  # "res":Z
    :goto_3d
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v3, :cond_50

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v3, :cond_50

    .line 3034
    :try_start_45
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_4c} :catch_4d

    .line 3037
    goto :goto_4e

    .line 3035
    :catch_4d
    move-exception v3

    .line 3038
    :goto_4e
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 3040
    :cond_50
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 3042
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$Injector;->setInputShownLocked(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 3044
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 3045
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 3046
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    .line 3047
    return v2
.end method

.method hideInputMethodMenu()V
    .registers 3

    .line 4486
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4487
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 4488
    monitor-exit v0

    .line 4489
    return-void

    .line 4488
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method hideInputMethodMenuLocked()V
    .registers 4

    .line 4494
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4495
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4496
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 4497
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 4499
    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 4501
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 4502
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 4503
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4504
    return-void
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 14
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"  # I
    .param p3, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 2964
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2965
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2966
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    .line 2967
    monitor-exit v1

    return v3

    .line 2969
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_74

    .line 2971
    .local v4, "ident":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_28

    if-eqz p1, :cond_28

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 2972
    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eq v2, v6, :cond_4a

    .line 2976
    :cond_28
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2977
    .local v2, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v2, :cond_53

    .line 2980
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v7, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v8, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v9, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result v6
    :try_end_42
    .catchall {:try_start_14 .. :try_end_42} :catchall_6f

    if-nez v6, :cond_4a

    .line 2985
    nop

    .line 2992
    :try_start_45
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_74

    .line 2985
    return v3

    .line 2990
    .end local v2  # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_4a
    :try_start_4a
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_6f

    .line 2992
    :try_start_4e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_74

    .line 2990
    return v2

    .line 2978
    .restart local v2  # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_53
    :try_start_53
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown client "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "uid":I
    .end local v4  # "ident":J
    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2  # "flags":I
    .end local p3  # "resultReceiver":Landroid/os/ResultReceiver;
    throw v3
    :try_end_6f
    .catchall {:try_start_53 .. :try_end_6f} :catchall_6f

    .line 2992
    .end local v2  # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v0  # "uid":I
    .restart local v4  # "ident":J
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2  # "flags":I
    .restart local p3  # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_6f
    move-exception v2

    :try_start_70
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "uid":I
    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2  # "flags":I
    .end local p3  # "resultReceiver":Landroid/os/ResultReceiver;
    throw v2

    .line 2994
    .end local v4  # "ident":J
    .restart local v0  # "uid":I
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2  # "flags":I
    .restart local p3  # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_74
    move-exception v2

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_74

    throw v2
.end method

.method public isInputMethodPickerShownForTest()Z
    .registers 3

    .line 3389
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3390
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_a

    .line 3391
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3393
    :cond_a
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3394
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public synthetic lambda$handleShellCommandResetInputMethod$1$InputMethodManagerService(Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 4
    .param p1, "imi"  # Landroid/view/inputmethod/InputMethodInfo;

    .line 5310
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    return-void
.end method

.method public synthetic lambda$handleShellCommandResetInputMethod$2$InputMethodManagerService(Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 4
    .param p1, "imi"  # Landroid/view/inputmethod/InputMethodInfo;

    .line 5313
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    return-void
.end method

.method public synthetic lambda$new$0$InputMethodManagerService(I)Z
    .registers 3
    .param p1, "displayId"  # I

    .line 1482
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->shouldShowIme(I)Z

    move-result v0

    return v0
.end method

.method public mzIsShown()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5496
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5497
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    monitor-exit v0

    return v1

    .line 5498
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public mzSetFlags(II)I
    .registers 7
    .param p1, "flags"  # I
    .param p2, "mask"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5504
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMeizuLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5505
    :try_start_3
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMeizuFlags:I

    .line 5506
    .local v1, "old":I
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMeizuFlags:I

    not-int v3, p2

    and-int/2addr v2, v3

    and-int v3, p1, p2

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMeizuFlags:I

    .line 5507
    monitor-exit v0

    return v1

    .line 5508
    .end local v1  # "old":I
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method mzSetImeSwitchDialogTitleStyle(Landroid/content/Context;)V
    .registers 4
    .param p1, "themedContext"  # Landroid/content/Context;

    .line 5564
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v1, 0x10201a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5565
    .local v0, "v":Landroid/widget/TextView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5566
    const v1, 0xa11001d

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 5567
    return-void
.end method

.method onActionLocaleChanged()V
    .registers 5

    .line 1096
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1097
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 1098
    .local v1, "possibleNewLocale":Landroid/os/LocaleList;
    if-eqz v1, :cond_19

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1099
    monitor-exit v0

    return-void

    .line 1101
    :cond_19
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1103
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1104
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1105
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1106
    .end local v1  # "possibleNewLocale":Landroid/os/LocaleList;
    monitor-exit v0

    .line 1107
    return-void

    .line 1106
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "service"  # Landroid/os/IBinder;

    .line 2305
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2306
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2307
    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2308
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v1, :cond_29

    .line 2309
    const-string v1, "InputMethodManagerService"

    const-string v2, "Service connected without a token!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 2311
    monitor-exit v0

    return-void

    .line 2315
    :cond_29
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x410

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2317
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_4a

    .line 2318
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2319
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2322
    :cond_4a
    monitor-exit v0

    .line 2323
    return-void

    .line 2322
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 2448
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2451
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2452
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2453
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2456
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    .line 2457
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 2458
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 2460
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$Injector;->setInputShownLocked(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 2462
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2464
    :cond_2e
    monitor-exit v0

    .line 2465
    return-void

    .line 2464
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .registers 10
    .param p1, "method"  # Lcom/android/internal/view/IInputMethod;
    .param p2, "session"  # Lcom/android/internal/view/IInputMethodSession;
    .param p3, "channel"  # Landroid/view/InputChannel;

    .line 2327
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2328
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_49

    if-eqz p1, :cond_49

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2329
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_49

    .line 2330
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_49

    .line 2331
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2332
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2334
    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    .line 2336
    .local v1, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v2, v1, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v2, :cond_47

    .line 2337
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbc2

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2340
    :cond_47
    monitor-exit v0

    return-void

    .line 2343
    .end local v1  # "res":Lcom/android/internal/view/InputBindResult;
    :cond_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_4e

    .line 2346
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    .line 2347
    return-void

    .line 2343
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4866
    move-object/from16 v8, p6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 4868
    .local v9, "callingUid":I
    if-eqz v9, :cond_42

    const/16 v0, 0x7d0

    if-eq v9, v0, :cond_42

    .line 4872
    if-eqz v8, :cond_13

    .line 4873
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 4875
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodManagerService does not support shell commands from non-shell users. callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4877
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4878
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/Process;->isCoreUid(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 4880
    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4881
    return-void

    .line 4883
    :cond_3c
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4885
    .end local v0  # "errorMsg":Ljava/lang/String;
    :cond_42
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;

    move-object v10, p0

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4887
    return-void
.end method

.method onSwitchUser(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 1463
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1464
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchUserLocked(I)V

    .line 1465
    monitor-exit v0

    .line 1466
    return-void

    .line 1465
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1648
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 1649
    :catch_5
    move-exception v0

    .line 1652
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 1653
    const-string v1, "InputMethodManagerService"

    const-string v2, "Input Method Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1655
    :cond_11
    throw v0
.end method

.method onUnlockUser(I)V
    .registers 8
    .param p1, "userId"  # I

    .line 1445
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1446
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    .line 1450
    .local v1, "currentUserId":I
    if-eq p1, v1, :cond_d

    .line 1451
    monitor-exit v0

    return-void

    .line 1453
    :cond_d
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_17

    move v3, v4

    goto :goto_18

    :cond_17
    move v3, v5

    :goto_18
    invoke-virtual {v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1454
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-eqz v2, :cond_25

    .line 1456
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1457
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 1459
    .end local v1  # "currentUserId":I
    :cond_25
    monitor-exit v0

    .line 1460
    return-void

    .line 1459
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .registers 10
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;

    .line 1987
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1988
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 1989
    .local v1, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v1, :cond_66

    .line 1990
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->clientDeathRecipient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1991
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 1993
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1994
    .local v2, "numItems":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_26
    if-ltz v3, :cond_3e

    .line 1995
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 1996
    .local v5, "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1500(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v6

    if-ne v6, v1, :cond_3b

    .line 1997
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1994
    .end local v5  # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    :cond_3b
    add-int/lit8 v3, v3, -0x1

    goto :goto_26

    .line 2001
    .end local v3  # "i":I
    :cond_3e
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v5, 0x0

    if-ne v3, v1, :cond_60

    .line 2002
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    if-eqz v3, :cond_5c

    .line 2003
    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2004
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v3, :cond_5c

    .line 2005
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v6, 0x3e8

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2009
    :cond_5c
    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2010
    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 2012
    :cond_60
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-ne v3, v1, :cond_66

    .line 2013
    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2016
    .end local v1  # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v2  # "numItems":I
    :cond_66
    monitor-exit v0

    .line 2017
    return-void

    .line 2016
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw v1
.end method

.method public reportActivityView(Lcom/android/internal/view/IInputMethodClient;I[F)V
    .registers 16
    .param p1, "parentClient"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "childDisplayId"  # I
    .param p3, "matrixValues"  # [F

    .line 3639
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 3640
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_132

    .line 3644
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3645
    .local v1, "callingUid":I
    iget v2, v0, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v1, v2, :cond_12a

    .line 3649
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 3650
    :try_start_13
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3651
    .local v3, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-nez v3, :cond_23

    .line 3652
    monitor-exit v2

    return-void

    .line 3656
    :cond_23
    if-nez p3, :cond_55

    .line 3657
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 3658
    .local v4, "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    if-nez v4, :cond_31

    .line 3659
    monitor-exit v2

    return-void

    .line 3661
    :cond_31
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1500(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v5

    if-ne v5, v3, :cond_3e

    .line 3665
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 3666
    monitor-exit v2

    return-void

    .line 3662
    :cond_3e
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Only the owner client can clear ActivityViewGeometry for display #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1  # "callingUid":I
    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .end local p2  # "childDisplayId":I
    .end local p3  # "matrixValues":[F
    throw v5

    .line 3669
    .end local v4  # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    .restart local v0  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v1  # "callingUid":I
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2  # "childDisplayId":I
    .restart local p3  # "matrixValues":[F
    :cond_55
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 3670
    .restart local v4  # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    if-eqz v4, :cond_89

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1500(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v5

    if-ne v5, v3, :cond_66

    goto :goto_89

    .line 3671
    :cond_66
    new-instance v5, Ljava/security/InvalidParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is already registered by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3672
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1500(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .end local v0  # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1  # "callingUid":I
    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .end local p2  # "childDisplayId":I
    .end local p3  # "matrixValues":[F
    throw v5

    .line 3674
    .restart local v0  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v1  # "callingUid":I
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2  # "childDisplayId":I
    .restart local p3  # "matrixValues":[F
    :cond_89
    :goto_89
    if-nez v4, :cond_c0

    .line 3675
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v6, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v5, p2, v6}, Lcom/android/server/wm/WindowManagerInternal;->isUidAllowedOnDisplay(II)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 3679
    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {v5, v3, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/graphics/Matrix;)V

    move-object v4, v5

    .line 3680
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c0

    .line 3676
    :cond_a6
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " cannot access to display #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1  # "callingUid":I
    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .end local p2  # "childDisplayId":I
    .end local p3  # "matrixValues":[F
    throw v5

    .line 3682
    .restart local v0  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v1  # "callingUid":I
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "parentClient":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2  # "childDisplayId":I
    .restart local p3  # "matrixValues":[F
    :cond_c0
    :goto_c0
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1600(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 3684
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v5, :cond_125

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-nez v5, :cond_d2

    goto :goto_125

    .line 3688
    :cond_d2
    const/4 v5, 0x0

    .line 3689
    .local v5, "matrix":Landroid/graphics/Matrix;
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v6, v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 3690
    .local v6, "displayId":I
    const/4 v7, 0x0

    .line 3692
    .local v7, "needToNotify":Z
    :goto_d8
    if-ne v6, p2, :cond_dc

    const/4 v8, 0x1

    goto :goto_dd

    :cond_dc
    const/4 v8, 0x0

    :goto_dd
    or-int/2addr v7, v8

    .line 3693
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 3694
    .local v8, "next":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    if-nez v8, :cond_e9

    .line 3695
    goto :goto_11b

    .line 3697
    :cond_e9
    if-nez v5, :cond_f6

    .line 3698
    new-instance v9, Landroid/graphics/Matrix;

    invoke-static {v8}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1600(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v5, v9

    goto :goto_fd

    .line 3700
    :cond_f6
    invoke-static {v8}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1600(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 3702
    :goto_fd
    invoke-static {v8}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1500(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v9

    iget v9, v9, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-ne v9, v10, :cond_11d

    .line 3703
    if-eqz v7, :cond_11b

    .line 3704
    const/16 v9, 0x9

    new-array v9, v9, [F

    .line 3705
    .local v9, "values":[F
    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->getValues([F)V
    :try_end_110
    .catchall {:try_start_13 .. :try_end_110} :catchall_127

    .line 3707
    :try_start_110
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v10, v10, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    invoke-interface {v10, v11, v9}, Lcom/android/internal/view/IInputMethodClient;->updateActivityViewToScreenMatrix(I[F)V
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_110 .. :try_end_119} :catch_11a
    .catchall {:try_start_110 .. :try_end_119} :catchall_127

    .line 3709
    goto :goto_11b

    .line 3708
    :catch_11a
    move-exception v10

    .line 3715
    .end local v3  # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v4  # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    .end local v5  # "matrix":Landroid/graphics/Matrix;
    .end local v6  # "displayId":I
    .end local v7  # "needToNotify":Z
    .end local v8  # "next":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    .end local v9  # "values":[F
    :cond_11b
    :goto_11b
    :try_start_11b
    monitor-exit v2

    .line 3716
    return-void

    .line 3713
    .restart local v3  # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v4  # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    .restart local v5  # "matrix":Landroid/graphics/Matrix;
    .restart local v6  # "displayId":I
    .restart local v7  # "needToNotify":Z
    .restart local v8  # "next":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    :cond_11d
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1500(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v9

    iget v9, v9, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    move v6, v9

    .line 3714
    .end local v8  # "next":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    goto :goto_d8

    .line 3685
    .end local v5  # "matrix":Landroid/graphics/Matrix;
    .end local v6  # "displayId":I
    .end local v7  # "needToNotify":Z
    :cond_125
    :goto_125
    monitor-exit v2

    return-void

    .line 3715
    .end local v3  # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .end local v4  # "info":Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;
    :catchall_127
    move-exception v3

    monitor-exit v2
    :try_end_129
    .catchall {:try_start_11b .. :try_end_129} :catchall_127

    throw v3

    .line 3646
    :cond_12a
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "The caller doesn\'t own the display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3641
    .end local v1  # "callingUid":I
    :cond_132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display for non-existent displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .registers 9
    .param p1, "cs"  # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2388
    iget-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v0, :cond_26

    .line 2390
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 2391
    .local v0, "channels":[Landroid/view/InputChannel;
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2392
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x41a

    aget-object v1, v0, v1

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-direct {v5, p0, v2, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V

    invoke-virtual {v3, v4, v2, v1, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2396
    .end local v0  # "channels":[Landroid/view/InputChannel;
    :cond_26
    return-void
.end method

.method resetCurrentMethodAndClient(I)V
    .registers 3
    .param p1, "unbindClientReason"  # I

    .line 2382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2383
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 2384
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2385
    return-void
.end method

.method resetSelectedImeIfNeeded(Ljava/lang/String;)V
    .registers 4
    .param p1, "selectedImeId"  # Ljava/lang/String;

    .line 5571
    const-string v0, "com.baidu.input_mz/com.meizu.input.MzInputService"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5572
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v1, "com.sohu.inputmethod.sogou.meizu/com.sohu.inputmethod.sogou.SogouIME"

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5574
    :cond_f
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 13
    .param p1, "imiId"  # Ljava/lang/String;
    .param p2, "subtypes"  # [Landroid/view/inputmethod/InputMethodSubtype;

    .line 3571
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ca

    if-nez p2, :cond_a

    goto/16 :goto_ca

    .line 3572
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3573
    .local v0, "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_49

    aget-object v4, p2, v3

    .line 3574
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 3575
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 3577
    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicated subtype definition found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3578
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3577
    const-string v6, "InputMethodManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    .end local v4  # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 3581
    :cond_49
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 3582
    :try_start_4c
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v3

    if-nez v3, :cond_54

    .line 3583
    monitor-exit v1

    return-void

    .line 3585
    :cond_54
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_5a

    .line 3586
    monitor-exit v1

    return-void

    .line 3588
    :cond_5a
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 3589
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_66

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_4c .. :try_end_65} :catchall_c7

    return-void

    .line 3592
    :cond_66
    :try_start_66
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_70} :catch_bd
    .catchall {:try_start_66 .. :try_end_70} :catchall_c7

    .line 3596
    .local v4, "packageInfos":[Ljava/lang/String;
    nop

    .line 3597
    if-eqz v4, :cond_bb

    .line 3598
    :try_start_73
    array-length v5, v4

    .line 3599
    .local v5, "packageNum":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_75
    if-ge v6, v5, :cond_bb

    .line 3600
    aget-object v7, v4, v6

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 3601
    array-length v7, p2

    if-lez v7, :cond_90

    .line 3602
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_99

    .line 3604
    :cond_90
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3606
    :goto_99
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3607
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    .line 3606
    invoke-static {v7, v8, v9}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->save(Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V

    .line 3608
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_aa
    .catchall {:try_start_73 .. :try_end_aa} :catchall_c7

    .line 3610
    .local v7, "ident":J
    :try_start_aa
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_b3

    .line 3612
    :try_start_ad
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3613
    nop

    .line 3614
    monitor-exit v1

    return-void

    .line 3612
    :catchall_b3
    move-exception v2

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "imiId":Ljava/lang/String;
    .end local p2  # "subtypes":[Landroid/view/inputmethod/InputMethodSubtype;
    throw v2

    .line 3599
    .end local v7  # "ident":J
    .restart local v0  # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "imiId":Ljava/lang/String;
    .restart local p2  # "subtypes":[Landroid/view/inputmethod/InputMethodSubtype;
    :cond_b8
    add-int/lit8 v6, v6, 0x1

    goto :goto_75

    .line 3618
    .end local v3  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4  # "packageInfos":[Ljava/lang/String;
    .end local v5  # "packageNum":I
    .end local v6  # "i":I
    :cond_bb
    monitor-exit v1

    .line 3619
    return-void

    .line 3593
    .restart local v3  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catch_bd
    move-exception v2

    .line 3594
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "InputMethodManagerService"

    const-string v5, "Failed to get package infos"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    monitor-exit v1

    return-void

    .line 3618
    .end local v2  # "e":Landroid/os/RemoteException;
    .end local v3  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_c7
    move-exception v2

    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_ad .. :try_end_c9} :catchall_c7

    throw v2

    .line 3571
    .end local v0  # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_ca
    :goto_ca
    return-void
.end method

.method setEnabledSessionInMainThread(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .registers 5
    .param p1, "session"  # Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 3818
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eq v0, p1, :cond_30

    .line 3819
    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_18

    .line 3822
    :try_start_a
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    .line 3824
    goto :goto_18

    .line 3823
    :catch_17
    move-exception v0

    .line 3826
    :cond_18
    :goto_18
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 3827
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_30

    .line 3830
    :try_start_22
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2e} :catch_2f

    .line 3832
    goto :goto_30

    .line 3831
    :catch_2f
    move-exception v0

    .line 3835
    :cond_30
    :goto_30
    return-void
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .registers 4
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "subtypeId"  # I

    .line 2782
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;IZ)V

    .line 2783
    return-void
.end method

.method setInputMethodLocked(Ljava/lang/String;IZ)V
    .registers 12
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "subtypeId"  # I
    .param p3, "floatingModeSwitch"  # Z

    .line 2786
    invoke-static {}, Lcom/android/server/hips/security/PasswordMode;->getInstance()Lcom/android/server/hips/security/PasswordMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/security/PasswordMode;->isInPasswordMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eqz v0, :cond_12

    .line 2788
    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideMySoftInput(Landroid/os/IBinder;I)V

    .line 2792
    :cond_12
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2793
    .local v0, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_10f

    .line 2798
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "InputMethodManagerService"

    if-eqz v2, :cond_7c

    .line 2799
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 2800
    .local v1, "subtypeCount":I
    if-gtz v1, :cond_2e

    .line 2801
    return-void

    .line 2803
    :cond_2e
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 2805
    .local v2, "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-ltz p2, :cond_39

    if-ge p2, v1, :cond_39

    .line 2806
    invoke-virtual {v0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .local v5, "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_3d

    .line 2810
    .end local v5  # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_39
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 2812
    .restart local v5  # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_3d
    if-eqz v5, :cond_5f

    if-nez v2, :cond_42

    goto :goto_5f

    .line 2817
    :cond_42
    if-eq v5, v2, :cond_5e

    .line 2818
    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2819
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v3, :cond_5e

    .line 2821
    :try_start_4b
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v3, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2822
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v3, v5}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_57} :catch_58

    .line 2825
    goto :goto_5e

    .line 2823
    :catch_58
    move-exception v3

    .line 2824
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "Failed to call changeInputMethodSubtype"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    .end local v3  # "e":Landroid/os/RemoteException;
    :cond_5e
    :goto_5e
    return-void

    .line 2813
    :cond_5f
    :goto_5f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal subtype state: old subtype = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", new subtype = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    return-void

    .line 2832
    .end local v1  # "subtypeCount":I
    .end local v2  # "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5  # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2836
    .local v5, "ident":J
    :try_start_80
    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2841
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_10a

    const-string v2, "com.sohu.inputmethod.sogou.meizu/com.sohu.inputmethod.sogou.SogouIME"

    if-eqz v1, :cond_b3

    :try_start_89
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShouldUseFloatingKeyboard:Z

    if-eqz v1, :cond_b3

    if-eqz p3, :cond_b3

    .line 2842
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodIdBeforeFloatingMode:Ljava/lang/String;

    .line 2843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setInputMethodLocked mMethodIdBeforeFloatingMode = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodIdBeforeFloatingMode:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 2845
    :cond_b3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodIdBeforeFloatingMode:Ljava/lang/String;

    .line 2848
    :goto_b6
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2850
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_df

    .line 2851
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2852
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2853
    const-string/jumbo v4, "input_method_id"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2854
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2856
    .end local v1  # "intent":Landroid/content/Intent;
    :cond_df
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_e3
    .catchall {:try_start_89 .. :try_end_e3} :catchall_10a

    .line 2858
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2859
    nop

    .line 2861
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    .line 2862
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 2861
    invoke-direct {p0, v1, v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 2864
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2866
    .local v1, "isDefaultIme":Z
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    const/4 v4, -0x2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 2867
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "force_refresh"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2870
    return-void

    .line 2858
    .end local v1  # "isDefaultIme":Z
    :catchall_10a
    move-exception v1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2794
    .end local v5  # "ident":J
    :cond_10f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setLastInputShown(Z)V
    .registers 2
    .param p1, "shown"  # Z

    .line 5544
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastInputShown:Z

    .line 5545
    return-void
.end method

.method setSelectedInputMethodAndSubtypeInnerLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .registers 4
    .param p1, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtypeId"  # I
    .param p3, "setSubtypeOnly"  # Z

    .line 5539
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 5540
    return-void
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .registers 12
    .param p1, "flags"  # I
    .param p2, "resultReceiver"  # Landroid/os/ResultReceiver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 2907
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 2908
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 2909
    return v2

    .line 2912
    :cond_9
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_12

    .line 2913
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2914
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    goto :goto_18

    .line 2915
    :cond_12
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_18

    .line 2916
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2919
    :cond_18
    :goto_18
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_1d

    .line 2920
    return v2

    .line 2923
    :cond_1d
    const/4 v1, 0x0

    .line 2924
    .local v1, "res":Z
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v3, :cond_4e

    .line 2926
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x3fc

    .line 2927
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getImeShowFlags()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2926
    invoke-virtual {v2, v4, v5, v6, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2929
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 2932
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$Injector;->setInputShownLocked(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 2934
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v2, :cond_4c

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    if-nez v2, :cond_4c

    .line 2935
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v4, 0x2c081001

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2937
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 2939
    :cond_4c
    const/4 v1, 0x1

    goto :goto_93

    .line 2940
    :cond_4e
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v3, :cond_93

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v7, 0xbb8

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-ltz v3, :cond_93

    .line 2946
    const/16 v3, 0x7d00

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 2947
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    .line 2946
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2948
    const-string v0, "InputMethodManagerService"

    const-string v2, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2950
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v2, 0x40800005  # 4.0000024f

    invoke-direct {p0, v0, p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2958
    :cond_93
    :goto_93
    return v1
.end method

.method showImeSwitcherNotificationIfNeeded()V
    .registers 6

    .line 5554
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1a

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    if-nez v1, :cond_1a

    .line 5555
    const/4 v1, 0x0

    const v2, 0x104065c

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 5557
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 5555
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 5558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    .line 5560
    :cond_1a
    return-void
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .registers 7
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputMethodId"  # Ljava/lang/String;

    .line 3427
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3429
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 3430
    monitor-exit v0

    return-void

    .line 3432
    :cond_b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3434
    monitor-exit v0

    .line 3435
    return-void

    .line 3434
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .registers 8
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"  # I

    .line 3356
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3357
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 3358
    monitor-exit v0

    return-void

    .line 3360
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 3361
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3362
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3361
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    monitor-exit v0

    return-void

    .line 3368
    :cond_35
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x1

    .line 3370
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    goto :goto_44

    :cond_43
    const/4 v4, 0x0

    .line 3368
    :goto_44
    invoke-virtual {v2, v3, p2, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3371
    monitor-exit v0

    .line 3372
    return-void

    .line 3371
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public showInputMethodPickerFromSystem(Lcom/android/internal/view/IInputMethodClient;II)V
    .registers 7
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"  # I
    .param p3, "displayId"  # I

    .line 3377
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    .line 3384
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3386
    return-void

    .line 3379
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "showInputMethodPickerFromSystem requires WRITE_SECURE_SETTINGS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 14
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"  # I
    .param p3, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 2875
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2876
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2877
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    .line 2878
    monitor-exit v1

    return v3

    .line 2880
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_92

    .line 2882
    .local v4, "ident":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_28

    if-eqz p1, :cond_28

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 2883
    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eq v2, v6, :cond_68

    .line 2887
    :cond_28
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2888
    .local v2, "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    if-eqz v2, :cond_71

    .line 2891
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v7, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v8, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v9, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result v6

    if-nez v6, :cond_68

    .line 2893
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring showSoftInput of uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_14 .. :try_end_62} :catchall_8d

    .line 2894
    nop

    .line 2900
    :try_start_63
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_92

    .line 2894
    return v3

    .line 2898
    .end local v2  # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_68
    :try_start_68
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v2
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_8d

    .line 2900
    :try_start_6c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_92

    .line 2898
    return v2

    .line 2889
    .restart local v2  # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    :cond_71
    :try_start_71
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown client "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "uid":I
    .end local v4  # "ident":J
    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2  # "flags":I
    .end local p3  # "resultReceiver":Landroid/os/ResultReceiver;
    throw v3
    :try_end_8d
    .catchall {:try_start_71 .. :try_end_8d} :catchall_8d

    .line 2900
    .end local v2  # "cs":Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .restart local v0  # "uid":I
    .restart local v4  # "ident":J
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2  # "flags":I
    .restart local p3  # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_8d
    move-exception v2

    :try_start_8e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "uid":I
    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p2  # "flags":I
    .end local p3  # "resultReceiver":Landroid/os/ResultReceiver;
    throw v2

    .line 2902
    .end local v4  # "ident":J
    .restart local v0  # "uid":I
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p2  # "flags":I
    .restart local p3  # "resultReceiver":Landroid/os/ResultReceiver;
    :catchall_92
    move-exception v2

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_8e .. :try_end_94} :catchall_92

    throw v2
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;II)Lcom/android/internal/view/InputBindResult;
    .registers 31
    .param p1, "startInputReason"  # I
    .param p2, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"  # Landroid/os/IBinder;
    .param p4, "startInputFlags"  # I
    .param p5, "softInputMode"  # I
    .param p6, "windowFlags"  # I
    .param p7, "attribute"  # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"  # Lcom/android/internal/view/IInputContext;
    .param p9, "missingMethods"  # I
    .param p10, "unverifiedTargetSdkVersion"  # I

    .line 3057
    move-object/from16 v13, p0

    move-object/from16 v14, p7

    if-nez p3, :cond_11

    .line 3058
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "windowToken cannot be null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NULL:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3061
    :cond_11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    .line 3063
    .local v15, "callingUserId":I
    if-eqz v14, :cond_5b

    iget-object v0, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_5b

    iget-object v0, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 3064
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq v0, v15, :cond_5b

    .line 3065
    iget-object v0, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "Using EditorInfo.targetInputMethodUser requires INTERACT_ACROSS_USERS_FULL."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    iget-object v0, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 3068
    .local v0, "userId":I
    iget-object v1, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {v1, v0}, Landroid/os/UserManagerInternal;->isUserRunning(I)Z

    move-result v1

    if-nez v1, :cond_58

    .line 3072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not running."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    sget-object v1, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3068
    :cond_58
    move/from16 v16, v0

    goto :goto_5e

    .line 3076
    .end local v0  # "userId":I
    :cond_5b
    move v0, v15

    move/from16 v16, v0

    .line 3079
    .local v16, "userId":I
    :goto_5e
    iget-object v12, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 3080
    :try_start_61
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_c4

    move-wide/from16 v17, v0

    .line 3082
    .local v17, "ident":J
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v19, v12

    move/from16 v12, v16

    :try_start_81
    invoke-direct/range {v1 .. v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;III)Lcom/android/internal/view/InputBindResult;

    move-result-object v0
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_be

    .line 3086
    .local v0, "result":Lcom/android/internal/view/InputBindResult;
    :try_start_85
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3087
    nop

    .line 3088
    .end local v17  # "ident":J
    monitor-exit v19
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_c9

    .line 3089
    if-nez v0, :cond_bd

    .line 3091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputBindResult is @NonNull. startInputReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3092
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " windowFlags=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3093
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " editorInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3091
    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    sget-object v1, Lcom/android/internal/view/InputBindResult;->NULL:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 3097
    :cond_bd
    return-object v0

    .line 3086
    .end local v0  # "result":Lcom/android/internal/view/InputBindResult;
    .restart local v17  # "ident":J
    :catchall_be
    move-exception v0

    move-object v1, v0

    :try_start_c0
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v15  # "callingUserId":I
    .end local v16  # "userId":I
    .end local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "startInputReason":I
    .end local p2  # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local p3  # "windowToken":Landroid/os/IBinder;
    .end local p4  # "startInputFlags":I
    .end local p5  # "softInputMode":I
    .end local p6  # "windowFlags":I
    .end local p7  # "attribute":Landroid/view/inputmethod/EditorInfo;
    .end local p8  # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local p9  # "missingMethods":I
    .end local p10  # "unverifiedTargetSdkVersion":I
    throw v1

    .line 3088
    .end local v17  # "ident":J
    .restart local v15  # "callingUserId":I
    .restart local v16  # "userId":I
    .restart local p0  # "this":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "startInputReason":I
    .restart local p2  # "client":Lcom/android/internal/view/IInputMethodClient;
    .restart local p3  # "windowToken":Landroid/os/IBinder;
    .restart local p4  # "startInputFlags":I
    .restart local p5  # "softInputMode":I
    .restart local p6  # "windowFlags":I
    .restart local p7  # "attribute":Landroid/view/inputmethod/EditorInfo;
    .restart local p8  # "inputContext":Lcom/android/internal/view/IInputContext;
    .restart local p9  # "missingMethods":I
    .restart local p10  # "unverifiedTargetSdkVersion":I
    :catchall_c4
    move-exception v0

    move-object/from16 v19, v12

    :goto_c7
    monitor-exit v19
    :try_end_c8
    .catchall {:try_start_c0 .. :try_end_c8} :catchall_c9

    throw v0

    :catchall_c9
    move-exception v0

    goto :goto_c7
.end method

.method startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;
    .registers 30
    .param p1, "cs"  # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .param p2, "inputContext"  # Lcom/android/internal/view/IInputContext;
    .param p3, "missingMethods"  # I
    .param p4, "attribute"  # Landroid/view/inputmethod/EditorInfo;
    .param p5, "startInputFlags"  # I
    .param p6, "startInputReason"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 2133
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v8, :cond_d

    .line 2134
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NO_IME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2137
    :cond_d
    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_1e

    .line 2140
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v0

    .line 2145
    :cond_1e
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget-object v5, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v0

    const-string v4, "InputMethodManagerService"

    if-nez v0, :cond_4f

    .line 2147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " package="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2152
    :cond_4f
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v6, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->isUidAllowedOnDisplay(II)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 2154
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_DISPLAY_ID:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2158
    :cond_5e
    iget v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    invoke-static {v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I

    move-result v5

    .line 2161
    .local v5, "displayIdToShowIme":I
    const/4 v0, 0x0

    .line 2162
    .local v0, "isQuickReply":Z
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->checkIsQuickReply(Landroid/app/ActivityManager;)Z

    move-result v6

    .line 2163
    .end local v0  # "isQuickReply":Z
    .local v6, "isQuickReply":Z
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v8

    .line 2164
    .local v8, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v8, :cond_79

    iget v0, v8, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_7a

    :cond_79
    move v0, v7

    :goto_7a
    iput v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDeviceRotation:I

    .line 2166
    invoke-direct {v1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->setIsQuickReply(Z)Z

    .line 2169
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v9, 0x26b6

    invoke-virtual {v0, v9}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    .line 2172
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v9, 0x1

    if-eq v0, v2, :cond_a5

    .line 2174
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClientInKeyguard:Z

    .line 2177
    invoke-virtual {v1, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2182
    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v0, :cond_a5

    .line 2183
    iget-object v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v11, 0xbcc

    invoke-virtual {v10, v11, v9, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v1, v0, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2188
    :cond_a5
    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    .line 2189
    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    if-gtz v0, :cond_b0

    iput v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    .line 2190
    :cond_b0
    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2191
    move-object/from16 v10, p2

    iput-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    .line 2192
    iget v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 2193
    invoke-direct {v1, v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getActivityViewToScreenMatrixLocked(II)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 2194
    iget v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-eq v0, v5, :cond_ca

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_ca

    .line 2199
    or-int/lit8 v0, p3, 0x8

    move v11, v0

    .end local p3  # "missingMethods":I
    .local v0, "missingMethods":I
    goto :goto_cc

    .line 2201
    .end local v0  # "missingMethods":I
    .restart local p3  # "missingMethods":I
    :cond_ca
    move/from16 v11, p3

    .end local p3  # "missingMethods":I
    .local v11, "missingMethods":I
    :goto_cc
    iput v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContextMissingMethods:I

    .line 2202
    iput-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 2207
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    if-eqz v0, :cond_15b

    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15b

    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-ne v5, v0, :cond_15b

    .line 2209
    iget-object v0, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_f1

    .line 2212
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_e9

    goto :goto_ea

    :cond_e9
    move v9, v7

    :goto_ea
    move/from16 v12, p6

    invoke-virtual {v1, v12, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0

    .line 2215
    :cond_f1
    move/from16 v12, p6

    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_159

    .line 2216
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_113

    .line 2219
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2220
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    const/16 v19, 0x0

    move-object v13, v0

    move-object/from16 v17, v4

    move/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v0

    .line 2223
    :cond_113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget-wide v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v15, 0xbb8

    add-long/2addr v9, v15

    cmp-long v9, v13, v9

    if-gez v9, :cond_135

    .line 2232
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    const/16 v19, 0x0

    move-object v13, v0

    move-object/from16 v17, v4

    move/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v0

    .line 2236
    :cond_135
    const/16 v9, 0x7d00

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v13, v10, v7

    .line 2237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object v15, v8

    .end local v8  # "displayInfo":Landroid/view/DisplayInfo;
    .local v15, "displayInfo":Landroid/view/DisplayInfo;
    iget-wide v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v13, v7

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v0, 0x1

    aput-object v7, v10, v0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v7

    .line 2236
    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_15e

    .line 2215
    .end local v15  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v8  # "displayInfo":Landroid/view/DisplayInfo;
    :cond_159
    move-object v15, v8

    .end local v8  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v15  # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_15e

    .line 2207
    .end local v15  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v8  # "displayInfo":Landroid/view/DisplayInfo;
    :cond_15b
    move/from16 v12, p6

    move-object v15, v8

    .line 2242
    .end local v8  # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v15  # "displayInfo":Landroid/view/DisplayInfo;
    :goto_15e
    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 2243
    .local v7, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v7, :cond_202

    .line 2247
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 2249
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.view.InputMethod"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2250
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2251
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v9, 0x104030b

    const-string v10, "android.intent.extra.client_label"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2253
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v13, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v10, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static {v9, v13, v10, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const-string v10, "android.intent.extra.client_intent"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2256
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v9, 0x40800005  # 4.0000024f

    invoke-direct {v1, v8, v1, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v8

    if-eqz v8, :cond_1e6

    .line 2257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    .line 2258
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    .line 2259
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2260
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2261
    iput v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 2267
    :try_start_1c1
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/16 v8, 0x7db

    iget v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-interface {v0, v4, v8, v9}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_1cc
    .catch Landroid/os/RemoteException; {:try_start_1c1 .. :try_end_1cc} :catch_1cd

    .line 2270
    goto :goto_1ce

    .line 2269
    :catch_1cd
    move-exception v0

    .line 2271
    :goto_1ce
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    const/16 v22, 0x0

    move-object/from16 v16, v0

    move-object/from16 v20, v4

    move/from16 v21, v8

    invoke-direct/range {v16 .. v22}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v0

    .line 2275
    :cond_1e6
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure connecting to input method service: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    sget-object v0, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2244
    :cond_202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown id: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 16
    .param p1, "statusBar"  # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1660
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1664
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_df

    .line 1665
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 1666
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1667
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 1668
    .local v2, "currentUserId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1669
    invoke-virtual {v4, v2}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_29

    move v4, v1

    goto :goto_2a

    :cond_29
    move v4, v5

    .line 1668
    :goto_2a
    invoke-virtual {v3, v2, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1670
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1671
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1672
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1673
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v3, :cond_52

    .line 1674
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1676
    :cond_52
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 1677
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v4, 0x1110127

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1679
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-eqz v3, :cond_6f

    .line 1680
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    .line 1684
    :cond_6f
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1685
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1687
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1688
    .local v3, "broadcastFilterForSystemUser":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1689
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1690
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1691
    const-string v4, "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1692
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;

    invoke-direct {v6, p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1695
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1696
    .local v4, "broadcastFilterForAllUsers":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1697
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;

    invoke-direct {v9, p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v4

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1700
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v6

    .line 1701
    .local v6, "defaultImiId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v1

    .line 1702
    .local v7, "imeSelectedOnBoot":Z
    if-nez v7, :cond_c8

    move v5, v1

    :cond_c8
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1703
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1704
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1705
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1706
    invoke-virtual {v8}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v8

    .line 1704
    invoke-static {v1, v5, v2, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1708
    .end local v2  # "currentUserId":I
    .end local v3  # "broadcastFilterForSystemUser":Landroid/content/IntentFilter;
    .end local v4  # "broadcastFilterForAllUsers":Landroid/content/IntentFilter;
    .end local v6  # "defaultImiId":Ljava/lang/String;
    .end local v7  # "imeSelectedOnBoot":Z
    :cond_df
    monitor-exit v0

    .line 1709
    return-void

    .line 1708
    :catchall_e1
    move-exception v1

    monitor-exit v0
    :try_end_e3
    .catchall {:try_start_3 .. :try_end_e3} :catchall_e1

    throw v1
.end method

.method unbindCurrentClientLocked(I)V
    .registers 8
    .param p1, "unbindClientReason"  # I

    .line 2029
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_4c

    .line 2032
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 2033
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2034
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_1a

    .line 2035
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2040
    :cond_1a
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbcc

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3, v1, v1, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2042
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbb8

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3, v4, p1, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2044
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iput-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2045
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2046
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 2048
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 2050
    :cond_4c
    return-void
.end method

.method unbindCurrentMethodLocked()V
    .registers 6

    .line 2350
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2351
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2352
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 2355
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_19

    .line 2356
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2357
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    .line 2360
    :cond_19
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 2366
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-interface {v3, v0, v4}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    .line 2368
    goto :goto_27

    .line 2367
    :catch_26
    move-exception v0

    .line 2370
    :goto_27
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 2371
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 2372
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2373
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2374
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 2377
    :cond_37
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2378
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2379
    return-void
.end method

.method updateCurrentProfileIds()V
    .registers 4

    .line 1640
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1641
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    .line 1640
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    .line 1642
    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .registers 2
    .param p1, "enabledMayChange"  # Z

    .line 2708
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 2709
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    .line 2710
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .registers 14
    .param p1, "enabledMayChange"  # Z

    .line 2713
    const/4 v0, 0x4

    if-eqz p1, :cond_4b

    .line 2714
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 2715
    .local v1, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 2718
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 2720
    .local v3, "imm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_16
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x8000

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2722
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 2720
    invoke-interface {v4, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2723
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_46

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v5, v0, :cond_46

    .line 2729
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2731
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v10

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2732
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v11

    .line 2729
    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_46} :catch_47

    .line 2735
    .end local v4  # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_46
    goto :goto_48

    .line 2734
    :catch_47
    move-exception v4

    .line 2715
    .end local v3  # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2742
    .end local v1  # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2  # "i":I
    :cond_4b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 2744
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 2745
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 2747
    :cond_63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 2749
    :try_start_69
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_69 .. :try_end_72} :catch_73

    goto :goto_8e

    .line 2750
    :catch_73
    move-exception v0

    .line 2751
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown input method from prefs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodManagerService"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2752
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 2753
    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    :goto_8e
    goto :goto_92

    .line 2756
    :cond_8f
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 2762
    :goto_92
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 2764
    return-void
.end method

.method public updateKeyboardFromSettingsLocked()V
    .registers 3

    .line 2767
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    .line 2768
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v1, :cond_26

    .line 2770
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2771
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v1, 0x10202ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 2773
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2775
    .end local v0  # "hardKeySwitch":Landroid/widget/Switch;
    :cond_26
    return-void
.end method
