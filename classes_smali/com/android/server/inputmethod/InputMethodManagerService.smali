.class public Lcom/android/server/inputmethod/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field static final SECURE_SUGGESTION_SPANS_MAX_SIZE:I = 0x14

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field static final TIME_TO_RECONNECT:J = 0xbb8L


# instance fields
.field private mAccessibilityRequestingNoSoftKeyboard:Z

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

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

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

.field mIsInteractive:Z

.field private final mIsLowRam:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBindTime:J

.field mLastImeTargetWindow:Landroid/os/IBinder;

.field private mLastSwitchUserId:I

.field private mLastSystemLocales:Landroid/os/LocaleList;

.field private mLineageHardware:Llineageos/hardware/LineageHardwareManager;

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

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field private mSubtypeIds:[I

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13

    .line 1466
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 313
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 324
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 325
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 336
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 352
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 443
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    .line 469
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    .line 555
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 622
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 658
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 660
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 687
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    .line 694
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    .line 766
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    .line 923
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    invoke-direct {v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    .line 1467
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1468
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1469
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1470
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1472
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    .line 1473
    nop

    .line 1474
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1473
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1475
    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1476
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1477
    new-instance v3, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$oxpSIwENeEjKtHbxqUXuaXD0Gn8;

    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$oxpSIwENeEjKtHbxqUXuaXD0Gn8;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    .line 1478
    new-instance v3, Lcom/android/internal/os/HandlerCaller;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-direct {v3, p1, v1, v4, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1484
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1485
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1486
    const-class v3, Landroid/os/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1487
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    invoke-direct {v3, p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    .line 1488
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.software.input_methods"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHasFeature:Z

    .line 1490
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10406bf

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 1491
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0059

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardBehavior:I

    .line 1493
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsLowRam:Z

    .line 1495
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1496
    const-string v3, "android.allowDuringSetup"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1497
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v4, 0x106001c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 1499
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1501
    const v5, 0x10804d4

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1502
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1503
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1504
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1505
    const-string/jumbo v4, "sys"

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1506
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 1508
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1509
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1510
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 1512
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1514
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    .line 1515
    nop

    .line 1517
    :try_start_166
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_170
    .catch Landroid/os/RemoteException; {:try_start_166 .. :try_end_170} :catch_171

    .line 1520
    goto :goto_179

    .line 1518
    :catch_171
    move-exception v1

    .line 1519
    const-string v3, "InputMethodManagerService"

    const-string v4, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1522
    :goto_179
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    .line 1525
    new-instance v1, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1526
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    xor-int/lit8 v10, v3, 0x1

    move-object v5, v1

    move v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1528
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1529
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-static {v1, v0}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1530
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 1532
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/inputmethod/InputMethodManagerService;)Llineageos/hardware/LineageHardwareManager;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLineageHardware:Llineageos/hardware/LineageHardwareManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/inputmethod/InputMethodManagerService;II)V
    .registers 3

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/AlertDialog;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/view/View;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/inputmethod/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 1

    .line 180
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/server/inputmethod/InputMethodManagerService;)[I
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z
    .registers 2

    .line 180
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;
    .registers 2

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;
    .registers 2

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getLastSwitchUserId(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I
    .registers 3

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 2

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;II)V
    .registers 4

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeWindowStatus(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportStartInput(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 1

    .line 180
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchSensitivity()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 4

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V
    .registers 3

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportFullscreenMode(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V
    .registers 3

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideMySoftInput(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V
    .registers 3

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showMySoftInput(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 4

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z
    .registers 2

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToPreviousInputMethod(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z
    .registers 3

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z
    .registers 2

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 1

    .line 180
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchHovering()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .registers 2

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyUserAction(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;)V
    .registers 3

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportPreRendered(Landroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V
    .registers 3

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->applyImeVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/UserManagerInternal;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V
    .registers 2

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .registers 1

    .line 180
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Z)Z
    .registers 3

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private applyImeVisibility(Landroid/os/IBinder;Z)V
    .registers 7

    .line 3638
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3639
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 3640
    monitor-exit v0

    return-void

    .line 3642
    :cond_b
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz p1, :cond_2b

    .line 3643
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xbfe

    .line 3644
    if-eqz p2, :cond_21

    const/4 p2, 0x1

    goto :goto_22

    :cond_21
    const/4 p2, 0x0

    :goto_22
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3643
    invoke-virtual {v1, v2, p2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3646
    :cond_2b
    monitor-exit v0

    .line 3647
    return-void

    .line 3646
    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method private bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1755
    if-eqz p1, :cond_17

    if-nez p2, :cond_5

    goto :goto_17

    .line 1759
    :cond_5
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1760
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1759
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    return p1

    .line 1756
    :cond_17
    :goto_17
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--- bind failed: service = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", conn = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InputMethodManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    const/4 p1, 0x0

    return p1
.end method

.method private calledFromValidUserLocked()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1694
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1695
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1703
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_e

    .line 1704
    return v2

    .line 1706
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne v1, v0, :cond_17

    .line 1707
    return v2

    .line 1709
    :cond_17
    sget-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1710
    return v2

    .line 1718
    :cond_24
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2f

    .line 1725
    return v2

    .line 1728
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- IPC called from background users. Ignore. callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 1729
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1728
    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/4 v0, 0x0

    return v0
.end method

.method private calledWithValidTokenLocked(Landroid/os/IBinder;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1741
    if-eqz p1, :cond_38

    .line 1744
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_36

    .line 1745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to an invalid token. uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1745
    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    const/4 p1, 0x0

    return p1

    .line 1749
    :cond_36
    const/4 p1, 0x1

    return p1

    .line 1742
    :cond_38
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string/jumbo v0, "token must not be null."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 5

    .line 3225
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3226
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    if-eqz p1, :cond_18

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 3227
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v1, p1, :cond_18

    .line 3228
    return v2

    .line 3229
    :cond_18
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz p1, :cond_2d

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 3232
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3229
    invoke-static {v1, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 3233
    return v2

    .line 3235
    :cond_2d
    const/4 p1, 0x0

    return p1
.end method

.method private chooseNewDefaultIMELocked()Z
    .registers 2

    .line 3956
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3957
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 3956
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 3958
    if-eqz v0, :cond_15

    .line 3962
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 3963
    const/4 v0, 0x1

    return v0

    .line 3966
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method static computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I
    .registers 4

    .line 2252
    const/4 v0, 0x0

    if-eqz p0, :cond_10

    const/4 v1, -0x1

    if-ne p0, v1, :cond_7

    goto :goto_10

    .line 2258
    :cond_7
    invoke-interface {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;->displayCanShowIme(I)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    move p0, v0

    :goto_f
    return p0

    .line 2253
    :cond_10
    :goto_10
    return v0
.end method

.method private createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 11

    .line 4532
    if-eqz p1, :cond_ad

    .line 4535
    if-eqz p3, :cond_a4

    .line 4538
    if-eqz p2, :cond_9c

    .line 4541
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 4542
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 4546
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4547
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4548
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 4549
    monitor-exit v0

    return-object v2

    .line 4551
    :cond_20
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v1, p1, :cond_46

    .line 4552
    const-string p2, "InputMethodManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring createInputContentUriToken mCurToken="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4554
    monitor-exit v0

    return-object v2

    .line 4559
    :cond_46
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_74

    .line 4560
    const-string p1, "InputMethodManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring createInputContentUriToken mCurAttribute.packageName="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " packageName="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4562
    monitor-exit v0

    return-object v2

    .line 4565
    :cond_74
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 4567
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 4569
    invoke-static {p2, p1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 4571
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 4578
    new-instance p1, Lcom/android/server/inputmethod/InputContentUriTokenHandler;

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;-><init>(Landroid/net/Uri;ILjava/lang/String;II)V

    monitor-exit v0

    return-object p1

    .line 4580
    :catchall_91
    move-exception p1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_15 .. :try_end_93} :catchall_91

    throw p1

    .line 4543
    :cond_94
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "contentUri must have content scheme"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4539
    :cond_9c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "contentUri"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4536
    :cond_a4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "packageName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4533
    :cond_ad
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "token"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .registers 6

    .line 2363
    if-eqz p1, :cond_28

    .line 2364
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 2366
    :try_start_7
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 2370
    goto :goto_1b

    .line 2367
    :catch_d
    move-exception v0

    .line 2368
    const-string v2, "InputMethodManagerService"

    const-string v3, "Session failed to close due to remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2369
    const/4 v0, 0x0

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2371
    :goto_1b
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2373
    :cond_1d
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_28

    .line 2374
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2375
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    .line 2378
    :cond_28
    return-void
.end method

.method private getActivityViewToScreenMatrixLocked(II)Landroid/graphics/Matrix;
    .registers 6

    .line 2074
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 2075
    return-object v0

    .line 2077
    :cond_4
    nop

    .line 2078
    move-object v1, v0

    .line 2080
    :goto_6
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 2081
    if-nez p1, :cond_11

    .line 2082
    return-object v0

    .line 2084
    :cond_11
    if-nez v1, :cond_1d

    .line 2085
    new-instance v1, Landroid/graphics/Matrix;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_24

    .line 2087
    :cond_1d
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 2089
    :goto_24
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v2

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-ne v2, p2, :cond_2d

    .line 2090
    return-object v1

    .line 2092
    :cond_2d
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object p1

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 2093
    goto :goto_6
.end method

.method private getAppShowFlags()I
    .registers 2

    .line 2033
    nop

    .line 2034
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_7

    .line 2035
    const/4 v0, 0x2

    goto :goto_e

    .line 2036
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v0, :cond_d

    .line 2037
    const/4 v0, 0x1

    goto :goto_e

    .line 2036
    :cond_d
    const/4 v0, 0x0

    .line 2039
    :goto_e
    return v0
.end method

.method private getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 6

    .line 4447
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 4448
    return-object v1

    .line 4450
    :cond_6
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    move-result v0

    .line 4451
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4452
    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_7f

    .line 4455
    :cond_1f
    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v0, :cond_2f

    .line 4456
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 4457
    :cond_2f
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    .line 4458
    const/4 v3, -0x1

    if-ne v0, v3, :cond_70

    .line 4462
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4463
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 4466
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_53

    .line 4467
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_6f

    .line 4468
    :cond_53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_6f

    .line 4469
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const-string v3, "keyboard"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4472
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v2, :cond_6f

    .line 4473
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v0, v1, v1, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4478
    :cond_6f
    :goto_6f
    goto :goto_7c

    .line 4479
    :cond_70
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4482
    :cond_7c
    :goto_7c
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v0

    .line 4453
    :cond_7f
    :goto_7f
    return-object v1
.end method

.method private getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 4492
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4493
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 4494
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method private getEnabledInputMethodListLocked(I)Ljava/util/List;
    .registers 9
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

    .line 1823
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 1824
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 1826
    :cond_f
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1827
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1828
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1830
    invoke-static {v1, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1831
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v1, v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 1833
    new-instance v6, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1834
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, v6

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 1835
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private getEnabledInputMethodSubtypeListLocked(Ljava/lang/String;ZI)Ljava/util/List;
    .registers 11
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

    .line 1865
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p3, v0, :cond_2f

    .line 1867
    if-nez p1, :cond_17

    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz p3, :cond_17

    .line 1868
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    goto :goto_1f

    .line 1870
    :cond_17
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1872
    :goto_1f
    if-nez p1, :cond_26

    .line 1873
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1875
    :cond_26
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1878
    :cond_2f
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1880
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1882
    invoke-static {v1, p3}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1883
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p3, v1, v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 1885
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1886
    if-nez p1, :cond_53

    .line 1887
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1889
    :cond_53
    new-instance v6, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1890
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, v6

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 1891
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p3, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getImeShowFlags()I
    .registers 2

    .line 2022
    nop

    .line 2023
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_7

    .line 2024
    const/4 v0, 0x3

    goto :goto_e

    .line 2026
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-eqz v0, :cond_d

    .line 2027
    const/4 v0, 0x1

    goto :goto_e

    .line 2026
    :cond_d
    const/4 v0, 0x0

    .line 2029
    :goto_e
    return v0
.end method

.method private getInputMethodListAsUser(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 4486
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4487
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 4488
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method private getInputMethodListLocked(I)Ljava/util/List;
    .registers 6
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

    .line 1806
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_10

    .line 1808
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_28

    .line 1810
    :cond_10
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1811
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1812
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1814
    invoke-static {v2, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1815
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    move-object p1, v1

    .line 1818
    :goto_28
    return-object p1
.end method

.method private getLastSwitchUserId(Landroid/os/ShellCommand;)I
    .registers 4

    .line 4882
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4883
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4884
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 4885
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method private static handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I
    .registers 6

    .line 4988
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    .line 4989
    if-nez v0, :cond_9

    .line 4990
    nop

    .line 4998
    const/4 p0, -0x2

    return p0

    .line 4992
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

    move-result v0

    if-eqz v0, :cond_18

    move v1, v4

    goto :goto_2c

    :cond_23
    const-string v2, "-u"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    :goto_2c
    if-eqz v1, :cond_31

    if-eq v1, v4, :cond_31

    .line 4997
    goto :goto_0

    .line 4995
    :cond_31
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private handleSetInteractive(Z)V
    .registers 9

    .line 3942
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3943
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 3944
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    goto :goto_c

    :cond_b
    move p1, v1

    :goto_c
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 3947
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz p1, :cond_39

    .line 3948
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbcc

    .line 3949
    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2a

    move v4, v5

    goto :goto_2b

    :cond_2a
    move v4, v1

    :goto_2b
    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    if-eqz v6, :cond_30

    move v1, v5

    :cond_30
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3948
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3952
    :cond_39
    monitor-exit v0

    .line 3953
    return-void

    .line 3952
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method private handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I
    .registers 19

    .line 4954
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v1

    .line 4955
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 4956
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    .line 4957
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 4958
    iget-object v10, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 4959
    :try_start_15
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4960
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 4959
    invoke-static {v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v11

    .line 4961
    array-length v12, v11

    const/4 v13, 0x0

    move v14, v13

    :goto_26
    if-ge v14, v12, :cond_40

    aget v2, v11, v14

    .line 4962
    move-object/from16 v15, p1

    invoke-direct {v0, v2, v15}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 4963
    goto :goto_3d

    .line 4965
    :cond_33
    move-object/from16 v1, p0

    move-object v3, v7

    move/from16 v4, p2

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)V

    .line 4961
    :goto_3d
    add-int/lit8 v14, v14, 0x1

    goto :goto_26

    .line 4968
    :cond_40
    monitor-exit v10

    .line 4969
    return v13

    .line 4968
    :catchall_42
    move-exception v0

    monitor-exit v10
    :try_end_44
    .catchall {:try_start_15 .. :try_end_44} :catchall_42

    throw v0
.end method

.method private handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)V
    .registers 16

    .line 5005
    nop

    .line 5006
    nop

    .line 5007
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_20

    .line 5008
    if-eqz p3, :cond_1a

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 5009
    move v0, v2

    move v2, v1

    goto/16 :goto_8d

    .line 5011
    :cond_1a
    invoke-direct {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result v0

    goto/16 :goto_8d

    .line 5014
    :cond_20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 5015
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5016
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 5018
    invoke-static {v4, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 5019
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v4, v0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 5021
    new-instance v9, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5022
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    move-object v3, v9

    move-object v6, v0

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 5023
    if-eqz p3, :cond_80

    .line 5024
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 5025
    move v0, v2

    move v2, v1

    goto :goto_8d

    .line 5027
    :cond_57
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 5028
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 5029
    nop

    .line 5030
    goto :goto_79

    .line 5032
    :cond_77
    goto :goto_5f

    .line 5027
    :cond_78
    move v1, v2

    .line 5033
    :goto_79
    if-nez v1, :cond_7e

    .line 5034
    invoke-virtual {v9, p2, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    .line 5044
    :cond_7e
    move v0, v1

    goto :goto_8d

    .line 5038
    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5041
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v1

    .line 5039
    invoke-virtual {v9, v0, v1, p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    .line 5044
    :goto_8d
    if-eqz v2, :cond_ac

    .line 5045
    const-string p3, "Unknown input method "

    invoke-virtual {p5, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5046
    invoke-virtual {p5, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5047
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " cannot be enabled for user #"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d6

    .line 5049
    :cond_ac
    const-string p5, "Input method "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5050
    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5051
    const-string p2, ": "

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5052
    if-ne p3, v0, :cond_be

    const-string p2, "already "

    goto :goto_c1

    :cond_be
    const-string/jumbo p2, "now "

    :goto_c1
    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5053
    if-eqz p3, :cond_c9

    const-string p2, "enabled"

    goto :goto_cb

    :cond_c9
    const-string p2, "disabled"

    :goto_cb
    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5054
    const-string p2, " for user #"

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5055
    invoke-virtual {p4, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 5057
    :goto_d6
    return-void
.end method

.method private handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I
    .registers 14

    .line 4896
    nop

    .line 4897
    nop

    .line 4898
    const/4 v0, 0x0

    const/4 v1, -0x2

    move v2, v0

    move v3, v2

    .line 4900
    :goto_6
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    .line 4901
    const/4 v5, 0x1

    if-nez v4, :cond_7d

    .line 4902
    nop

    .line 4917
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 4918
    :try_start_11
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 4919
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4920
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 4919
    invoke-static {v1, v7, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object p1

    .line 4921
    array-length v1, p1

    move v7, v0

    :goto_25
    if-ge v7, v1, :cond_78

    aget v8, p1, v7

    .line 4922
    if-eqz v2, :cond_30

    .line 4923
    invoke-direct {p0, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(I)Ljava/util/List;

    move-result-object v9

    goto :goto_34

    .line 4924
    :cond_30
    invoke-direct {p0, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object v9

    .line 4925
    :goto_34
    array-length v10, p1

    if-le v10, v5, :cond_44

    .line 4926
    const-string v10, "User #"

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4927
    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 4928
    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4930
    :cond_44
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_48
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_75

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 4931
    if-eqz v3, :cond_5e

    .line 4932
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_74

    .line 4934
    :cond_5e
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4935
    const-string v10, ":"

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4936
    new-instance v10, Lcom/android/server/inputmethod/-$$Lambda$Z2NtIIfW6UZqUgiVBM1fNETGPS8;

    invoke-direct {v10, v4}, Lcom/android/server/inputmethod/-$$Lambda$Z2NtIIfW6UZqUgiVBM1fNETGPS8;-><init>(Ljava/io/PrintWriter;)V

    const-string v11, "  "

    invoke-virtual {v9, v10, v11}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4938
    :goto_74
    goto :goto_48

    .line 4921
    :cond_75
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 4940
    :cond_78
    monitor-exit v6

    .line 4941
    return v0

    .line 4940
    :catchall_7a
    move-exception p1

    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_11 .. :try_end_7c} :catchall_7a

    throw p1

    .line 4904
    :cond_7d
    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x5d4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v7, v8, :cond_b4

    const/16 v8, 0x5e6

    if-eq v7, v8, :cond_aa

    const/16 v8, 0x5e8

    if-eq v7, v8, :cond_a0

    const v8, 0x4f7b216b

    if-eq v7, v8, :cond_96

    :cond_95
    goto :goto_bd

    :cond_96
    const-string v7, "--user"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    move v6, v9

    goto :goto_bd

    :cond_a0
    const-string v7, "-u"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    move v6, v10

    goto :goto_bd

    :cond_aa
    const-string v7, "-s"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    move v6, v5

    goto :goto_bd

    :cond_b4
    const-string v7, "-a"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    move v6, v0

    :goto_bd
    if-eqz v6, :cond_d2

    if-eq v6, v5, :cond_cf

    if-eq v6, v10, :cond_c6

    if-eq v6, v9, :cond_c6

    goto :goto_d4

    .line 4913
    :cond_c6
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_d4

    .line 4909
    :cond_cf
    nop

    .line 4910
    move v3, v5

    goto :goto_d4

    .line 4906
    :cond_d2
    nop

    .line 4907
    move v2, v5

    .line 4916
    :goto_d4
    goto/16 :goto_6
.end method

.method private handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I
    .registers 19

    .line 5127
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 5128
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v2

    .line 5129
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 5130
    :try_start_d
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5131
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 5130
    invoke-static {v2, v4, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v2

    .line 5132
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_1e
    if-ge v6, v4, :cond_10f

    aget v13, v2, v6

    .line 5133
    move-object/from16 v14, p1

    invoke-direct {v0, v13, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 5134
    goto/16 :goto_10a

    .line 5138
    :cond_2c
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    if-ne v13, v7, :cond_89

    .line 5139
    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 5140
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 5142
    invoke-direct {v0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 5144
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8, v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5146
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$SkFx0gCz5ltIh90rm1gl_N-wDWM;

    invoke-direct {v8, v0}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$SkFx0gCz5ltIh90rm1gl_N-wDWM;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5149
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$-9-NV9-J24Jr9m-wcbQnLu0hhjU;

    invoke-direct {v8, v0}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$-9-NV9-J24Jr9m-wcbQnLu0hhjU;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5151
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 5152
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5153
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5154
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    iget-object v10, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5155
    invoke-virtual {v10}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v10

    .line 5152
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 5156
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    .line 5157
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_da

    .line 5159
    :cond_89
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 5160
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5161
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 5163
    invoke-static {v7, v13}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 5164
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8, v13, v7, v10, v15}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 5166
    new-instance v12, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5167
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/16 v16, 0x0

    move-object v7, v12

    move v11, v13

    move-object v5, v12

    move/from16 v12, v16

    invoke-direct/range {v7 .. v12}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 5170
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v15}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    .line 5171
    invoke-static {v8}, Lcom/android/server/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 5174
    const-string v9, ""

    invoke-virtual {v5, v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 5175
    new-instance v9, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$cbEjGgC40X7HsuUviRQkKGegQKg;

    invoke-direct {v9, v5}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$cbEjGgC40X7HsuUviRQkKGegQKg;-><init>(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;)V

    invoke-interface {v8, v9}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 5179
    invoke-virtual {v5, v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5180
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5182
    :goto_da
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reset current and enabled IMEs for user #"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Selected: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5184
    new-instance v5, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$yBUcRNgC_2SdMjBHdbSjb2l9-Rw;

    invoke-direct {v5, v1}, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$yBUcRNgC_2SdMjBHdbSjb2l9-Rw;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v8, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 5132
    :goto_10a
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1e

    .line 5186
    :cond_10f
    monitor-exit v3

    .line 5187
    const/4 v0, 0x0

    return v0

    .line 5186
    :catchall_112
    move-exception v0

    monitor-exit v3
    :try_end_114
    .catchall {:try_start_d .. :try_end_114} :catchall_112

    throw v0
.end method

.method private handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I
    .registers 21

    .line 5067
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v1

    .line 5068
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 5069
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 5070
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 5071
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 5072
    :try_start_15
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5073
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    .line 5072
    invoke-static {v1, v6, v7}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v1

    .line 5074
    array-length v6, v1

    const/4 v8, 0x0

    :goto_25
    if-ge v8, v6, :cond_bb

    aget v15, v1, v8

    .line 5075
    move-object/from16 v14, p1

    invoke-direct {v0, v15, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v9

    if-nez v9, :cond_33

    .line 5076
    goto/16 :goto_b5

    .line 5078
    :cond_33
    nop

    .line 5079
    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    const/4 v13, -0x1

    const/16 v16, 0x1

    if-ne v15, v9, :cond_4c

    .line 5080
    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 5081
    invoke-virtual {v0, v2, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_8e

    .line 5083
    :cond_4b
    goto :goto_92

    .line 5086
    :cond_4c
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 5087
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5088
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 5090
    invoke-static {v10, v15}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 5091
    iget-object v11, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11, v15, v10, v12, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 5093
    new-instance v11, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5094
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const/16 v18, 0x0

    move-object v9, v11

    move-object v7, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v12

    move v0, v13

    move v13, v15

    move/from16 v14, v18

    invoke-direct/range {v9 .. v14}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Landroid/util/ArrayMap;IZ)V

    .line 5096
    move-object/from16 v9, v17

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_91

    .line 5097
    invoke-virtual {v7, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5098
    invoke-virtual {v7, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 5103
    :goto_8e
    const/16 v16, 0x0

    goto :goto_92

    .line 5100
    :cond_91
    nop

    .line 5103
    :goto_92
    if-eqz v16, :cond_a5

    .line 5104
    const-string v0, "Unknown input method "

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5105
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5106
    const-string v0, " cannot be selected for user #"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5107
    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_b5

    .line 5109
    :cond_a5
    const-string v0, "Input method "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5110
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5111
    const-string v0, " selected for user #"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5112
    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->println(I)V

    .line 5074
    :goto_b5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_25

    .line 5115
    :cond_bb
    monitor-exit v5

    .line 5116
    const/4 v0, 0x0

    return v0

    .line 5115
    :catchall_be
    move-exception v0

    monitor-exit v5
    :try_end_c0
    .catchall {:try_start_15 .. :try_end_c0} :catchall_be

    throw v0
.end method

.method private hideMySoftInput(Landroid/os/IBinder;I)V
    .registers 6

    .line 3674
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3675
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 3676
    monitor-exit v0

    return-void

    .line 3678
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1e

    .line 3680
    const/4 p1, 0x0

    :try_start_10
    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_19

    .line 3682
    :try_start_13
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3683
    nop

    .line 3684
    monitor-exit v0

    .line 3685
    return-void

    .line 3682
    :catchall_19
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3684
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method private isKeyguardLocked()Z
    .registers 2

    .line 2526
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

.method private isScreenLocked()Z
    .registers 2

    .line 4142
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_14

    .line 4143
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

    .line 4142
    :goto_15
    return v0
.end method

.method static synthetic lambda$handleShellCommandResetInputMethod$3(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 3

    .line 5175
    nop

    .line 5176
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 5175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$handleShellCommandResetInputMethod$4(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 4

    .line 5184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private notifyUserAction(Landroid/os/IBinder;)V
    .registers 5

    .line 3608
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3609
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v1, p1, :cond_9

    .line 3614
    monitor-exit v0

    return-void

    .line 3616
    :cond_9
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    .line 3617
    if-eqz p1, :cond_1c

    .line 3618
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3620
    :cond_1c
    monitor-exit v0

    .line 3621
    return-void

    .line 3620
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method static queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V
    .registers 11
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

    .line 3972
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 3973
    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    .line 3978
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8080

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 3983
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 3984
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 3986
    const/4 v0, 0x0

    :goto_27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_97

    .line 3987
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 3988
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3989
    invoke-static {v1}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v3

    .line 3990
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "InputMethodManagerService"

    if-nez v2, :cond_62

    .line 3991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping input method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": it does not require the permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3994
    goto :goto_94

    .line 4000
    :cond_62
    :try_start_62
    new-instance v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4001
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v2, p0, v1, v4}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 4002
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 4003
    goto :goto_94

    .line 4005
    :cond_74
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4006
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7e} :catch_7f

    .line 4012
    goto :goto_94

    .line 4010
    :catch_7f
    move-exception v1

    .line 4011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load input method "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3986
    :goto_94
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 4014
    :cond_97
    return-void
.end method

.method private reportFullscreenMode(Landroid/os/IBinder;Z)V
    .registers 7

    .line 4585
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4586
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 4587
    monitor-exit v0

    return-void

    .line 4589
    :cond_b
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz p1, :cond_2d

    .line 4590
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 4591
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xbe5

    .line 4592
    if-eqz p2, :cond_23

    const/4 p2, 0x1

    goto :goto_24

    :cond_23
    const/4 p2, 0x0

    :goto_24
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4591
    invoke-virtual {v1, v2, p2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4594
    :cond_2d
    monitor-exit v0

    .line 4595
    return-void

    .line 4594
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method private reportPreRendered(Landroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;)V
    .registers 7

    .line 3625
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3626
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 3627
    monitor-exit v0

    return-void

    .line 3629
    :cond_b
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz p1, :cond_26

    .line 3630
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xbf4

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3633
    :cond_26
    monitor-exit v0

    .line 3634
    return-void

    .line 3633
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method private reportStartInput(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5

    .line 2570
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2571
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2572
    monitor-exit v0

    return-void

    .line 2574
    :cond_b
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    .line 2575
    if-eqz p2, :cond_1e

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    if-eq v1, p2, :cond_1e

    .line 2576
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodTargetWindow(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 2578
    :cond_1e
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 2579
    monitor-exit v0

    .line 2580
    return-void

    .line 2579
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .registers 4

    .line 1536
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1537
    return-void

    .line 1539
    :cond_13
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1540
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 1539
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1541
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1542
    const-string p1, "InputMethodManagerService"

    const-string v0, "No default found"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    return-void

    .line 1545
    :cond_2b
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1549
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 1550
    return-void
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .registers 6

    .line 4415
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4416
    nop

    .line 4418
    if-eqz v0, :cond_3a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 4419
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4420
    if-eqz p1, :cond_3a

    .line 4422
    nop

    .line 4423
    :try_start_1a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4422
    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p1
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_22} :catch_23

    .line 4426
    goto :goto_3b

    .line 4424
    :catch_23
    move-exception v1

    .line 4425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HashCode for subtype looks broken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4429
    :cond_3a
    const/4 p1, -0x1

    :goto_3b
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 4430
    return-void
.end method

.method private setImeWindowStatus(Landroid/os/IBinder;II)V
    .registers 8

    .line 2532
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v0

    .line 2534
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2535
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2536
    monitor-exit v1

    return-void

    .line 2542
    :cond_11
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eq v2, v0, :cond_1b

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eqz v0, :cond_1b

    .line 2544
    monitor-exit v1

    return-void

    .line 2546
    :cond_1b
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 2547
    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 2548
    invoke-direct {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2549
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_41

    .line 2552
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p3, v2, :cond_35

    if-eq p3, v1, :cond_32

    .line 2561
    and-int/lit8 p3, p2, 0x2

    if-eqz p3, :cond_30

    move p3, v2

    goto :goto_37

    :cond_30
    move p3, v0

    goto :goto_37

    .line 2554
    :cond_32
    nop

    .line 2555
    move p3, v2

    goto :goto_37

    .line 2557
    :cond_35
    nop

    .line 2558
    move p3, v0

    .line 2564
    :goto_37
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    and-int/2addr p2, v1

    if-eqz p2, :cond_3d

    move v0, v2

    :cond_3d
    invoke-virtual {v3, p1, v0, p3}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodWindowStatus(Landroid/os/IBinder;ZZ)V

    .line 2566
    return-void

    .line 2549
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method

.method private setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 3284
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3285
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3286
    monitor-exit v0

    return-void

    .line 3288
    :cond_b
    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3289
    monitor-exit v0

    .line 3290
    return-void

    .line 3289
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method private setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6

    .line 3295
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3296
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3297
    monitor-exit v0

    return-void

    .line 3299
    :cond_b
    if-eqz p3, :cond_21

    .line 3300
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    .line 3301
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 3302
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p3

    .line 3301
    invoke-static {v1, p3}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p3

    .line 3300
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_24

    .line 3304
    :cond_21
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3306
    :goto_24
    monitor-exit v0

    .line 3307
    return-void

    .line 3306
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p1
.end method

.method private setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .registers 7

    .line 4354
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4355
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 4357
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2c

    .line 4358
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 4359
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4362
    return v1

    .line 4364
    :cond_25
    goto :goto_e

    .line 4365
    :cond_26
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p2, p1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    .line 4367
    return v2

    .line 4369
    :cond_2c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4370
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, p2, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_58

    .line 4373
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p2

    .line 4374
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result p1

    if-nez p1, :cond_57

    .line 4375
    const-string p1, "InputMethodManagerService"

    const-string p2, "Can\'t find new IME, unsetting the current input method."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4376
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 4379
    :cond_57
    return v1

    .line 4383
    :cond_58
    return v2
.end method

.method private setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 6

    .line 3650
    if-nez p1, :cond_15

    .line 3651
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_3c

    .line 3654
    :cond_d
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3658
    :cond_15
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_3c

    .line 3659
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring setInputMethod of uid "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " token: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InputMethodManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    return-void

    .line 3664
    :cond_3c
    :goto_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3666
    :try_start_40
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_48

    .line 3668
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3669
    nop

    .line 3670
    return-void

    .line 3668
    :catchall_48
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .registers 7

    .line 4390
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4393
    const/4 v0, -0x1

    if-eqz p1, :cond_31

    if-gez p2, :cond_f

    goto :goto_31

    .line 4397
    :cond_f
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-ge p2, v1, :cond_25

    .line 4398
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p2

    .line 4399
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 4400
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4401
    goto :goto_39

    .line 4402
    :cond_25
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p2, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 4404
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_39

    .line 4394
    :cond_31
    :goto_31
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p2, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 4395
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4408
    :goto_39
    if-nez p3, :cond_49

    .line 4410
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    :cond_44
    const-string p1, ""

    :goto_46
    invoke-virtual {p2, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 4412
    :cond_49
    return-void
.end method

.method private shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .registers 6

    .line 3413
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3414
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_c

    .line 3415
    monitor-exit v0

    return v1

    .line 3417
    :cond_c
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 3418
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3417
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p1

    .line 3419
    if-nez p1, :cond_22

    .line 3420
    monitor-exit v0

    return v1

    .line 3422
    :cond_22
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 3423
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

.method private shouldShowImeSwitcherLocked(I)Z
    .registers 15

    .line 2462
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2463
    :cond_6
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    return v1

    .line 2464
    :cond_b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1e

    .line 2465
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1e

    return v1

    .line 2466
    :cond_1e
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_c6

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_28

    goto/16 :goto_c6

    .line 2470
    :cond_28
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_37

    .line 2471
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardBehavior:I

    if-nez p1, :cond_3b

    .line 2476
    return v3

    .line 2478
    :cond_37
    and-int/2addr p1, v2

    if-nez p1, :cond_3b

    .line 2479
    return v1

    .line 2482
    :cond_3b
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p1

    .line 2483
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2484
    if-le v0, v2, :cond_48

    return v3

    .line 2485
    :cond_48
    if-ge v0, v3, :cond_4b

    return v1

    .line 2486
    :cond_4b
    nop

    .line 2487
    nop

    .line 2488
    nop

    .line 2489
    nop

    .line 2490
    const/4 v2, 0x0

    move v4, v1

    move v5, v4

    move-object v6, v2

    move-object v7, v6

    move v2, v5

    :goto_55
    if-ge v2, v0, :cond_92

    .line 2491
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 2492
    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2493
    invoke-virtual {v9, v10, v8, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 2494
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 2495
    if-nez v9, :cond_6e

    .line 2496
    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    .line 2498
    :cond_6e
    move-object v10, v7

    move-object v7, v6

    move v6, v5

    move v5, v4

    move v4, v1

    :goto_73
    if-ge v4, v9, :cond_8b

    .line 2499
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2500
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-nez v12, :cond_85

    .line 2501
    add-int/lit8 v5, v5, 0x1

    .line 2502
    move-object v7, v11

    goto :goto_88

    .line 2504
    :cond_85
    add-int/lit8 v6, v6, 0x1

    .line 2505
    move-object v10, v11

    .line 2498
    :goto_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    :cond_8b
    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v10

    .line 2490
    :goto_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 2510
    :cond_92
    if-gt v4, v3, :cond_c5

    if-le v5, v3, :cond_97

    goto :goto_c5

    .line 2512
    :cond_97
    if-ne v4, v3, :cond_c4

    if-ne v5, v3, :cond_c4

    .line 2513
    if-eqz v6, :cond_c3

    if-eqz v7, :cond_c3

    .line 2514
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b9

    .line 2515
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result p1

    if-nez p1, :cond_b9

    .line 2516
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result p1

    if-eqz p1, :cond_c3

    :cond_b9
    nop

    .line 2517
    const-string p1, "TrySuppressingImeSwitcher"

    invoke-virtual {v6, p1}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 2518
    return v1

    .line 2520
    :cond_c3
    return v3

    .line 2522
    :cond_c4
    return v1

    .line 2511
    :cond_c5
    :goto_c5
    return v3

    .line 2468
    :cond_c6
    :goto_c6
    return v1
.end method

.method private showConfigureInputMethods()V
    .registers 5

    .line 4134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4135
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4138
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4139
    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 5

    .line 4119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4120
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 4124
    const-string v1, "input_method_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4127
    :cond_17
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 4128
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    .line 4129
    monitor-exit p1
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_2c

    .line 4130
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4131
    return-void

    .line 4129
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private showInputMethodMenu(ZI)V
    .registers 14

    .line 4149
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isScreenLocked()Z

    move-result v0

    .line 4151
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 4152
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    .line 4155
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 4156
    :try_start_13
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 4157
    invoke-virtual {v4, p1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;

    move-result-object p1

    .line 4159
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4160
    monitor-exit v3

    return-void

    .line 4163
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 4165
    const/4 v0, -0x1

    if-ne v2, v0, :cond_40

    .line 4166
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 4167
    if-eqz v4, :cond_40

    .line 4168
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4169
    nop

    .line 4170
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    .line 4169
    invoke-static {v2, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v2

    .line 4174
    :cond_40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 4175
    new-array v5, v4, [Landroid/view/inputmethod/InputMethodInfo;

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4176
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I

    .line 4177
    nop

    .line 4178
    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_50
    if-ge v6, v4, :cond_82

    .line 4179
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4180
    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    iget-object v10, v8, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    aput-object v10, v9, v6

    .line 4181
    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I

    iget v8, v8, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    aput v8, v9, v6

    .line 4182
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 4183
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubtypeIds:[I

    aget v8, v8, v6

    .line 4184
    if-eq v8, v0, :cond_7e

    if-ne v2, v0, :cond_7c

    if-eqz v8, :cond_7e

    :cond_7c
    if-ne v8, v2, :cond_7f

    .line 4187
    :cond_7e
    move v7, v6

    .line 4178
    :cond_7f
    add-int/lit8 v6, v6, 0x1

    goto :goto_50

    .line 4192
    :cond_82
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 4193
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 4194
    if-nez p2, :cond_8f

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object p2

    goto :goto_93

    .line 4195
    :cond_8f
    invoke-virtual {v0, p2}, Landroid/app/ActivityThread;->createSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object p2

    :goto_93
    const v0, 0x1030223

    invoke-direct {v1, p2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4198
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 4199
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4206
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 4207
    sget-object v0, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v1, 0x101005d

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4210
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4212
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4214
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 4216
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4217
    const v1, 0x1090082

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4219
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4222
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 4223
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v1, 0x10202ac

    .line 4224
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4225
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 4226
    goto :goto_f1

    :cond_ef
    const/16 v5, 0x8

    .line 4225
    :goto_f1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4227
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v1, 0x10202ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 4229
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4230
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4240
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    const v1, 0x1090083

    invoke-direct {v0, p2, v1, p1, v7}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    .line 4242
    new-instance p1, Lcom/android/server/inputmethod/InputMethodManagerService$5;

    invoke-direct {p1, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;)V

    .line 4264
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2, v0, v7, p1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4266
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 4267
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4268
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 4269
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 4270
    const/16 v0, 0x7dc

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 4274
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    iput-object v0, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4275
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4276
    const-string v0, "Select input method"

    invoke-virtual {p2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 4277
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4278
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 4279
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 4280
    monitor-exit v3

    .line 4281
    return-void

    .line 4280
    :catchall_15b
    move-exception p1

    monitor-exit v3
    :try_end_15d
    .catchall {:try_start_13 .. :try_end_15d} :catchall_15b

    throw p1
.end method

.method private showMySoftInput(Landroid/os/IBinder;I)V
    .registers 6

    .line 3689
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3690
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 3691
    monitor-exit v0

    return-void

    .line 3693
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1e

    .line 3695
    const/4 p1, 0x0

    :try_start_10
    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_19

    .line 3697
    :try_start_13
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3698
    nop

    .line 3699
    monitor-exit v0

    .line 3700
    return-void

    .line 3697
    :catchall_19
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3699
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method private startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;III)Lcom/android/internal/view/InputBindResult;
    .registers 27

    .line 3035
    move-object v7, p0

    move-object/from16 v0, p3

    move/from16 v8, p4

    move/from16 v1, p5

    move/from16 v2, p10

    move/from16 v3, p11

    iget-object v4, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result v4

    .line 3037
    iget-object v5, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3038
    if-eqz v9, :cond_1b9

    .line 3041
    iget v5, v9, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    const-string v6, "InputMethodManagerService"

    if-eq v5, v4, :cond_48

    .line 3042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startInputOrWindowGainedFocusInternal: display ID mismatch. from client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    sget-object v0, Lcom/android/internal/view/InputBindResult;->DISPLAY_ID_MISMATCH:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3048
    :cond_48
    iget-object v4, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v5, v9, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v10, v9, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v11, v9, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v4, v5, v10, v11}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result v4

    if-nez v4, :cond_59

    .line 3059
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3063
    :cond_59
    iget-object v4, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v10, 0x0

    if-nez v4, :cond_73

    .line 3064
    const-string v0, "A background user is requesting window. Hiding IME."

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    const-string v0, "If you need to impersonate a foreground user/profile from a background user, use EditorInfo.targetInputMethodUser with INTERACT_ACROSS_USERS_FULL permission."

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    invoke-virtual {p0, v5, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 3069
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3072
    :cond_73
    sget-boolean v4, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-eqz v4, :cond_82

    iget-object v4, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    if-eq v3, v4, :cond_82

    .line 3073
    invoke-direct {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchUserLocked(I)V

    .line 3081
    :cond_82
    sget-object v3, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_PRE_RENDER_IME_VIEWS:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->value()Z

    move-result v3

    const/4 v11, 0x1

    if-eqz v3, :cond_91

    iget-boolean v3, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsLowRam:Z

    if-nez v3, :cond_91

    move v3, v11

    goto :goto_92

    :cond_91
    move v3, v5

    :goto_92
    iput-boolean v3, v9, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->shouldPreRenderIme:Z

    .line 3083
    iget-object v3, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    if-ne v3, v0, :cond_c4

    .line 3088
    if-eqz p7, :cond_ab

    .line 3089
    move-object v0, p0

    move-object v1, v9

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0

    .line 3092
    :cond_ab
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object p0, v0

    move/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v0

    .line 3096
    :cond_c4
    iput-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 3097
    iput v1, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 3098
    iput-object v9, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3107
    and-int/lit16 v0, v1, 0xf0

    const/16 v3, 0x10

    const/4 v4, 0x3

    if-eq v0, v3, :cond_e0

    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 3110
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v0

    if-eqz v0, :cond_de

    goto :goto_e0

    :cond_de
    move v0, v5

    goto :goto_e1

    :cond_e0
    :goto_e0
    move v0, v11

    .line 3112
    :goto_e1
    and-int/lit8 v12, v8, 0x2

    if-eqz v12, :cond_e7

    move v3, v11

    goto :goto_e8

    :cond_e7
    move v3, v5

    .line 3118
    :goto_e8
    nop

    .line 3120
    nop

    .line 3121
    and-int/lit8 v13, v1, 0xf

    const/4 v14, 0x2

    if-eqz v13, :cond_15a

    if-eq v13, v11, :cond_159

    if-eq v13, v14, :cond_151

    if-eq v13, v4, :cond_14d

    const/4 v0, 0x4

    if-eq v13, v0, :cond_124

    const/4 v0, 0x5

    if-eq v13, v0, :cond_fd

    goto/16 :goto_192

    .line 3191
    :cond_fd
    invoke-static {v2, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 3193
    if-eqz p7, :cond_117

    .line 3194
    move-object v0, p0

    move-object v1, v9

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .line 3196
    move v5, v11

    goto :goto_118

    .line 3193
    :cond_117
    move-object v0, v10

    .line 3198
    :goto_118
    invoke-virtual {p0, v11, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_193

    .line 3200
    :cond_11d
    const-string v0, "SOFT_INPUT_STATE_ALWAYS_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_192

    .line 3172
    :cond_124
    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_192

    .line 3174
    invoke-static {v2, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 3176
    if-eqz p7, :cond_142

    .line 3177
    move-object v0, p0

    move-object v1, v9

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .line 3179
    move v5, v11

    goto :goto_143

    .line 3176
    :cond_142
    move-object v0, v10

    .line 3181
    :goto_143
    invoke-virtual {p0, v11, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_193

    .line 3183
    :cond_147
    const-string v0, "SOFT_INPUT_STATE_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_192

    .line 3169
    :cond_14d
    invoke-virtual {p0, v5, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 3170
    goto :goto_192

    .line 3162
    :cond_151
    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_192

    .line 3164
    invoke-virtual {p0, v5, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_192

    .line 3160
    :cond_159
    goto :goto_192

    .line 3123
    :cond_15a
    if-eqz v3, :cond_180

    if-nez v0, :cond_15f

    goto :goto_180

    .line 3140
    :cond_15f
    if-eqz v3, :cond_192

    if-eqz v0, :cond_192

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_192

    .line 3150
    if-eqz p7, :cond_17b

    .line 3151
    move-object v0, p0

    move-object v1, v9

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .line 3153
    move v5, v11

    goto :goto_17c

    .line 3150
    :cond_17b
    move-object v0, v10

    .line 3155
    :goto_17c
    invoke-virtual {p0, v11, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_193

    .line 3124
    :cond_180
    :goto_180
    invoke-static/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-eqz v0, :cond_192

    .line 3129
    invoke-virtual {p0, v14, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 3136
    iget v0, v9, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v1, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-eq v0, v1, :cond_192

    .line 3137
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 3207
    :cond_192
    :goto_192
    move-object v0, v10

    :goto_193
    if-nez v5, :cond_1b8

    .line 3208
    if-eqz p7, :cond_1b6

    .line 3209
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$DebugFlag;->value()Z

    move-result v0

    if-eqz v0, :cond_1a5

    if-eqz v12, :cond_1a2

    goto :goto_1a5

    .line 3214
    :cond_1a2
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NO_EDITOR:Lcom/android/internal/view/InputBindResult;

    goto :goto_1b8

    .line 3211
    :cond_1a5
    :goto_1a5
    move-object v0, p0

    move-object v1, v9

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    goto :goto_1b8

    .line 3217
    :cond_1b6
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;

    .line 3220
    :cond_1b8
    :goto_1b8
    return-object v0

    .line 3039
    :cond_1b9
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

.method private switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .registers 8

    .line 3396
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3397
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 3398
    monitor-exit v0

    return v2

    .line 3400
    :cond_c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 3401
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3400
    invoke-virtual {v1, p2, v3, v4}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p2

    .line 3402
    if-nez p2, :cond_22

    .line 3403
    monitor-exit v0

    return v2

    .line 3405
    :cond_22
    iget-object v1, p2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget p2, p2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3407
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 3408
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method

.method private switchToPreviousInputMethod(Landroid/os/IBinder;)Z
    .registers 16

    .line 3324
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3325
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 3326
    monitor-exit v0

    return v2

    .line 3328
    :cond_c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    .line 3330
    const/4 v3, 0x0

    if-eqz v1, :cond_20

    .line 3331
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    goto :goto_21

    .line 3333
    :cond_20
    move-object v4, v3

    .line 3335
    :goto_21
    nop

    .line 3336
    nop

    .line 3337
    const/4 v5, -0x1

    if-eqz v1, :cond_53

    if-eqz v4, :cond_53

    .line 3338
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 3339
    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3340
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v8, :cond_40

    move v8, v5

    goto :goto_46

    .line 3341
    :cond_40
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v8

    .line 3344
    :goto_46
    if-eqz v6, :cond_4a

    if-eq v7, v8, :cond_53

    .line 3345
    :cond_4a
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 3346
    invoke-static {v4, v7}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v5

    .line 3350
    :cond_53
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_ca

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3351
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v1

    if-nez v1, :cond_ca

    .line 3355
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 3356
    if-eqz v1, :cond_ca

    .line 3357
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 3358
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v7, :cond_7f

    .line 3359
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_85

    .line 3360
    :cond_7f
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    .line 3361
    :goto_85
    move-object v8, v3

    move v3, v2

    :goto_87
    if-ge v3, v6, :cond_c9

    .line 3362
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 3363
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v10

    if-lez v10, :cond_c6

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v10

    if-eqz v10, :cond_c6

    .line 3364
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 3366
    invoke-static {v9}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v11

    const-string v12, "keyboard"

    .line 3365
    invoke-static {v10, v11, v12, v7, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 3368
    if-eqz v10, :cond_c6

    .line 3369
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 3370
    nop

    .line 3371
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v8

    .line 3370
    invoke-static {v9, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v8

    .line 3372
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c3

    .line 3373
    move-object v3, v5

    move v5, v8

    goto :goto_ca

    .line 3372
    :cond_c3
    move v13, v8

    move-object v8, v5

    move v5, v13

    .line 3361
    :cond_c6
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    :cond_c9
    move-object v3, v8

    .line 3381
    :cond_ca
    :goto_ca
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d5

    .line 3386
    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3387
    monitor-exit v0

    return v4

    .line 3389
    :cond_d5
    monitor-exit v0

    return v2

    .line 3391
    :catchall_d7
    move-exception p1

    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_3 .. :try_end_d9} :catchall_d7

    throw p1
.end method

.method private switchUserLocked(I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1558
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1562
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1563
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

    .line 1564
    :goto_17
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1565
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1567
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(Landroid/util/ArrayMap;I)V

    .line 1568
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v0

    .line 1578
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1579
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1582
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-eqz v3, :cond_5d

    .line 1583
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1584
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 1585
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1586
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1589
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1591
    :cond_5a
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1594
    :cond_5d
    if-eqz v0, :cond_70

    .line 1595
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1596
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1597
    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 1595
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1600
    :cond_70
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchHovering()V

    .line 1601
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchSensitivity()V

    .line 1606
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSwitchUserId:I

    .line 1607
    return-void
.end method

.method private updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 15

    .line 2425
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2426
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 2427
    monitor-exit v0

    return-void

    .line 2429
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_67

    .line 2431
    const/4 p1, 0x0

    if-nez p3, :cond_20

    .line 2433
    :try_start_12
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz p2, :cond_61

    .line 2434
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    goto :goto_61

    .line 2456
    :catchall_1e
    move-exception p1

    goto :goto_5d

    .line 2436
    :cond_20
    if-eqz p2, :cond_61

    .line 2438
    nop

    .line 2441
    const/4 v3, 0x0

    :try_start_24
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2442
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2444
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v6

    .line 2443
    invoke-interface {v5, p2, p1, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 2442
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_3a} :catch_3b
    .catchall {:try_start_24 .. :try_end_3a} :catchall_1e

    .line 2447
    goto :goto_3d

    .line 2445
    :catch_3b
    move-exception p1

    move-object p1, v3

    .line 2448
    :goto_3d
    :try_start_3d
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v4, :cond_61

    .line 2449
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v9, 0x0

    .line 2450
    if-eqz p1, :cond_4d

    .line 2451
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4e

    :cond_4d
    nop

    :goto_4e
    move-object v10, v3

    .line 2449
    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2452
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_5c
    .catchall {:try_start_3d .. :try_end_5c} :catchall_1e

    goto :goto_61

    .line 2456
    :goto_5d
    :try_start_5d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_61
    :goto_61
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2457
    nop

    .line 2458
    monitor-exit v0

    .line 2459
    return-void

    .line 2458
    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_67

    throw p1
.end method

.method private updateSystemUiLocked(II)V
    .registers 12

    .line 2584
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v0, :cond_5

    .line 2585
    return-void

    .line 2596
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2599
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    :try_start_c
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClientInKeyguard:Z

    if-nez v3, :cond_18

    .line 2600
    move v6, v2

    goto :goto_19

    .line 2603
    :cond_18
    move v6, p1

    :goto_19
    invoke-direct {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    move-result p1

    .line 2604
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v3, :cond_2c

    .line 2605
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    move v7, p2

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 2608
    :cond_2c
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodInfo;

    .line 2609
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p2, :cond_7c

    if-eqz p1, :cond_7c

    .line 2611
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v5, 0x1040661

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2613
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v5, p2, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2615
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 2616
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 2617
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_5d
    .catchall {:try_start_c .. :try_end_5d} :catchall_92

    .line 2620
    :try_start_5d
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p1, :cond_79

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 2621
    invoke-interface {p1, v2}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result p1

    if-nez p1, :cond_79

    .line 2625
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 2627
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2625
    invoke-virtual {p1, v4, v3, p2, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2628
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_79} :catch_7a
    .catchall {:try_start_5d .. :try_end_79} :catchall_92

    .line 2631
    :cond_79
    goto :goto_7b

    .line 2630
    :catch_7a
    move-exception p1

    .line 2632
    :goto_7b
    goto :goto_8d

    .line 2633
    :cond_7c
    :try_start_7c
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z

    if-eqz p1, :cond_8d

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p1, :cond_8d

    .line 2637
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v4, v3, p2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2639
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationShown:Z
    :try_end_8d
    .catchall {:try_start_7c .. :try_end_8d} :catchall_92

    .line 2643
    :cond_8d
    :goto_8d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2644
    nop

    .line 2645
    return-void

    .line 2643
    :catchall_92
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private updateTouchHovering()V
    .registers 5

    .line 2716
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLineageHardware:Llineageos/hardware/LineageHardwareManager;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Llineageos/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2717
    return-void

    .line 2719
    :cond_b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "feature_touch_hovering"

    invoke-static {v0, v3, v2}, Llineageos/providers/LineageSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1c

    move v2, v3

    .line 2721
    :cond_1c
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLineageHardware:Llineageos/hardware/LineageHardwareManager;

    invoke-virtual {v0, v1, v2}, Llineageos/hardware/LineageHardwareManager;->set(IZ)Z

    .line 2722
    return-void
.end method

.method private updateTouchSensitivity()V
    .registers 5

    .line 2707
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLineageHardware:Llineageos/hardware/LineageHardwareManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Llineageos/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2708
    return-void

    .line 2710
    :cond_b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "high_touch_sensitivity_enable"

    invoke-static {v0, v3, v2}, Llineageos/providers/LineageSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1c

    move v2, v3

    .line 2712
    :cond_1c
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLineageHardware:Llineageos/hardware/LineageHardwareManager;

    invoke-virtual {v0, v1, v2}, Llineageos/hardware/LineageHardwareManager;->set(IZ)Z

    .line 2713
    return-void
.end method

.method private userHasDebugPriv(ILandroid/os/ShellCommand;)Z
    .registers 6

    .line 5197
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 5198
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 5197
    const-string/jumbo v2, "no_debugging_features"

    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5199
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is restricted with DISALLOW_DEBUGGING_FEATURES."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5201
    const/4 p1, 0x0

    return p1

    .line 5203
    :cond_2e
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;I)V
    .registers 15

    .line 1921
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1922
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1923
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 1925
    :try_start_b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1926
    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_5a

    .line 1927
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 1928
    iget v6, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    if-ne v6, v3, :cond_57

    iget v6, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    if-ne v6, v4, :cond_57

    iget v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-eq v5, p3, :cond_2a

    goto :goto_57

    .line 1930
    :cond_2a
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "uid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/pid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/displayId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is already registered."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1926
    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1934
    :cond_5a
    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;

    invoke-direct {v6, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_5f
    .catchall {:try_start_b .. :try_end_5f} :catchall_82

    .line 1936
    :try_start_5f
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v6, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_66} :catch_7b
    .catchall {:try_start_5f .. :try_end_66} :catchall_82

    .line 1939
    nop

    .line 1950
    :try_start_67
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    new-instance v10, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;-><init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;IIILcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;)V

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    monitor-exit v7

    .line 1953
    return-void

    .line 1937
    :catch_7b
    move-exception p1

    .line 1938
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1952
    :catchall_82
    move-exception p1

    monitor-exit v7
    :try_end_84
    .catchall {:try_start_67 .. :try_end_84} :catchall_82

    throw p1
.end method

.method attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;
    .registers 25
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 2045
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1a

    .line 2046
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x3f2

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2048
    iput-boolean v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2051
    :cond_1a
    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    .line 2052
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v10

    iget-object v11, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v12, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    xor-int/lit8 v15, p2, 0x1

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    .line 2054
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    iget v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    move-object v9, v1

    move/from16 v14, p1

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-direct/range {v9 .. v21}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;-><init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V

    .line 2056
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v3, v8, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    invoke-virtual {v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->addEntry(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V

    .line 2059
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2060
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x7d0

    iget v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContextMissingMethods:I

    .line 2061
    xor-int/lit8 v7, p2, 0x1

    iget-object v10, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v11, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 2060
    move-object v9, v1

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOOOO(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2063
    iget-boolean v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_85

    .line 2065
    invoke-direct/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getAppShowFlags()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 2067
    :cond_85
    new-instance v2, Lcom/android/internal/view/InputBindResult;

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2068
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_94

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v3

    :cond_94
    move-object v7, v3

    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    iget-object v10, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    .line 2067
    return-object v2
.end method

.method buildInputMethodListLocked(Z)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 4022
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const-string v1, "InputMethodManagerService"

    if-nez v0, :cond_c

    .line 4023
    const-string p1, "buildInputMethodListLocked is not allowed until system is ready"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    return-void

    .line 4026
    :cond_c
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 4027
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearKnownImePackageNamesLocked()V

    .line 4029
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILandroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/util/ArrayList;)V

    .line 4039
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4040
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.view.InputMethod"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x200

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4042
    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    .line 4040
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 4043
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 4044
    const/4 v4, 0x0

    move v5, v4

    :goto_47
    if-ge v5, v3, :cond_65

    .line 4045
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 4046
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v8, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 4047
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->addKnownImePackageNameLocked(Ljava/lang/String;)V

    .line 4044
    :cond_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 4052
    :cond_65
    nop

    .line 4054
    if-nez p1, :cond_a5

    .line 4055
    nop

    .line 4056
    nop

    .line 4057
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 4058
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 4059
    move v5, v4

    move v6, v5

    :goto_76
    if-ge v5, v3, :cond_95

    .line 4060
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 4061
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 4062
    nop

    .line 4063
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v6

    if-nez v6, :cond_91

    .line 4064
    nop

    .line 4065
    move v0, v2

    move v6, v0

    goto :goto_96

    .line 4063
    :cond_91
    move v6, v2

    .line 4059
    :cond_92
    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    :cond_95
    move v0, v4

    .line 4069
    :goto_96
    if-nez v6, :cond_a1

    .line 4073
    nop

    .line 4074
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    move p1, v2

    move v0, v4

    goto :goto_a6

    .line 4075
    :cond_a1
    if-nez v0, :cond_a5

    .line 4079
    move v0, v2

    goto :goto_a6

    .line 4083
    :cond_a5
    move v0, v4

    :goto_a6
    if-nez p1, :cond_aa

    if-eqz v0, :cond_c9

    .line 4084
    :cond_aa
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 4085
    invoke-static {p1, v3, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 4087
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4088
    nop

    :goto_b7
    if-ge v4, v0, :cond_c9

    .line 4089
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4093
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 4088
    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 4097
    :cond_c9
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p1

    .line 4098
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ef

    .line 4099
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    .line 4100
    const-string p1, "Default IME is uninstalled. Choose new default IME."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4101
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result p1

    if-eqz p1, :cond_ef

    .line 4102
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    goto :goto_ef

    .line 4106
    :cond_ec
    invoke-direct {p0, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 4113
    :cond_ef
    :goto_ef
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 4114
    return-void
.end method

.method clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .registers 3

    .line 2357
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 2358
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2359
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2360
    return-void
.end method

.method clearCurMethodLocked()V
    .registers 5

    .line 2381
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 2382
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2383
    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_1c

    .line 2384
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2383
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2387
    :cond_1c
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 2388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2389
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2391
    :cond_26
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_2f

    .line 2392
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2394
    :cond_2f
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 2395
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 4599
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 4605
    :cond_b
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4607
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 4608
    :try_start_13
    const-string v2, "Current Input Method Manager state:"

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4609
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Input Methods: mMethodMapUpdateCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMapUpdateCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4611
    const/4 v3, 0x0

    move v4, v3

    :goto_36
    if-ge v4, v2, :cond_61

    .line 4612
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 4613
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  InputMethod #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4614
    const-string v6, "    "

    invoke-virtual {v5, v0, v6}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4611
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 4616
    :cond_61
    const-string v2, "  Clients:"

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4617
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 4618
    nop

    :goto_6d
    if-ge v3, v2, :cond_eb

    .line 4619
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4621
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4622
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    inputContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4623
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    sessionRequested="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4624
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    curSession="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4618
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 4626
    :cond_eb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCurMethodId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4627
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mCurClient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mCurSeq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mCurFocusedWindow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " softInputMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 4631
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4629
    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4633
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 4634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mHaveConnection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mBoundToMethod="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mVisibleBound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4636
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurTokenDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4638
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurIntent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4639
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 4640
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurMethod="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4641
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mEnabledSession="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4642
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mShowRequested="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mShowExplicitlyRequested="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mShowForced="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mInputShown="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4646
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mInFullscreenMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4647
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mSystemReady="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mInteractive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4648
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mSettingsObserver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4649
    const-string v5, "  mSwitchingController:"

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4650
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v5, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    .line 4651
    const-string v5, "  mSettings:"

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4652
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v6, "    "

    invoke-virtual {v5, v0, v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4654
    const-string v5, "  mStartInputHistory:"

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4655
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;

    const-string v6, "   "

    invoke-virtual {v5, p2, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4656
    monitor-exit v1
    :try_end_298
    .catchall {:try_start_13 .. :try_end_298} :catchall_32f

    .line 4658
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4659
    if-eqz v2, :cond_2c2

    .line 4660
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4662
    :try_start_2a2
    iget-object v1, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2ab
    .catch Ljava/io/IOException; {:try_start_2a2 .. :try_end_2ab} :catch_2ac
    .catch Landroid/os/RemoteException; {:try_start_2a2 .. :try_end_2ab} :catch_2ac

    goto :goto_2c1

    .line 4663
    :catch_2ac
    move-exception v1

    .line 4664
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to dump input method client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4665
    :goto_2c1
    goto :goto_2c7

    .line 4667
    :cond_2c2
    const-string v1, "No input method client."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4670
    :goto_2c7
    if-eqz v3, :cond_301

    if-eq v2, v3, :cond_301

    .line 4671
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4672
    const-string v1, "Warning: Current input method client doesn\'t match the last focused. window."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4674
    const-string v1, "Dumping input method client in the last focused window just in case."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4675
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4676
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4678
    :try_start_2e2
    iget-object v1, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2eb
    .catch Ljava/io/IOException; {:try_start_2e2 .. :try_end_2eb} :catch_2ec
    .catch Landroid/os/RemoteException; {:try_start_2e2 .. :try_end_2eb} :catch_2ec

    .line 4681
    goto :goto_301

    .line 4679
    :catch_2ec
    move-exception v1

    .line 4680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dump input method client in focused window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4684
    :cond_301
    :goto_301
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4685
    if-eqz v4, :cond_329

    .line 4686
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4688
    :try_start_30b
    invoke-interface {v4}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_312
    .catch Ljava/io/IOException; {:try_start_30b .. :try_end_312} :catch_313
    .catch Landroid/os/RemoteException; {:try_start_30b .. :try_end_312} :catch_313

    goto :goto_328

    .line 4689
    :catch_313
    move-exception p1

    .line 4690
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to dump input method service: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4691
    :goto_328
    goto :goto_32e

    .line 4693
    :cond_329
    const-string p1, "No input method service."

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4695
    :goto_32e
    return-void

    .line 4656
    :catchall_32f
    move-exception p1

    :try_start_330
    monitor-exit v1
    :try_end_331
    .catchall {:try_start_330 .. :try_end_331} :catchall_32f

    throw p1
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .registers 3

    .line 1989
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    instance-of p1, p1, Landroid/os/Binder;

    if-eqz p1, :cond_e

    .line 1990
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    goto :goto_14

    .line 1992
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 1993
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 1995
    :goto_14
    return-void
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3

    .line 4437
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4439
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_c

    .line 4440
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 4442
    :cond_c
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4443
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getEnabledInputMethodList(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1785
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_e

    .line 1786
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1789
    :try_start_11
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1790
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 1789
    invoke-static {p1, v2, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object p1

    .line 1791
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_25

    .line 1792
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1794
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_3a

    .line 1796
    const/4 v3, 0x0

    :try_start_2a
    aget p1, p1, v3

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(I)Ljava/util/List;

    move-result-object p1
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_35

    .line 1798
    :try_start_30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 1796
    return-object p1

    .line 1798
    :catchall_35
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1800
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .registers 8
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

    .line 1845
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1846
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1847
    :try_start_7
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1848
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    const/4 v3, 0x0

    .line 1847
    invoke-static {v0, v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 1849
    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1c

    .line 1850
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1852
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_31

    .line 1854
    const/4 v4, 0x0

    :try_start_21
    aget v0, v0, v4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodSubtypeListLocked(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_2c

    .line 1857
    :try_start_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    .line 1854
    return-object p1

    .line 1857
    :catchall_2c
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1859
    :catchall_31
    move-exception p1

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public getInputMethodList(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1765
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_e

    .line 1766
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1769
    :try_start_11
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1770
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 1769
    invoke-static {p1, v2, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object p1

    .line 1771
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_25

    .line 1772
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1774
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_3a

    .line 1776
    const/4 v3, 0x0

    :try_start_2a
    aget p1, p1, v3

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(I)Ljava/util/List;

    move-result-object p1
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_35

    .line 1778
    :try_start_30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 1776
    return-object p1

    .line 1778
    :catchall_35
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1780
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public getInputMethodWindowVisibleHeight()I
    .registers 3

    .line 3518
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight(I)I

    move-result v0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 6

    .line 3428
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3429
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 3430
    monitor-exit v0

    return-object v2

    .line 3432
    :cond_c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    .line 3434
    if-eqz v1, :cond_58

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_58

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .line 3435
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_58

    .line 3436
    :cond_29
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 3437
    if-nez v3, :cond_37

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_5a

    return-object v2

    .line 3439
    :cond_37
    :try_start_37
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3440
    nop

    .line 3441
    invoke-static {v3, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 3442
    if-ltz v1, :cond_53

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v4

    if-lt v1, v4, :cond_4d

    goto :goto_53

    .line 3445
    :cond_4d
    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_51} :catch_55
    .catchall {:try_start_37 .. :try_end_51} :catchall_5a

    :try_start_51
    monitor-exit v0

    return-object v1

    .line 3443
    :cond_53
    :goto_53
    monitor-exit v0

    return-object v2

    .line 3446
    :catch_55
    move-exception v1

    .line 3447
    monitor-exit v0

    return-object v2

    .line 3435
    :cond_58
    :goto_58
    monitor-exit v0

    return-object v2

    .line 3449
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 13

    .line 3726
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_274

    if-eq v0, v1, :cond_26c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_268

    sparse-switch v0, :sswitch_data_2a4

    .line 3938
    return v2

    .line 3934
    :sswitch_10
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3935
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnlockUser(I)V

    .line 3936
    return v3

    .line 3931
    :sswitch_16
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_1d

    move v2, v3

    :cond_1d
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    .line 3932
    return v3

    .line 3917
    :sswitch_21
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_26

    move v2, v3

    .line 3918
    :cond_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3920
    :try_start_2a
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, v2}, Lcom/android/internal/view/IInputMethodClient;->applyImeVisibility(Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_30

    .line 3925
    goto :goto_5b

    .line 3921
    :catch_30
    move-exception v0

    .line 3922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got RemoteException sending applyImeVisibility("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") notification to pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    :goto_5b
    return v3

    .line 3903
    :sswitch_5c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3904
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/EditorInfo;

    .line 3905
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3907
    :try_start_68
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2, v0}, Lcom/android/internal/view/IInputMethodClient;->reportPreRendered(Landroid/view/inputmethod/EditorInfo;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6d} :catch_6e

    .line 3912
    goto :goto_99

    .line 3908
    :catch_6e
    move-exception v2

    .line 3909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got RemoteException sending reportPreRendered("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") notification to pid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " uid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    :goto_99
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3914
    return v3

    .line 3891
    :sswitch_9d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_a2

    move v2, v3

    .line 3892
    :cond_a2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3894
    :try_start_a6
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, v2}, Lcom/android/internal/view/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_ab} :catch_ac

    .line 3899
    goto :goto_d7

    .line 3895
    :catch_ac
    move-exception v0

    .line 3896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got RemoteException sending reportFullscreen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") notification to pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    :goto_d7
    return v3

    .line 3888
    :sswitch_d8
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_dd

    move v2, v3

    :cond_dd
    invoke-direct {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleSetInteractive(Z)V

    .line 3889
    return v3

    .line 3880
    :sswitch_e1
    :try_start_e1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_ed

    move v1, v3

    goto :goto_ee

    :cond_ed
    move v1, v2

    :goto_ee
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_f3

    move v2, v3

    :cond_f3
    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_f6
    .catch Landroid/os/RemoteException; {:try_start_e1 .. :try_end_f6} :catch_f7

    .line 3885
    goto :goto_122

    .line 3881
    :catch_f7
    move-exception v0

    .line 3882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got RemoteException sending setActive(false) notification to pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3886
    :goto_122
    return v3

    .line 3861
    :sswitch_123
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3862
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethodClient;

    .line 3863
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/InputBindResult;

    .line 3865
    :try_start_12f
    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_132
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_132} :catch_144
    .catchall {:try_start_12f .. :try_end_132} :catchall_142

    .line 3871
    iget-object v2, v1, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v2, :cond_168

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 3872
    :goto_13c
    iget-object v0, v1, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    goto :goto_168

    .line 3871
    :catchall_142
    move-exception p1

    goto :goto_16c

    .line 3866
    :catch_144
    move-exception v2

    .line 3867
    :try_start_145
    const-string v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client died receiving input method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catchall {:try_start_145 .. :try_end_15d} :catchall_142

    .line 3871
    iget-object v2, v1, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v2, :cond_168

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 3872
    goto :goto_13c

    .line 3875
    :cond_168
    :goto_168
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3876
    return v3

    .line 3871
    :goto_16c
    iget-object v2, v1, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v2, :cond_17b

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 3872
    iget-object v0, v1, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    :cond_17b
    throw p1

    .line 3855
    :sswitch_17c
    :try_start_17c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethodClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_187
    .catch Landroid/os/RemoteException; {:try_start_17c .. :try_end_187} :catch_188

    .line 3858
    goto :goto_189

    .line 3856
    :catch_188
    move-exception p1

    .line 3859
    :goto_189
    return v3

    .line 3834
    :sswitch_18a
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 3835
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_192

    move v9, v3

    goto :goto_193

    :cond_192
    move v9, v2

    .line 3836
    :goto_193
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3837
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/IBinder;

    .line 3838
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 3839
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/android/internal/view/IInputContext;

    .line 3840
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Landroid/view/inputmethod/EditorInfo;

    .line 3842
    :try_start_1aa
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 3843
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->client:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-boolean v10, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->shouldPreRenderIme:Z

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/view/IInputMethod;->startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;ZZ)V
    :try_end_1b6
    .catch Landroid/os/RemoteException; {:try_start_1aa .. :try_end_1b6} :catch_1b7

    .line 3846
    goto :goto_1b8

    .line 3845
    :catch_1b7
    move-exception v0

    .line 3847
    :goto_1b8
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3848
    return v3

    .line 3815
    :sswitch_1bc
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3816
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethod;

    .line 3817
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/view/InputChannel;

    .line 3819
    :try_start_1c8
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputSessionCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_1cf
    .catch Landroid/os/RemoteException; {:try_start_1c8 .. :try_end_1cf} :catch_1e5
    .catchall {:try_start_1c8 .. :try_end_1cf} :catchall_1d8

    .line 3824
    if-eqz v1, :cond_1f1

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 3825
    goto :goto_1ee

    .line 3824
    :catchall_1d8
    move-exception p1

    if-eqz v1, :cond_1e4

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 3825
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    :cond_1e4
    throw p1

    .line 3820
    :catch_1e5
    move-exception v2

    .line 3824
    if-eqz v1, :cond_1f1

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 3825
    :goto_1ee
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 3828
    :cond_1f1
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3829
    return v3

    .line 3801
    :sswitch_1f5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3807
    :try_start_1f9
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    .line 3808
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputMethod;

    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;

    invoke-direct {v4, p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    invoke-interface {v2, v1, p1, v4}, Lcom/android/internal/view/IInputMethod;->initializeInternal(Landroid/os/IBinder;ILcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V
    :try_end_20b
    .catch Landroid/os/RemoteException; {:try_start_1f9 .. :try_end_20b} :catch_20c

    .line 3811
    goto :goto_20d

    .line 3810
    :catch_20c
    move-exception p1

    .line 3812
    :goto_20d
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3813
    return v3

    .line 3796
    :sswitch_211
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3797
    const/4 p1, 0x0

    :try_start_215
    invoke-virtual {p0, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 3798
    monitor-exit v0

    .line 3799
    return v3

    .line 3798
    :catchall_21a
    move-exception p1

    monitor-exit v0
    :try_end_21c
    .catchall {:try_start_215 .. :try_end_21c} :catchall_21a

    throw p1

    .line 3786
    :sswitch_21d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3790
    :try_start_221
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethod;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/ResultReceiver;

    invoke-interface {v0, v2, v1}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_22c
    .catch Landroid/os/RemoteException; {:try_start_221 .. :try_end_22c} :catch_22d

    .line 3792
    goto :goto_22e

    .line 3791
    :catch_22d
    move-exception v0

    .line 3793
    :goto_22e
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3794
    return v3

    .line 3776
    :sswitch_232
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3780
    :try_start_236
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-interface {v1, p1, v2}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_243
    .catch Landroid/os/RemoteException; {:try_start_236 .. :try_end_243} :catch_244

    .line 3782
    goto :goto_245

    .line 3781
    :catch_244
    move-exception p1

    .line 3783
    :goto_245
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3784
    return v3

    .line 3768
    :sswitch_249
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 3770
    :try_start_24d
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethod;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_258
    .catch Landroid/os/RemoteException; {:try_start_24d .. :try_end_258} :catch_259

    .line 3772
    goto :goto_25a

    .line 3771
    :catch_259
    move-exception v0

    .line 3773
    :goto_25a
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3774
    return v3

    .line 3762
    :sswitch_25e
    :try_start_25e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/view/IInputMethod;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_265
    .catch Landroid/os/RemoteException; {:try_start_25e .. :try_end_265} :catch_266

    .line 3765
    goto :goto_267

    .line 3763
    :catch_266
    move-exception p1

    .line 3766
    :goto_267
    return v3

    .line 3755
    :cond_268
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showConfigureInputMethods()V

    .line 3756
    return v3

    .line 3751
    :cond_26c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    .line 3752
    return v3

    .line 3729
    :cond_274
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 3730
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_29c

    if-eq v4, v3, :cond_299

    if-eq v4, v1, :cond_297

    .line 3744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown subtype picker mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    return v2

    .line 3741
    :cond_297
    nop

    .line 3742
    goto :goto_29f

    .line 3738
    :cond_299
    nop

    .line 3739
    move v2, v3

    goto :goto_29f

    .line 3735
    :cond_29c
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 3736
    nop

    .line 3747
    :goto_29f
    invoke-direct {p0, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodMenu(ZI)V

    .line 3748
    return v3

    nop

    :sswitch_data_2a4
    .sparse-switch
        0x3e8 -> :sswitch_25e
        0x3f2 -> :sswitch_249
        0x3fc -> :sswitch_232
        0x406 -> :sswitch_21d
        0x40b -> :sswitch_211
        0x410 -> :sswitch_1f5
        0x41a -> :sswitch_1bc
        0x7d0 -> :sswitch_18a
        0xbb8 -> :sswitch_17c
        0xbc2 -> :sswitch_123
        0xbcc -> :sswitch_e1
        0xbd6 -> :sswitch_d8
        0xbe5 -> :sswitch_9d
        0xbf4 -> :sswitch_5c
        0xbfe -> :sswitch_21
        0xfa0 -> :sswitch_16
        0x1388 -> :sswitch_10
    .end sparse-switch
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .registers 7

    .line 2920
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_e

    .line 2923
    :cond_d
    return v1

    .line 2925
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_17

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_17

    .line 2927
    return v1

    .line 2938
    :cond_17
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v0, 0x1

    if-eqz p1, :cond_27

    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    if-nez p1, :cond_25

    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_27

    :cond_25
    move p1, v0

    goto :goto_28

    :cond_27
    move p1, v1

    .line 2941
    :goto_28
    if-eqz p1, :cond_38

    .line 2946
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x406

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2948
    goto :goto_39

    .line 2950
    :cond_38
    move v0, v1

    .line 2952
    :goto_39
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz p1, :cond_4a

    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    if-eqz p1, :cond_4a

    .line 2953
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2954
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 2956
    :cond_4a
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 2957
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 2958
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2959
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    .line 2960
    return v0
.end method

.method hideInputMethodMenu()V
    .registers 3

    .line 4324
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4325
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 4326
    monitor-exit v0

    .line 4327
    return-void

    .line 4326
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method hideInputMethodMenuLocked()V
    .registers 4

    .line 4332
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4333
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4334
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 4335
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 4338
    :cond_c
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 4339
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 4340
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4341
    return-void
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 11

    .line 2886
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2887
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2888
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 2889
    monitor-exit v0

    return v2

    .line 2891
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_73

    .line 2893
    :try_start_13
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_27

    if-eqz p1, :cond_27

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 2894
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eq v1, v5, :cond_49

    .line 2898
    :cond_27
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2899
    if-eqz v1, :cond_52

    .line 2902
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {p1, v5, v6, v1}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result p1
    :try_end_41
    .catchall {:try_start_13 .. :try_end_41} :catchall_6e

    if-nez p1, :cond_49

    .line 2907
    nop

    .line 2914
    :try_start_44
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_73

    .line 2907
    return v2

    .line 2912
    :cond_49
    :try_start_49
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result p1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_6e

    .line 2914
    :try_start_4d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_73

    .line 2912
    return p1

    .line 2900
    :cond_52
    :try_start_52
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown client "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_6e
    .catchall {:try_start_52 .. :try_end_6e} :catchall_6e

    .line 2914
    :catchall_6e
    move-exception p1

    :try_start_6f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2916
    :catchall_73
    move-exception p1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_73

    throw p1
.end method

.method public isInputMethodPickerShownForTest()Z
    .registers 3

    .line 3274
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3275
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_a

    .line 3276
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3278
    :cond_a
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3279
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public synthetic lambda$handleShellCommandResetInputMethod$1$InputMethodManagerService(Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 3

    .line 5147
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    return-void
.end method

.method public synthetic lambda$handleShellCommandResetInputMethod$2$InputMethodManagerService(Landroid/view/inputmethod/InputMethodInfo;)V
    .registers 3

    .line 5150
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    return-void
.end method

.method public synthetic lambda$new$0$InputMethodManagerService(I)Z
    .registers 3

    .line 1477
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->shouldShowIme(I)Z

    move-result p1

    return p1
.end method

.method onActionLocaleChanged()V
    .registers 5

    .line 1094
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1095
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 1096
    if-eqz v1, :cond_19

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1097
    monitor-exit v0

    return-void

    .line 1099
    :cond_19
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1101
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1102
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1103
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1104
    monitor-exit v0

    .line 1105
    return-void

    .line 1104
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    .line 2263
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2264
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 2265
    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2266
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez p1, :cond_29

    .line 2267
    const-string p1, "InputMethodManagerService"

    const-string p2, "Service connected without a token!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 2269
    monitor-exit v0

    return-void

    .line 2273
    :cond_29
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x410

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2275
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz p1, :cond_4a

    .line 2276
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2277
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2280
    :cond_4a
    monitor-exit v0

    .line 2281
    return-void

    .line 2280
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 2406
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2409
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2410
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 2411
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2414
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    .line 2415
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 2416
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 2417
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2419
    :cond_2b
    monitor-exit v0

    .line 2420
    return-void

    .line 2419
    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .registers 8

    .line 2285
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2286
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_49

    if-eqz p1, :cond_49

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2287
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_49

    .line 2288
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_49

    .line 2289
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2290
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2292
    const/16 p1, 0x9

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object p1

    .line 2294
    iget-object p2, p1, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz p2, :cond_47

    .line 2295
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xbc2

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {p3, v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2298
    :cond_47
    monitor-exit v0

    return-void

    .line 2301
    :cond_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_4e

    .line 2304
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    .line 2305
    return-void

    .line 2301
    :catchall_4e
    move-exception p1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4703
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4705
    if-eqz v0, :cond_40

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_40

    .line 4709
    if-eqz p6, :cond_11

    .line 4710
    const/4 p1, -0x1

    const/4 p2, 0x0

    invoke-virtual {p6, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 4712
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "InputMethodManagerService does not support shell commands from non-shell users. callingUid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " args="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4714
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4715
    invoke-static {v0}, Landroid/os/Process;->isCoreUid(I)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 4717
    const-string p2, "InputMethodManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4718
    return-void

    .line 4720
    :cond_3a
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4722
    :cond_40
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4724
    return-void
.end method

.method onSwitchUser(I)V
    .registers 3

    .line 1461
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1462
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchUserLocked(I)V

    .line 1463
    monitor-exit v0

    .line 1464
    return-void

    .line 1463
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1618
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 1619
    :catch_5
    move-exception p1

    .line 1622
    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_11

    .line 1623
    const-string p2, "InputMethodManagerService"

    const-string p3, "Input Method Manager Crash"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1625
    :cond_11
    throw p1
.end method

.method onUnlockUser(I)V
    .registers 7

    .line 1443
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1444
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    .line 1448
    if-eq p1, v1, :cond_d

    .line 1449
    monitor-exit v0

    return-void

    .line 1451
    :cond_d
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_17

    move v2, v3

    goto :goto_18

    :cond_17
    move v2, v4

    :goto_18
    invoke-virtual {p1, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1452
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-eqz p1, :cond_25

    .line 1454
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1455
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 1457
    :cond_25
    monitor-exit v0

    .line 1458
    return-void

    .line 1457
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .registers 8

    .line 1956
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1957
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 1958
    if-eqz v1, :cond_66

    .line 1959
    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->clientDeathRecipient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1960
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 1962
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 1963
    add-int/lit8 p1, p1, -0x1

    :goto_26
    if-ltz p1, :cond_3e

    .line 1964
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 1965
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v2

    if-ne v2, v1, :cond_3b

    .line 1966
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1963
    :cond_3b
    add-int/lit8 p1, p1, -0x1

    goto :goto_26

    .line 1970
    :cond_3e
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_60

    .line 1971
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    if-eqz p1, :cond_5c

    .line 1972
    iput-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 1973
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz p1, :cond_5c

    .line 1974
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x3e8

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1978
    :cond_5c
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 1979
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 1981
    :cond_60
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-ne p1, v1, :cond_66

    .line 1982
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 1985
    :cond_66
    monitor-exit v0

    .line 1986
    return-void

    .line 1985
    :catchall_68
    move-exception p1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw p1
.end method

.method public reportActivityView(Lcom/android/internal/view/IInputMethodClient;I[F)V
    .registers 9

    .line 3524
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 3525
    if-eqz v0, :cond_131

    .line 3529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3530
    iget v0, v0, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v1, v0, :cond_129

    .line 3534
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3535
    :try_start_13
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 3536
    if-nez p1, :cond_23

    .line 3537
    monitor-exit v0

    return-void

    .line 3541
    :cond_23
    if-nez p3, :cond_55

    .line 3542
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 3543
    if-nez p3, :cond_31

    .line 3544
    monitor-exit v0

    return-void

    .line 3546
    :cond_31
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object p3

    if-ne p3, p1, :cond_3e

    .line 3550
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 3551
    monitor-exit v0

    return-void

    .line 3547
    :cond_3e
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only the owner client can clear ActivityViewGeometry for display #"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3554
    :cond_55
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 3555
    if-eqz v1, :cond_89

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v2

    if-ne v2, p1, :cond_66

    goto :goto_89

    .line 3556
    :cond_66
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display #"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already registered by "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3557
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3559
    :cond_89
    :goto_89
    if-nez v1, :cond_bf

    .line 3560
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/WindowManagerInternal;->isUidAllowedOnDisplay(II)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 3564
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {v1, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/graphics/Matrix;)V

    .line 3565
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_bf

    .line 3561
    :cond_a5
    new-instance p3, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cannot access to display #"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 3567
    :cond_bf
    :goto_bf
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 3569
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz p1, :cond_124

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-nez p1, :cond_d1

    goto :goto_124

    .line 3573
    :cond_d1
    const/4 p1, 0x0

    .line 3574
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget p3, p3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 3575
    const/4 v2, 0x0

    move-object v3, p1

    move p1, v2

    .line 3577
    :goto_d9
    if-ne p3, p2, :cond_dd

    const/4 v4, 0x1

    goto :goto_de

    :cond_dd
    move v4, v2

    :goto_de
    or-int/2addr p1, v4

    .line 3578
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityViewDisplayIdToParentMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;

    .line 3579
    if-nez p3, :cond_ea

    .line 3580
    goto :goto_11b

    .line 3582
    :cond_ea
    if-nez v3, :cond_f6

    .line 3583
    new-instance v3, Landroid/graphics/Matrix;

    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_fd

    .line 3585
    :cond_f6
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1800(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 3587
    :goto_fd
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object p3

    iget p3, p3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-ne p3, v4, :cond_11d

    .line 3588
    if-eqz p1, :cond_11b

    .line 3589
    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 3590
    invoke-virtual {v3, p1}, Landroid/graphics/Matrix;->getValues([F)V
    :try_end_110
    .catchall {:try_start_13 .. :try_end_110} :catchall_126

    .line 3592
    :try_start_110
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    invoke-interface {p2, p3, p1}, Lcom/android/internal/view/IInputMethodClient;->updateActivityViewToScreenMatrix(I[F)V
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_110 .. :try_end_119} :catch_11a
    .catchall {:try_start_110 .. :try_end_119} :catchall_126

    .line 3594
    goto :goto_11b

    .line 3593
    :catch_11a
    move-exception p1

    .line 3600
    :cond_11b
    :goto_11b
    :try_start_11b
    monitor-exit v0

    .line 3601
    return-void

    .line 3598
    :cond_11d
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;->access$1700(Lcom/android/server/inputmethod/InputMethodManagerService$ActivityViewInfo;)Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object p3

    iget p3, p3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 3599
    goto :goto_d9

    .line 3570
    :cond_124
    :goto_124
    monitor-exit v0

    return-void

    .line 3600
    :catchall_126
    move-exception p1

    monitor-exit v0
    :try_end_128
    .catchall {:try_start_11b .. :try_end_128} :catchall_126

    throw p1

    .line 3531
    :cond_129
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "The caller doesn\'t own the display."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3526
    :cond_131
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find display for non-existent displayId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V
    .registers 8

    .line 2346
    iget-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v0, :cond_26

    .line 2348
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 2349
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2350
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x41a

    aget-object v1, v0, v1

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-direct {v4, p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V

    invoke-virtual {v2, v3, p1, v1, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2354
    :cond_26
    return-void
.end method

.method resetCurrentMethodAndClient(I)V
    .registers 3

    .line 2340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2341
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 2342
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2343
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 11

    .line 3456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ca

    if-nez p2, :cond_a

    goto/16 :goto_ca

    .line 3457
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3458
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_49

    aget-object v4, p2, v3

    .line 3459
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 3460
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 3462
    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicated subtype definition found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3463
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3462
    const-string v5, "InputMethodManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 3466
    :cond_49
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 3467
    :try_start_4c
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v3

    if-nez v3, :cond_54

    .line 3468
    monitor-exit v1

    return-void

    .line 3470
    :cond_54
    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_5a

    .line 3471
    monitor-exit v1

    return-void

    .line 3473
    :cond_5a
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    .line 3474
    if-nez p1, :cond_66

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_4c .. :try_end_65} :catchall_c7

    return-void

    .line 3477
    :cond_66
    :try_start_66
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_70} :catch_bd
    .catchall {:try_start_66 .. :try_end_70} :catchall_c7

    .line 3481
    nop

    .line 3482
    if-eqz v3, :cond_bb

    .line 3483
    :try_start_73
    array-length v4, v3

    .line 3484
    move v5, v2

    :goto_75
    if-ge v5, v4, :cond_bb

    .line 3485
    aget-object v6, v3, v5

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 3486
    array-length p2, p2

    if-lez p2, :cond_90

    .line 3487
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_99

    .line 3489
    :cond_90
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3491
    :goto_99
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAdditionalSubtypeMap:Landroid/util/ArrayMap;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3492
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v0

    .line 3491
    invoke-static {p1, p2, v0}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->save(Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V

    .line 3493
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1
    :try_end_aa
    .catchall {:try_start_73 .. :try_end_aa} :catchall_c7

    .line 3495
    :try_start_aa
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_b3

    .line 3497
    :try_start_ad
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3498
    nop

    .line 3499
    monitor-exit v1

    return-void

    .line 3497
    :catchall_b3
    move-exception v0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3484
    :cond_b8
    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    .line 3503
    :cond_bb
    monitor-exit v1

    .line 3504
    return-void

    .line 3478
    :catch_bd
    move-exception p1

    .line 3479
    const-string p1, "InputMethodManagerService"

    const-string p2, "Failed to get package infos"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    monitor-exit v1

    return-void

    .line 3503
    :catchall_c7
    move-exception p1

    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_ad .. :try_end_c9} :catchall_c7

    throw p1

    .line 3456
    :cond_ca
    :goto_ca
    return-void
.end method

.method setEnabledSessionInMainThread(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .registers 5

    .line 3703
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eq v0, p1, :cond_30

    .line 3704
    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_18

    .line 3707
    :try_start_a
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    .line 3709
    goto :goto_18

    .line 3708
    :catch_17
    move-exception v0

    .line 3711
    :cond_18
    :goto_18
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 3712
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz p1, :cond_30

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz p1, :cond_30

    .line 3715
    :try_start_22
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2e} :catch_2f

    .line 3717
    goto :goto_30

    .line 3716
    :catch_2f
    move-exception p1

    .line 3720
    :cond_30
    :goto_30
    return-void
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .registers 7

    .line 2736
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2737
    if-eqz v0, :cond_a8

    .line 2742
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 2743
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    .line 2744
    if-gtz p1, :cond_19

    .line 2745
    return-void

    .line 2747
    :cond_19
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 2749
    if-ltz p2, :cond_24

    if-ge p2, p1, :cond_24

    .line 2750
    invoke-virtual {v0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p1

    goto :goto_28

    .line 2754
    :cond_24
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p1

    .line 2756
    :goto_28
    const-string v2, "InputMethodManagerService"

    if-eqz p1, :cond_4d

    if-nez v1, :cond_2f

    goto :goto_4d

    .line 2761
    :cond_2f
    if-eq p1, v1, :cond_4c

    .line 2762
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2763
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz p2, :cond_4c

    .line 2765
    :try_start_39
    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2766
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {p2, p1}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_45} :catch_46

    .line 2769
    goto :goto_4c

    .line 2767
    :catch_46
    move-exception p1

    .line 2768
    const-string p1, "Failed to call changeInputMethodSubtype"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    :cond_4c
    :goto_4c
    return-void

    .line 2757
    :cond_4d
    :goto_4d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal subtype state: old subtype = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", new subtype = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    return-void

    .line 2776
    :cond_6a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2780
    const/4 v3, 0x0

    :try_start_6f
    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2784
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2786
    const-class p2, Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p2}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result p2

    if-eqz p2, :cond_9a

    .line 2787
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2788
    const/high16 v0, 0x20000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2789
    const-string v0, "input_method_id"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2790
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2792
    :cond_9a
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_9e
    .catchall {:try_start_6f .. :try_end_9e} :catchall_a3

    .line 2794
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2795
    nop

    .line 2796
    return-void

    .line 2794
    :catchall_a3
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2738
    :cond_a8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 2833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowRequested:Z

    .line 2834
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 2835
    return v2

    .line 2838
    :cond_9
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_12

    .line 2839
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2840
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowForced:Z

    goto :goto_17

    .line 2841
    :cond_12
    and-int/2addr p1, v0

    if-nez p1, :cond_17

    .line 2842
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2845
    :cond_17
    :goto_17
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez p1, :cond_1c

    .line 2846
    return v2

    .line 2849
    :cond_1c
    nop

    .line 2850
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz p1, :cond_49

    .line 2852
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3fc

    .line 2853
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getImeShowFlags()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2852
    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2855
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputShown:Z

    .line 2856
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz p1, :cond_48

    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    if-nez p1, :cond_48

    .line 2857
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v1, 0x2c081001

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2859
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 2861
    :cond_48
    goto :goto_8f

    .line 2862
    :cond_49
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz p1, :cond_8e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v5, 0xbb8

    add-long/2addr v3, v5

    cmp-long p1, p1, v3

    if-ltz p1, :cond_8e

    .line 2868
    const/16 p1, 0x7d00

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v1, p2, v2

    .line 2869
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p2, v1

    .line 2868
    invoke-static {p1, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2870
    const-string p1, "InputMethodManagerService"

    const-string p2, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2872
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const p2, 0x40800005  # 4.0000024f

    invoke-direct {p0, p1, p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2880
    :cond_8e
    move v0, v2

    :goto_8f
    return v0
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .registers 6

    .line 3312
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 3314
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3315
    monitor-exit p1

    return-void

    .line 3317
    :cond_b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3319
    monitor-exit p1

    .line 3320
    return-void

    .line 3319
    :catchall_19
    move-exception p2

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p2
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .registers 7

    .line 3241
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3242
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 3243
    monitor-exit v0

    return-void

    .line 3245
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 3246
    const-string p2, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3247
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3246
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    monitor-exit v0

    return-void

    .line 3253
    :cond_35
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x1

    .line 3255
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    goto :goto_44

    :cond_43
    const/4 v3, 0x0

    .line 3253
    :goto_44
    invoke-virtual {v1, v2, p2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3256
    monitor-exit v0

    .line 3257
    return-void

    .line 3256
    :catchall_4d
    move-exception p1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public showInputMethodPickerFromSystem(Lcom/android/internal/view/IInputMethodClient;II)V
    .registers 6

    .line 3262
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_17

    .line 3269
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3271
    return-void

    .line 3264
    :cond_17
    new-instance p1, Ljava/lang/SecurityException;

    const-string/jumbo p2, "showInputMethodPickerFromSystem requires WRITE_SECURE_SETTINGS permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 13

    .line 2801
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2802
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2803
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    .line 2804
    monitor-exit v1

    return v3

    .line 2806
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_92

    .line 2808
    :try_start_14
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_28

    if-eqz p1, :cond_28

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 2809
    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eq v2, v6, :cond_68

    .line 2813
    :cond_28
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClients:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2814
    if-eqz v2, :cond_71

    .line 2817
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v7, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget v8, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v6, v7, v8, v2}, Lcom/android/server/wm/WindowManagerInternal;->isInputMethodClientFocus(III)Z

    move-result v2

    if-nez v2, :cond_68

    .line 2819
    const-string p2, "InputMethodManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring showSoftInput of uid "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_14 .. :try_end_62} :catchall_8d

    .line 2820
    nop

    .line 2826
    :try_start_63
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_92

    .line 2820
    return v3

    .line 2824
    :cond_68
    :try_start_68
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result p1
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_8d

    .line 2826
    :try_start_6c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_92

    .line 2824
    return p1

    .line 2815
    :cond_71
    :try_start_71
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown client "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_8d
    .catchall {:try_start_71 .. :try_end_8d} :catchall_8d

    .line 2826
    :catchall_8d
    move-exception p1

    :try_start_8e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2828
    :catchall_92
    move-exception p1

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_8e .. :try_end_94} :catchall_92

    throw p1
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;II)Lcom/android/internal/view/InputBindResult;
    .registers 28

    .line 2970
    move-object/from16 v0, p0

    move-object/from16 v13, p7

    if-nez p3, :cond_11

    .line 2971
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "windowToken cannot be null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NULL:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2974
    :cond_11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2976
    if-eqz v13, :cond_5a

    iget-object v2, v13, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz v2, :cond_5a

    iget-object v2, v13, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 2977
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v2, v1, :cond_5a

    .line 2978
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Using EditorInfo.targetInputMethodUser requires INTERACT_ACROSS_USERS_FULL."

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    iget-object v1, v13, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 2981
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {v2, v1}, Landroid/os/UserManagerInternal;->isUserRunning(I)Z

    move-result v2

    if-nez v2, :cond_58

    .line 2985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not running."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2981
    :cond_58
    move v12, v1

    goto :goto_5b

    .line 2989
    :cond_5a
    move v12, v1

    .line 2992
    :goto_5b
    iget-object v14, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 2993
    :try_start_5e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_bb

    .line 2995
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

    :try_start_78
    invoke-direct/range {v1 .. v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;III)Lcom/android/internal/view/InputBindResult;

    move-result-object v0
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_b5

    .line 2999
    :try_start_7c
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3000
    nop

    .line 3001
    monitor-exit v14
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_bb

    .line 3002
    if-nez v0, :cond_b4

    .line 3004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputBindResult is @NonNull. startInputReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3005
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " windowFlags=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3006
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " editorInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3004
    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NULL:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 3010
    :cond_b4
    return-object v0

    .line 2999
    :catchall_b5
    move-exception v0

    move-object v1, v0

    :try_start_b7
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 3001
    :catchall_bb
    move-exception v0

    monitor-exit v14
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_bb

    throw v0
.end method

.method startInputUncheckedLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 2102
    move-object v1, p0

    move-object v0, p1

    move-object/from16 v2, p4

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 2103
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NO_IME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2106
    :cond_b
    iget-boolean v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v4, :cond_26

    .line 2109
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v2, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    const/4 v6, 0x0

    move-object p0, v0

    move p1, v2

    move-object p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v3

    move/from16 p5, v1

    move-object/from16 p6, v6

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v0

    .line 2114
    :cond_26
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget-object v5, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v3

    const-string v4, "InputMethodManagerService"

    if-nez v3, :cond_57

    .line 2116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2121
    :cond_57
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->isUidAllowedOnDisplay(II)Z

    move-result v3

    if-nez v3, :cond_66

    .line 2123
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_DISPLAY_ID:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2127
    :cond_66
    iget v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDisplayValidator:Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;

    invoke-static {v3, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I

    move-result v3

    .line 2130
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    const/4 v6, 0x1

    if-eq v5, v0, :cond_8d

    .line 2132
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClientInKeyguard:Z

    .line 2135
    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2140
    iget-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v5, :cond_8d

    .line 2141
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v8, 0xbcc

    invoke-virtual {v7, v8, v6, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2146
    :cond_8d
    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    add-int/2addr v5, v6

    iput v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    .line 2147
    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    if-gtz v5, :cond_98

    iput v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    .line 2148
    :cond_98
    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2149
    move-object v5, p2

    iput-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    .line 2150
    iget v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 2151
    invoke-direct {p0, v5, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getActivityViewToScreenMatrixLocked(II)Landroid/graphics/Matrix;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 2152
    iget v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    if-eq v5, v3, :cond_b0

    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    if-nez v5, :cond_b0

    .line 2157
    or-int/lit8 v5, p3, 0x8

    goto :goto_b2

    .line 2159
    :cond_b0
    move/from16 v5, p3

    :goto_b2
    iput v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContextMissingMethods:I

    .line 2160
    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 2165
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v2, :cond_141

    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_141

    iget v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    if-ne v3, v2, :cond_141

    .line 2167
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v2, :cond_d7

    .line 2170
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_d0

    move v5, v6

    :cond_d0
    move/from16 v0, p6

    invoke-virtual {p0, v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0

    .line 2173
    :cond_d7
    iget-boolean v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v2, :cond_141

    .line 2174
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_fb

    .line 2177
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;)V

    .line 2178
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    const/4 v6, 0x0

    move-object p0, v0

    move p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v1

    move-object/from16 p6, v6

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v0

    .line 2181
    :cond_fb
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v11, 0xbb8

    add-long/2addr v9, v11

    cmp-long v0, v7, v9

    if-gez v0, :cond_121

    .line 2190
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    const/4 v6, 0x0

    move-object p0, v0

    move p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v1

    move-object/from16 p6, v6

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v0

    .line 2194
    :cond_121
    const/16 v0, 0x7d00

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v7, v2, v5

    .line 2195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v7, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    .line 2194
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2200
    :cond_141
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2201
    if-eqz v0, :cond_1e4

    .line 2205
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentMethodLocked()V

    .line 2207
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.view.InputMethod"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2208
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2209
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v7, 0x104030f

    const-string v8, "android.intent.extra.client_label"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2211
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v5, v8, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v7, "android.intent.extra.client_intent"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2214
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v5, 0x40800005  # 4.0000024f

    invoke-direct {p0, v2, p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1c8

    .line 2215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastBindTime:J

    .line 2216
    iput-boolean v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    .line 2217
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2218
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2219
    iput v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 2225
    :try_start_1a2
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/16 v3, 0x7db

    iget v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-interface {v0, v2, v3, v4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_1ad
    .catch Landroid/os/RemoteException; {:try_start_1a2 .. :try_end_1ad} :catch_1ae

    .line 2228
    goto :goto_1af

    .line 2227
    :catch_1ae
    move-exception v0

    .line 2229
    :goto_1af
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    const/4 v6, 0x0

    move-object p0, v0

    move p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v1

    move-object/from16 p6, v6

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;ILandroid/graphics/Matrix;)V

    return-object v0

    .line 2233
    :cond_1c8
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure connecting to input method service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    sget-object v0, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2202
    :cond_1e4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 15

    .line 1630
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1634
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_ec

    .line 1635
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 1636
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1637
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 1638
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1639
    invoke-virtual {v4, v2}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_29

    move v4, v1

    goto :goto_2a

    :cond_29
    move v4, v5

    .line 1638
    :goto_2a
    invoke-virtual {v3, v2, v4}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1642
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Llineageos/hardware/LineageHardwareManager;->getInstance(Landroid/content/Context;)Llineageos/hardware/LineageHardwareManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLineageHardware:Llineageos/hardware/LineageHardwareManager;

    .line 1644
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchHovering()V

    .line 1645
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateTouchSensitivity()V

    .line 1647
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1648
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1649
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1650
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz p1, :cond_60

    .line 1651
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1653
    :cond_60
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 1654
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v3, 0x1110128

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1656
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-eqz p1, :cond_7d

    .line 1657
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    .line 1661
    :cond_7d
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6, v4, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1662
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    invoke-virtual {p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1664
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 1665
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1666
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1667
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1668
    const-string v3, "com.android.server.inputmethod.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1669
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;

    invoke-direct {v4, p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForSystemUser;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    invoke-virtual {v3, v4, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1672
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 1673
    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1674
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;

    invoke-direct {v8, p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1677
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p1

    .line 1678
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 1679
    xor-int/2addr p1, v1

    if-nez p1, :cond_d5

    move v5, v1

    :cond_d5
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1680
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1681
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1682
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1683
    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    .line 1681
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1685
    :cond_ec
    monitor-exit v0

    .line 1686
    return-void

    .line 1685
    :catchall_ee
    move-exception p1

    monitor-exit v0
    :try_end_f0
    .catchall {:try_start_3 .. :try_end_f0} :catchall_ee

    throw p1
.end method

.method unbindCurrentClientLocked(I)V
    .registers 8

    .line 1998
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_4c

    .line 2001
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 2002
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 2003
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_1a

    .line 2004
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2009
    :cond_1a
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbcc

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3, v1, v1, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2011
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbb8

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurSeq:I

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3, v4, p1, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2013
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iput-boolean v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2014
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 2015
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurActivityViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 2017
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 2019
    :cond_4c
    return-void
.end method

.method unbindCurrentMethodLocked()V
    .registers 6

    .line 2308
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2309
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2310
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 2313
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_19

    .line 2314
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2315
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHaveConnection:Z

    .line 2318
    :cond_19
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 2324
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    invoke-interface {v3, v0, v4}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_26

    .line 2326
    goto :goto_27

    .line 2325
    :catch_26
    move-exception v0

    .line 2328
    :goto_27
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 2329
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 2330
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 2331
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2332
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurTokenDisplayId:I

    .line 2335
    :cond_37
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2336
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2337
    return-void
.end method

.method updateCurrentProfileIds()V
    .registers 4

    .line 1610
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1611
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    .line 1610
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    .line 1612
    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .registers 2

    .line 2648
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 2649
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    .line 2650
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .registers 12

    .line 2653
    const/4 v0, 0x4

    if-eqz p1, :cond_4b

    .line 2654
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object p1

    .line 2655
    const/4 v1, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 2658
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 2660
    :try_start_16
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x8000

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2662
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v6

    .line 2660
    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2663
    if-eqz v3, :cond_46

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v3, v0, :cond_46

    .line 2669
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2671
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2672
    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v9

    .line 2669
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_46} :catch_47

    .line 2675
    :cond_46
    goto :goto_48

    .line 2674
    :catch_47
    move-exception v2

    .line 2655
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2682
    :cond_4b
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p1

    .line 2684
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 2685
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p1

    .line 2687
    :cond_63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 2689
    :try_start_69
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_69 .. :try_end_72} :catch_73

    goto :goto_8e

    .line 2690
    :catch_73
    move-exception v0

    .line 2691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown input method from prefs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2692
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 2693
    :goto_8e
    goto :goto_92

    .line 2696
    :cond_8f
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 2702
    :goto_92
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 2704
    return-void
.end method

.method public updateKeyboardFromSettingsLocked()V
    .registers 3

    .line 2725
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    .line 2726
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v1, :cond_26

    .line 2728
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2729
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v1, 0x10202ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 2731
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2733
    :cond_26
    return-void
.end method
