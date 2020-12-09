.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$LocalService;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$InputMonitorHost;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;,
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    }
.end annotation


# static fields
.field public static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field private static final DEEP_PRESS_ENABLED:Ljava/lang/String; = "deep_press_enabled"

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field private static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field private static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field private static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field private static final MSG_DELIVER_INPUT_DEVICES_CHANGED:I = 0x1

.field private static final MSG_DELIVER_TABLET_MODE_CHANGED:I = 0x6

.field private static final MSG_RELOAD_DEVICE_ALIASES:I = 0x5

.field private static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x3

.field private static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x2

.field private static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x4

.field private static final PORT_ASSOCIATIONS_PATH:Ljava/lang/String; = "etc/input-port-associations.xml"

.field public static final SW_CAMERA_LENS_COVER:I = 0x9

.field public static final SW_CAMERA_LENS_COVER_BIT:I = 0x200

.field public static final SW_HEADPHONE_INSERT:I = 0x2

.field public static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field public static final SW_JACK_BITS:I = 0xd4

.field public static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field public static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field public static final SW_KEYPAD_SLIDE:I = 0xa

.field public static final SW_KEYPAD_SLIDE_BIT:I = 0x400

.field public static final SW_LID:I = 0x0

.field public static final SW_LID_BIT:I = 0x1

.field public static final SW_LINEOUT_INSERT:I = 0x6

.field public static final SW_LINEOUT_INSERT_BIT:I = 0x40

.field public static final SW_MICROPHONE_INSERT:I = 0x4

.field public static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field public static final SW_TABLET_MODE:I = 0x1

.field public static final SW_TABLET_MODE_BIT:I = 0x2

.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field private mDisplayContext:Landroid/content/Context;

.field private final mDoubleTouchGestureEnableFile:Ljava/io/File;

.field private mFocusedWindow:Landroid/view/IWindow;

.field private mFocusedWindowHasCapture:Z

.field private final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field private mInputDevices:[Landroid/view/InputDevice;

.field private final mInputDevicesChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedPending:Z

.field private mInputDevicesLock:Ljava/lang/Object;

.field mInputFilter:Landroid/view/IInputFilter;

.field mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private mKeyboardLayoutIntent:Landroid/app/PendingIntent;

.field private mKeyboardLayoutNotificationShown:Z

.field private mNextVibratorTokenValue:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPtr:J

.field private mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

.field private mSystemReady:Z

.field private final mTabletModeChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabletModeLock:Ljava/lang/Object;

.field private final mTempFullKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempTabletModeChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUseDevInputEventForAudioJack:Z

.field private mVibratorLock:Ljava/lang/Object;

.field private mVibratorTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$VibratorToken;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field private mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 321
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 166
    new-instance v0, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 171
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/InputDevice;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 172
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 322
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 323
    new-instance v0, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 325
    nop

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1040171

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b2

    move-object v0, v1

    goto :goto_b7

    .line 334
    :cond_b2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_b7
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    .line 336
    const-class p1, Landroid/hardware/input/InputManagerInternal;

    new-instance v0, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 337
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/input/InputManagerService;II)V
    .registers 3

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/input/InputManagerService;JZ)V
    .registers 4

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/input/InputManagerService;)J
    .registers 3

    .line 124
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    return-wide v0
.end method

.method static synthetic access$1400(JLandroid/view/InputEvent;IIIII)I
    .registers 8

    .line 124
    invoke-static/range {p0 .. p7}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIII)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(JLandroid/os/IBinder;)V
    .registers 3

    .line 124
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativePilferPointers(JLandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1600(JLandroid/view/InputChannel;)V
    .registers 3

    .line 124
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/input/InputManagerService;I)V
    .registers 2

    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onTabletModeChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V
    .registers 2

    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;I)Z
    .registers 3

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(JZ)V
    .registers 3

    .line 124
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInteractive(JZ)V

    return-void
.end method

.method static synthetic access$2200(JI)V
    .registers 3

    .line 124
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeToggleCapsLock(JI)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/input/InputManagerService;)Ljava/io/File;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V
    .registers 2

    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->updateDeepPressStatusFromSettings(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/input/InputManagerService;)V
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method static synthetic access$800(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 2

    .line 124
    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .registers 2

    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 6

    .line 1772
    monitor-enter p1

    .line 1773
    :try_start_1
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_11

    .line 1774
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v3, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeCancelVibrate(JII)V

    .line 1775
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1777
    :cond_11
    monitor-exit p1

    .line 1778
    return-void

    .line 1777
    :catchall_13
    move-exception v0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1806
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 1807
    return v2

    .line 1810
    :cond_c
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 1811
    return v2

    .line 1813
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from pid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1817
    const-string p2, "InputManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    const/4 p1, 0x0

    return p1
.end method

.method private checkInjectEventsPermission(II)Z
    .registers 5

    .line 1943
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .registers 6

    .line 1106
    array-length v0, p0

    .line 1107
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_16

    .line 1108
    aget-object v3, p0, v2

    .line 1109
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1110
    const/4 p0, 0x1

    return p0

    .line 1107
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1113
    :cond_16
    return v1
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 12

    .line 778
    nop

    .line 779
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 780
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 783
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_e
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v1, :cond_14

    .line 785
    monitor-exit v0

    return-void

    .line 787
    :cond_14
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 789
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 790
    move v3, v1

    :goto_1e
    if-ge v3, v2, :cond_30

    .line 791
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 792
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    .line 791
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 795
    :cond_30
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v3, v3

    .line 796
    mul-int/lit8 v4, v3, 0x2

    new-array v4, v4, [I

    .line 797
    move v5, v1

    move v6, v5

    :goto_39
    if-ge v5, v3, :cond_77

    .line 798
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v7, v7, v5

    .line 799
    mul-int/lit8 v8, v5, 0x2

    invoke-virtual {v7}, Landroid/view/InputDevice;->getId()I

    move-result v9

    aput v9, v4, v8

    .line 800
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7}, Landroid/view/InputDevice;->getGeneration()I

    move-result v9

    aput v9, v4, v8

    .line 802
    invoke-virtual {v7}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v8

    if-nez v8, :cond_74

    invoke-virtual {v7}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v8

    if-eqz v8, :cond_74

    .line 803
    nop

    .line 804
    invoke-virtual {v7}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    .line 803
    invoke-static {p1, v8}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6f

    .line 805
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v6, v9

    goto :goto_74

    .line 807
    :cond_6f
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    :cond_74
    :goto_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 811
    :cond_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_e .. :try_end_78} :catchall_f9

    .line 814
    move p1, v1

    :goto_79
    if-ge p1, v2, :cond_89

    .line 815
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    .line 814
    add-int/lit8 p1, p1, 0x1

    goto :goto_79

    .line 818
    :cond_89
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 821
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 822
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 823
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 824
    move v3, v1

    :goto_9d
    if-ge v3, v0, :cond_c8

    .line 825
    :try_start_9f
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice;

    .line 826
    nop

    .line 827
    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v5

    .line 828
    if-nez v5, :cond_c0

    .line 829
    invoke-direct {p0, v4}, Lcom/android/server/input/InputManagerService;->getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v5

    .line 830
    if-eqz v5, :cond_c0

    .line 831
    nop

    .line 832
    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v6

    .line 831
    invoke-virtual {p0, v6, v5}, Lcom/android/server/input/InputManagerService;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 835
    :cond_c0
    if-nez v5, :cond_c5

    .line 836
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_c5
    add-int/lit8 v3, v3, 0x1

    goto :goto_9d

    .line 839
    :cond_c8
    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_9f .. :try_end_c9} :catchall_f6

    .line 841
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_f0

    .line 842
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e9

    .line 843
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_df

    .line 847
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_f0

    .line 849
    :cond_df
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputDevice;

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_f0

    .line 851
    :cond_e9
    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz p1, :cond_f0

    .line 852
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    .line 855
    :cond_f0
    :goto_f0
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 856
    return-void

    .line 839
    :catchall_f6
    move-exception p1

    :try_start_f7
    monitor-exit v2
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw p1

    .line 811
    :catchall_f9
    move-exception p1

    :try_start_fa
    monitor-exit v0
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw p1
.end method

.method private deliverTabletModeChanged(JZ)V
    .registers 10

    .line 1024
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1026
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1027
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1028
    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_22

    .line 1029
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 1030
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    .line 1029
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1032
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_35

    .line 1033
    nop

    :goto_24
    if-ge v2, v1, :cond_34

    .line 1034
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->notifyTabletModeChanged(JZ)V

    .line 1033
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 1037
    :cond_34
    return-void

    .line 1032
    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1
.end method

.method private dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 5

    .line 1938
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p1

    return-object p1
.end method

.method private static flatten(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "TT;TT;>;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1986
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1987
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1988
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1989
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1990
    goto :goto_f

    .line 1991
    :cond_26
    return-object v0
.end method

.method private getContextForDisplay(I)Landroid/content/Context;
    .registers 4

    .line 2068
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_11

    .line 2069
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    return-object p1

    .line 2072
    :cond_11
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_24

    .line 2073
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    .line 2074
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    return-object p1

    .line 2078
    :cond_24
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 2079
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 2080
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    .line 2081
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    return-object p1
.end method

.method private getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
    .registers 13

    .line 859
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 862
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 863
    return-object v2

    .line 865
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 866
    new-instance v3, Lcom/android/server/input/InputManagerService$4;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V

    invoke-direct {p0, v3}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 887
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 888
    return-object v2

    .line 892
    :cond_2c
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 894
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    .line 895
    const/4 v2, 0x0

    move v3, v2

    :goto_35
    if-ge v3, p1, :cond_73

    .line 896
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    .line 897
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 898
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v6

    .line 899
    move v7, v2

    :goto_46
    if-ge v7, v6, :cond_70

    .line 900
    invoke-virtual {v5, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 901
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 902
    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 903
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 899
    :cond_6d
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 895
    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 908
    :cond_73
    move v3, v2

    :goto_74
    if-ge v3, p1, :cond_a4

    .line 909
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    .line 910
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 911
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v6

    .line 912
    move v7, v2

    :goto_85
    if-ge v7, v6, :cond_a1

    .line 913
    invoke-virtual {v5, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 914
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 915
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 912
    :cond_9e
    add-int/lit8 v7, v7, 0x1

    goto :goto_85

    .line 908
    :cond_a1
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 921
    :cond_a4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {p1}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2124
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 2126
    return-object v0

    .line 2128
    :cond_8
    return-object v0
.end method

.method private getDoubleTapTimeout()I
    .registers 2

    .line 2049
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private static getExcludedDeviceNames()[Ljava/lang/String;
    .registers 9

    .line 1960
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1963
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/File;

    .line 1964
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1965
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 1967
    array-length v2, v1

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_56

    aget-object v5, v1, v4

    .line 1968
    new-instance v6, Ljava/io/File;

    const-string v7, "etc/excluded-input-devices.xml"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1970
    :try_start_23
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1971
    invoke-static {v5}, Lcom/android/server/input/ConfigurationProcessor;->processExcludedDeviceNames(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2f} :catch_51
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_30

    goto :goto_52

    .line 1974
    :catch_30
    move-exception v5

    .line 1975
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "InputManager"

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53

    .line 1972
    :catch_51
    move-exception v5

    .line 1976
    :goto_52
    nop

    .line 1967
    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 1978
    :cond_56
    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private getHoverTapSlop()I
    .registers 2

    .line 2044
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method private getHoverTapTimeout()I
    .registers 2

    .line 2039
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method private static getInputPortAssociations()[Ljava/lang/String;
    .registers 5

    .line 2000
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    .line 2001
    new-instance v1, Ljava/io/File;

    const-string v2, "etc/input-port-associations.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2004
    const/4 v0, 0x0

    :try_start_c
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2005
    nop

    .line 2006
    invoke-static {v2}, Lcom/android/server/input/ConfigurationProcessor;->processInputPortAssociations(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    .line 2007
    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2008
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_22} :catch_44
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_23

    return-object v2

    .line 2011
    :catch_23
    move-exception v2

    .line 2012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "InputManager"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 2009
    :catch_44
    move-exception v1

    .line 2013
    nop

    .line 2014
    :goto_46
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method private getKeyRepeatDelay()I
    .registers 2

    .line 2034
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatTimeout()I
    .registers 2

    .line 2029
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 5

    .line 2091
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2092
    return-object v1

    .line 2095
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object p1

    .line 2096
    if-nez p1, :cond_d

    .line 2097
    return-object v1

    .line 2100
    :cond_d
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 2101
    new-instance v2, Lcom/android/server/input/InputManagerService$14;

    invoke-direct {v2, p0, v0}, Lcom/android/server/input/InputManagerService$14;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2114
    const/4 v2, 0x0

    aget-object v2, v0, v2

    if-nez v2, :cond_39

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    return-object v1

    .line 2119
    :cond_39
    return-object v0
.end method

.method private getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 4

    .line 1329
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1333
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v0

    if-nez v0, :cond_19

    .line 1334
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1336
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1337
    const-string/jumbo v1, "vendor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1338
    const-string v1, ",product:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1330
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "identifier and descriptor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .registers 3

    .line 1318
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1319
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0

    .line 1321
    :cond_b
    const/16 v0, 0x7c

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method private getLongPressTimeout()I
    .registers 2

    .line 2054
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getPointerDisplayId()I
    .registers 2

    .line 2086
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerDisplayId()I

    move-result v0

    return v0
.end method

.method private getPointerIcon(I)Landroid/view/PointerIcon;
    .registers 2

    .line 2064
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getContextForDisplay(I)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method private getPointerLayer()I
    .registers 2

    .line 2059
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result v0

    return v0
.end method

.method private getPointerSpeedSetting()I
    .registers 4

    .line 1612
    nop

    .line 1614
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pointer_speed"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_f} :catch_10

    .line 1617
    goto :goto_12

    .line 1616
    :catch_10
    move-exception v0

    const/4 v0, 0x0

    .line 1618
    :goto_12
    return v0
.end method

.method private getShowTouchesSetting(I)I
    .registers 5

    .line 1685
    nop

    .line 1687
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_touches"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_f} :catch_10

    .line 1690
    goto :goto_11

    .line 1689
    :catch_10
    move-exception v0

    .line 1691
    :goto_11
    return p1
.end method

.method private getVirtualKeyQuietTimeMillis()I
    .registers 3

    .line 1954
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getVolumeKeysRotationSetting(I)I
    .registers 5

    .line 1712
    nop

    .line 1714
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "swap_volume_keys_on_rotation"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Llineageos/providers/LineageSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_f
    .catch Llineageos/providers/LineageSettings$LineageSettingNotFoundException; {:try_start_1 .. :try_end_f} :catch_10

    .line 1717
    goto :goto_11

    .line 1716
    :catch_10
    move-exception v0

    .line 1718
    :goto_11
    return p1
.end method

.method private handleSwitchKeyboardLayout(II)V
    .registers 5

    .line 1470
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    .line 1471
    if-eqz p1, :cond_58

    .line 1475
    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object p1

    .line 1476
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 1478
    :try_start_11
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;I)Z

    move-result p2

    .line 1479
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_4e

    .line 1482
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1483
    nop

    .line 1484
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_55

    .line 1486
    if-eqz p2, :cond_58

    .line 1487
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    if-eqz p2, :cond_30

    .line 1488
    invoke-virtual {p2}, Landroid/widget/Toast;->cancel()V

    .line 1489
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1491
    :cond_30
    if-eqz p1, :cond_4a

    .line 1492
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object p1

    .line 1493
    if-eqz p1, :cond_4a

    .line 1494
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 1495
    invoke-virtual {p1}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1494
    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1496
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1500
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    goto :goto_58

    .line 1482
    :catchall_4e
    move-exception p1

    :try_start_4f
    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw p1

    .line 1484
    :catchall_55
    move-exception p1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_55

    throw p1

    .line 1503
    :cond_58
    :goto_58
    return-void
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .registers 5

    .line 1073
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v0, :cond_11

    .line 1074
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 1075
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x13

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1079
    :cond_11
    return-void
.end method

.method private injectInputEventInternal(Landroid/view/InputEvent;I)Z
    .registers 15

    .line 635
    if-eqz p1, :cond_91

    .line 638
    const/4 v0, 0x1

    if-eqz p2, :cond_13

    const/4 v1, 0x2

    if-eq p2, v1, :cond_13

    if-ne p2, v0, :cond_b

    goto :goto_13

    .line 641
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mode is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 644
    :cond_13
    :goto_13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 645
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 646
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 649
    :try_start_1f
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/16 v7, 0x7530

    const/high16 v8, 0x8000000

    move-object v3, p1

    move v4, v9

    move v6, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIII)I

    move-result p1
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_8c

    .line 652
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 653
    nop

    .line 654
    if-eqz p1, :cond_8b

    const-string p2, "Input event injection from pid "

    const-string v1, "InputManager"

    if-eq p1, v0, :cond_6c

    const/4 v0, 0x3

    const/4 v2, 0x0

    if-eq p1, v0, :cond_54

    .line 666
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " failed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return v2

    .line 662
    :cond_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " timed out."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return v2

    .line 656
    :cond_6c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " permission denied."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 660
    :cond_8b
    return v0

    .line 652
    :catchall_8c
    move-exception p1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 636
    :cond_91
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "event must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .registers 5

    .line 1933
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide p1

    return-wide p1
.end method

.method private interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 4

    .line 1921
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result p1

    return p1
.end method

.method private interceptMotionBeforeQueueingNonInteractive(IJI)I
    .registers 6

    .line 1927
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingNonInteractive(IJI)I

    move-result p1

    return p1
.end method

.method private static isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 4

    .line 926
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 927
    return v1

    .line 930
    :cond_10
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 931
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 932
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    .line 933
    return v1

    .line 935
    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method private static native nativeCanDispatchToDisplay(JII)Z
.end method

.method private static native nativeCancelVibrate(JII)V
.end method

.method private static native nativeDisableInputDevice(JI)V
.end method

.method private static native nativeDump(J)Ljava/lang/String;
.end method

.method private static native nativeEnableInputDevice(JI)V
.end method

.method private static native nativeGetKeyCodeState(JIII)I
.end method

.method private static native nativeGetScanCodeState(JIII)I
.end method

.method private static native nativeGetSwitchState(JIII)I
.end method

.method private static native nativeHasKeys(JII[I[Z)Z
.end method

.method private static native nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeInjectInputEvent(JLandroid/view/InputEvent;IIIII)I
.end method

.method private static native nativeIsInputDeviceEnabled(JI)Z
.end method

.method private static native nativeMonitor(J)V
.end method

.method private static native nativePilferPointers(JLandroid/os/IBinder;)V
.end method

.method private static native nativeRegisterInputChannel(JLandroid/view/InputChannel;I)V
.end method

.method private static native nativeRegisterInputMonitor(JLandroid/view/InputChannel;IZ)V
.end method

.method private static native nativeReloadCalibration(J)V
.end method

.method private static native nativeReloadDeviceAliases(J)V
.end method

.method private static native nativeReloadKeyboardLayouts(J)V
.end method

.method private static native nativeReloadPointerIcons(J)V
.end method

.method private static native nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V
.end method

.method private static native nativeSetDisplayViewports(J[Landroid/hardware/display/DisplayViewport;)V
.end method

.method private static native nativeSetFocusedApplication(JILandroid/view/InputApplicationHandle;)V
.end method

.method private static native nativeSetFocusedDisplay(JI)V
.end method

.method private static native nativeSetInputDispatchMode(JZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(JZ)V
.end method

.method private static native nativeSetInputWindows(J[Landroid/view/InputWindowHandle;I)V
.end method

.method private static native nativeSetInteractive(JZ)V
.end method

.method private static native nativeSetMotionClassifierEnabled(JZ)V
.end method

.method private static native nativeSetPointerCapture(JZ)V
.end method

.method private static native nativeSetPointerIconType(JI)V
.end method

.method private static native nativeSetPointerSpeed(JI)V
.end method

.method private static native nativeSetShowTouches(JZ)V
.end method

.method private static native nativeSetSystemUiVisibility(JI)V
.end method

.method private static native nativeSetVolumeKeysRotation(JI)V
.end method

.method private static native nativeStart(J)V
.end method

.method private static native nativeToggleCapsLock(JI)V
.end method

.method private static native nativeTransferTouchFocus(JLandroid/view/InputChannel;Landroid/view/InputChannel;)Z
.end method

.method private static native nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V
.end method

.method private static native nativeVibrate(JI[JII)V
.end method

.method private notifyANR(Landroid/os/IBinder;Ljava/lang/String;)J
    .registers 4

    .line 1899
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyANR(Landroid/os/IBinder;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method private notifyConfigurationChanged(J)V
    .registers 3

    .line 1830
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    .line 1831
    return-void
.end method

.method private notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    .line 1885
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    if-eqz p1, :cond_28

    .line 1886
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne p1, p2, :cond_24

    .line 1887
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "notifyFocusChanged called with unchanged mFocusedWindow="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InputManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    return-void

    .line 1891
    :cond_24
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerCapture(Z)V

    .line 1894
    :cond_28
    invoke-static {p2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    .line 1895
    return-void
.end method

.method private notifyInputChannelBroken(Landroid/os/IBinder;)V
    .registers 3

    .line 1880
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Landroid/os/IBinder;)V

    .line 1881
    return-void
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 6

    .line 1835
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1836
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v1, :cond_15

    .line 1837
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 1838
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1839
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1842
    :cond_15
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 1843
    monitor-exit v0

    .line 1844
    return-void

    .line 1843
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private notifySwitch(JII)V
    .registers 10

    .line 1853
    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 1854
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 1855
    :goto_d
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v3, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V

    .line 1858
    :cond_12
    and-int/lit16 v0, p4, 0x200

    if-eqz v0, :cond_22

    .line 1859
    and-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 1860
    :goto_1d
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v3, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 1863
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_2f

    and-int/lit16 v0, p4, 0xd4

    if-eqz v0, :cond_2f

    .line 1864
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    .line 1868
    :cond_2f
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_58

    .line 1869
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p4

    .line 1870
    const-wide/16 v3, -0x1

    and-long/2addr v3, p1

    long-to-int v0, v3

    iput v0, p4, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1871
    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p4, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1872
    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_48

    move v1, v2

    :cond_48
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1873
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2, p4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1874
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1876
    :cond_58
    return-void
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .registers 4

    .line 770
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 772
    monitor-exit v0

    .line 773
    return-void

    .line 772
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private onPointerDownOutsideFocus(Landroid/os/IBinder;)V
    .registers 3

    .line 1949
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->onPointerDownOutsideFocus(Landroid/os/IBinder;)V

    .line 1950
    return-void
.end method

.method private onTabletModeChangedListenerDied(I)V
    .registers 4

    .line 1017
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1018
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1019
    monitor-exit v0

    .line 1020
    return-void

    .line 1019
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private registerAccessibilityLargePointerSettingObserver()V
    .registers 6

    .line 1646
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1647
    const-string v1, "accessibility_large_pointer_icon"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$11;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$11;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1646
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1654
    return-void
.end method

.method private registerLongPressTimeoutObserver()V
    .registers 6

    .line 1674
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1675
    const-string v1, "long_press_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$12;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1674
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1682
    return-void
.end method

.method private registerPointerSpeedSettingObserver()V
    .registers 6

    .line 1601
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1602
    const-string/jumbo v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$9;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1601
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1609
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .registers 6

    .line 1627
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1628
    const-string/jumbo v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$10;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1627
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1635
    return-void
.end method

.method private reloadDeviceAliases()V
    .registers 3

    .line 426
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadDeviceAliases(J)V

    .line 427
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .registers 3

    .line 419
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadKeyboardLayouts(J)V

    .line 420
    return-void
.end method

.method private setDisplayViewportsInternal(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    .line 430
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/hardware/display/DisplayViewport;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/display/DisplayViewport;

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetDisplayViewports(J[Landroid/hardware/display/DisplayViewport;)V

    .line 431
    return-void
.end method

.method private setPointerCapture(Z)V
    .registers 4

    .line 1533
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindowHasCapture:Z

    if-eq v0, p1, :cond_12

    .line 1534
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindowHasCapture:Z

    .line 1536
    :try_start_6
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    invoke-interface {v0, p1}, Landroid/view/IWindow;->dispatchPointerCaptureChanged(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 1539
    goto :goto_d

    .line 1537
    :catch_c
    move-exception v0

    .line 1540
    :goto_d
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerCapture(JZ)V

    .line 1542
    :cond_12
    return-void
.end method

.method private setPointerSpeedUnchecked(I)V
    .registers 4

    .line 1595
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1597
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerSpeed(JI)V

    .line 1598
    return-void
.end method

.method private showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    .registers 9

    .line 1041
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-nez v0, :cond_74

    .line 1042
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.settings.HARD_KEYBOARD_SETTINGS"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1043
    if-eqz p1, :cond_16

    .line 1044
    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object p1

    const-string v0, "input_device_identifier"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1046
    :cond_16
    const/high16 p1, 0x14200000

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1049
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1052
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1053
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x1040663

    .line 1055
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x1040662

    .line 1057
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1059
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const v0, 0x1080510

    .line 1060
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const v1, 0x106001c

    .line 1061
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 1063
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 1064
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x13

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1067
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 1069
    :cond_74
    return-void
.end method

.method private updateAccessibilityLargePointerFromSettings()V
    .registers 5

    .line 1638
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 1639
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1638
    const/4 v1, 0x0

    const-string v2, "accessibility_large_pointer_icon"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1641
    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v1, v2

    :cond_12
    invoke-static {v1}, Landroid/view/PointerIcon;->setUseLargeIcons(Z)V

    .line 1642
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadPointerIcons(J)V

    .line 1643
    return-void
.end method

.method private updateDeepPressStatusFromSettings(Ljava/lang/String;)V
    .registers 7

    .line 1658
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x190

    const-string v2, "long_press_timeout"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1661
    nop

    .line 1662
    const/4 v2, 0x1

    const-string v3, "input_native_boot"

    const-string v4, "deep_press_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 1664
    if-eqz v3, :cond_1e

    if-gt v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    .line 1666
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1667
    if-eqz v2, :cond_29

    const-string v4, "Enabling"

    goto :goto_2b

    :cond_29
    const-string v4, "Disabling"

    :goto_2b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " motion classifier because "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": feature "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    if-eqz v3, :cond_40

    const-string p1, "enabled"

    goto :goto_42

    :cond_40
    const-string p1, "disabled"

    :goto_42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", long press timeout = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1666
    const-string v0, "InputManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSetMotionClassifierEnabled(JZ)V

    .line 1671
    return-void
.end method

.method private updateKeyboardLayouts()V
    .registers 4

    .line 1084
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1085
    new-instance v1, Lcom/android/server/input/InputManagerService$5;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1092
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1094
    :try_start_10
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_20

    .line 1096
    :try_start_15
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1097
    nop

    .line 1098
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_27

    .line 1101
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 1102
    return-void

    .line 1096
    :catchall_20
    move-exception v0

    :try_start_21
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v0

    .line 1098
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_27

    throw v0
.end method

.method private updatePointerSpeedFromSettings()V
    .registers 2

    .line 1590
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    move-result v0

    .line 1591
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1592
    return-void
.end method

.method private updateShowTouchesFromSettings()V
    .registers 5

    .line 1622
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    move-result v1

    .line 1623
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-static {v2, v3, v0}, Lcom/android/server/input/InputManagerService;->nativeSetShowTouches(JZ)V

    .line 1624
    return-void
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 10

    .line 1200
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1201
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    const v2, 0xc0080

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1205
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1206
    iget v5, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1207
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1208
    goto :goto_18

    .line 1209
    :cond_30
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 10

    .line 1213
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    move-result-object p1

    .line 1214
    if-eqz p1, :cond_26

    .line 1215
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1217
    :try_start_c
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0xc0080

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1222
    iget-object v4, p1, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_24} :catch_25

    .line 1224
    goto :goto_26

    .line 1223
    :catch_25
    move-exception p1

    .line 1226
    :cond_26
    :goto_26
    return-void
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 26

    .line 1230
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1231
    if-nez v3, :cond_b

    .line 1232
    return-void

    .line 1235
    :cond_b
    const-string v4, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1236
    const-string v4, "/"

    const-string v5, "InputManager"

    if-nez v3, :cond_36

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    return-void

    .line 1242
    :cond_36
    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1243
    if-eqz v6, :cond_41

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_43

    :cond_41
    const-string v6, ""

    .line 1245
    :goto_43
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v15, 0x1

    and-int/2addr v7, v15

    const/4 v14, 0x0

    if-eqz v7, :cond_4f

    .line 1246
    move/from16 v16, p4

    goto :goto_51

    .line 1248
    :cond_4f
    move/from16 v16, v14

    .line 1252
    :goto_51
    :try_start_51
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 1253
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5b} :catch_147

    .line 1255
    :try_start_5b
    const-string v7, "keyboard-layouts"

    invoke-static {v3, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1258
    :goto_60
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1259
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_142

    .line 1260
    if-nez v7, :cond_70

    .line 1261
    nop

    .line 1308
    :try_start_6a
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_147

    .line 1309
    nop

    .line 1313
    goto/16 :goto_166

    .line 1263
    :cond_70
    :try_start_70
    const-string v8, "keyboard-layout"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_111

    .line 1264
    sget-object v7, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13
    :try_end_7e
    .catchall {:try_start_70 .. :try_end_7e} :catchall_142

    .line 1267
    :try_start_7e
    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1269
    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1271
    const/4 v8, 0x2

    invoke-virtual {v13, v8, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 1274
    const/4 v8, 0x3

    invoke-virtual {v13, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1276
    invoke-static {v8}, Lcom/android/server/input/InputManagerService;->getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v17

    .line 1277
    const/4 v8, 0x5

    const/4 v10, -0x1

    invoke-virtual {v13, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 1279
    const/4 v8, 0x4

    invoke-virtual {v13, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 1282
    if-eqz v7, :cond_df

    if-eqz v9, :cond_df

    if-nez v12, :cond_ac

    move-object/from16 v8, p5

    move-object/from16 v17, v13

    move/from16 v18, v14

    goto :goto_e5

    .line 1288
    :cond_ac
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v8, v10, v7}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1290
    if-eqz v2, :cond_c4

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bd

    goto :goto_c4

    :cond_bd
    move-object/from16 v8, p5

    move-object/from16 v17, v13

    move/from16 v18, v14

    goto :goto_103

    .line 1291
    :cond_c4
    :goto_c4
    new-instance v11, Landroid/hardware/input/KeyboardLayout;
    :try_end_c6
    .catchall {:try_start_7e .. :try_end_c6} :catchall_10a

    move-object v7, v11

    move-object v10, v6

    move-object v15, v11

    move/from16 v11, v16

    move v2, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v13

    move/from16 v13, v18

    move/from16 v18, v14

    move/from16 v14, v19

    :try_start_d6
    invoke-direct/range {v7 .. v14}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;II)V

    .line 1294
    move-object/from16 v8, p5

    invoke-interface {v8, v0, v2, v15}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    goto :goto_103

    .line 1282
    :cond_df
    move-object/from16 v8, p5

    move-object/from16 v17, v13

    move/from16 v18, v14

    .line 1283
    :goto_e5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catchall {:try_start_d6 .. :try_end_103} :catchall_108

    .line 1299
    :goto_103
    :try_start_103
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 1300
    nop

    .line 1301
    goto :goto_13b

    .line 1299
    :catchall_108
    move-exception v0

    goto :goto_10d

    :catchall_10a
    move-exception v0

    move-object/from16 v17, v13

    :goto_10d
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 1302
    :cond_111
    move-object/from16 v8, p5

    move/from16 v18, v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping unrecognized element \'"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' in keyboard layout resource from receiver "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catchall {:try_start_103 .. :try_end_13b} :catchall_142

    .line 1306
    :goto_13b
    move-object/from16 v2, p3

    move/from16 v14, v18

    const/4 v15, 0x1

    goto/16 :goto_60

    .line 1308
    :catchall_142
    move-exception v0

    :try_start_143
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_147} :catch_147

    .line 1310
    :catch_147
    move-exception v0

    .line 1311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse keyboard layout resource from receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1314
    :goto_166
    return-void
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 7

    .line 1404
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v1, "addKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1408
    if-eqz p2, :cond_5b

    .line 1412
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1413
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1415
    :try_start_13
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1416
    if-nez v2, :cond_2f

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1417
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1419
    :cond_2f
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 1421
    invoke-virtual {p1, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1420
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    .line 1422
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_49
    .catchall {:try_start_13 .. :try_end_49} :catchall_51

    .line 1425
    :cond_49
    :try_start_49
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1426
    nop

    .line 1427
    monitor-exit v1

    .line 1428
    return-void

    .line 1425
    :catchall_51
    move-exception p1

    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw p1

    .line 1427
    :catchall_58
    move-exception p1

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_58

    throw p1

    .line 1409
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1406
    :cond_63
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canDispatchToDisplay(II)Z
    .registers 5

    .line 2024
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeCanDispatchToDisplay(JII)Z

    move-result p1

    return p1
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .registers 5

    .line 1753
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1754
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1755
    if-eqz p2, :cond_17

    iget v1, p2, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    if-eq v1, p1, :cond_12

    goto :goto_17

    .line 1758
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_19

    .line 1760
    invoke-direct {p0, p2}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1761
    return-void

    .line 1756
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v0

    return-void

    .line 1758
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public disableInputDevice(I)V
    .registers 4

    .line 709
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "disableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 713
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeDisableInputDevice(JI)V

    .line 714
    return-void

    .line 711
    :cond_10
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1795
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string p3, "InputManager"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 1797
    :cond_b
    const-string p1, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1798
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeDump(J)Ljava/lang/String;

    move-result-object p1

    .line 1799
    if-eqz p1, :cond_1b

    .line 1800
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1802
    :cond_1b
    return-void
.end method

.method public enableInputDevice(I)V
    .registers 4

    .line 699
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "enableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 703
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeEnableInputDevice(JI)V

    .line 704
    return-void

    .line 701
    :cond_10
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .registers 5

    .line 1905
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1906
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v1, :cond_11

    .line 1908
    :try_start_7
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v1, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_17

    .line 1911
    goto :goto_e

    .line 1909
    :catch_d
    move-exception p1

    .line 1912
    :goto_e
    const/4 p1, 0x0

    :try_start_f
    monitor-exit v0

    return p1

    .line 1914
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    .line 1915
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 1916
    const/4 p1, 0x1

    return p1

    .line 1914
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 6

    .line 1345
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1346
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1347
    nop

    .line 1349
    :try_start_8
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1350
    if-nez v2, :cond_24

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1352
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1358
    :cond_24
    monitor-exit v1

    return-object v2

    .line 1359
    :catchall_26
    move-exception p1

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 6

    .line 1390
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1391
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1392
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1393
    if-eqz v2, :cond_12

    array-length v3, v2

    if-nez v3, :cond_26

    .line 1394
    :cond_12
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1395
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1397
    :cond_26
    monitor-exit v1

    return-object v2

    .line 1398
    :catchall_28
    move-exception p1

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 7

    .line 678
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, v1

    .line 680
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_18

    .line 681
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v3, v3, v2

    .line 682
    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v4

    if-ne v4, p1, :cond_15

    .line 683
    monitor-exit v0

    return-object v3

    .line 680
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 686
    :cond_18
    monitor-exit v0

    .line 687
    const/4 p1, 0x0

    return-object p1

    .line 686
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public getInputDeviceIds()[I
    .registers 6

    .line 722
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, v1

    .line 724
    new-array v2, v1, [I

    .line 725
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_18

    .line 726
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v4

    aput v4, v2, v3

    .line 725
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 728
    :cond_18
    monitor-exit v0

    return-object v2

    .line 729
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .registers 3

    .line 737
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    monitor-exit v0

    return-object v1

    .line 739
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getKeyCodeState(III)I
    .registers 6

    .line 443
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetKeyCodeState(JIII)I

    move-result p1

    return p1
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 6

    .line 1180
    if-eqz p1, :cond_30

    .line 1184
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/input/KeyboardLayout;

    .line 1185
    new-instance v1, Lcom/android/server/input/InputManagerService$8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1192
    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_2d

    .line 1193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "InputManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_2d
    aget-object p1, v0, v1

    return-object p1

    .line 1181
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "keyboardLayoutDescriptor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 3

    .line 1118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    new-instance v1, Lcom/android/server/input/InputManagerService$6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1126
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/input/KeyboardLayout;

    return-object v0
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .registers 11

    .line 1132
    nop

    .line 1133
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v2

    .line 1134
    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1136
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    new-instance v8, Lcom/android/server/input/InputManagerService$7;

    move-object v0, v8

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V

    invoke-direct {p0, v8}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1168
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1169
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1170
    add-int v1, p1, v0

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    .line 1171
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1172
    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v0, :cond_3c

    .line 1173
    add-int v3, p1, v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    aput-object v4, v1, v3

    .line 1172
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 1175
    :cond_3c
    return-object v1
.end method

.method public getScanCodeState(III)I
    .registers 6

    .line 456
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetScanCodeState(JIII)I

    move-result p1

    return p1
.end method

.method public getSwitchState(III)I
    .registers 6

    .line 469
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetSwitchState(JIII)I

    move-result p1

    return p1
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 5

    .line 941
    if-eqz p1, :cond_10

    .line 945
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 946
    :try_start_5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 947
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p1

    .line 942
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputDeviceDescriptor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasKeys(II[I[Z)Z
    .registers 13

    .line 486
    if-eqz p3, :cond_1b

    .line 489
    if-eqz p4, :cond_13

    array-length v0, p4

    array-length v1, p3

    if-lt v0, v1, :cond_13

    .line 494
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->nativeHasKeys(JII[I[Z)Z

    move-result p1

    return p1

    .line 490
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 487
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keyCodes must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 3

    .line 631
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;I)Z

    move-result p1

    return p1
.end method

.method public isInTabletMode()I
    .registers 4

    .line 981
    const-string v0, "android.permission.TABLET_MODE"

    const-string v1, "isInTabletMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 985
    const/4 v0, -0x1

    const/16 v1, -0x100

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0

    .line 983
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TABLET_MODE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInputDeviceEnabled(I)Z
    .registers 4

    .line 693
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeIsInputDeviceEnabled(JI)Z

    move-result p1

    return p1
.end method

.method public monitor()V
    .registers 3

    .line 1824
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_a

    .line 1825
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeMonitor(J)V

    .line 1826
    return-void

    .line 1824
    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method

.method public monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;
    .registers 11

    .line 530
    const-string v0, "android.permission.MONITOR_INPUT"

    const-string/jumbo v1, "monitorInputRegion()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 535
    const-string v0, "inputChannelName must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    if-ltz p2, :cond_43

    .line 542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 544
    :try_start_16
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v2

    .line 545
    new-instance v3, Lcom/android/server/input/InputManagerService$InputMonitorHost;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-direct {v3, p0, v5}, Lcom/android/server/input/InputManagerService$InputMonitorHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V

    .line 546
    aget-object v5, v2, v4

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$InputMonitorHost;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/InputChannel;->setToken(Landroid/os/IBinder;)V

    .line 547
    iget-wide v5, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    aget-object v4, v2, v4

    const/4 v7, 0x1

    invoke-static {v5, v6, v4, p2, v7}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputMonitor(JLandroid/view/InputChannel;IZ)V

    .line 549
    new-instance p2, Landroid/view/InputMonitor;

    aget-object v2, v2, v7

    invoke-direct {p2, p1, v2, v3}, Landroid/view/InputMonitor;-><init>(Ljava/lang/String;Landroid/view/InputChannel;Landroid/view/IInputMonitorHost;)V
    :try_end_3a
    .catchall {:try_start_16 .. :try_end_3a} :catchall_3e

    .line 551
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    return-object p2

    .line 551
    :catchall_3e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 538
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "displayId must >= 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 532
    :cond_4b
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires MONITOR_INPUT permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;
    .registers 7

    .line 504
    if-eqz p1, :cond_2b

    .line 508
    if-ltz p2, :cond_23

    .line 512
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object p1

    .line 514
    const/4 v0, 0x0

    aget-object v1, p1, v0

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/InputChannel;->setToken(Landroid/os/IBinder;)V

    .line 515
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    aget-object v3, p1, v0

    invoke-static {v1, v2, v3, p2, v0}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputMonitor(JLandroid/view/InputChannel;IZ)V

    .line 516
    aget-object p2, p1, v0

    invoke-virtual {p2}, Landroid/view/InputChannel;->dispose()V

    .line 517
    const/4 p2, 0x1

    aget-object p1, p1, p2

    return-object p1

    .line 509
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "displayId must >= 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 505
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputChannelName must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDisplayRemoved(I)V
    .registers 5

    .line 1515
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/input/InputManagerService;->nativeSetInputWindows(J[Landroid/view/InputWindowHandle;I)V

    .line 1516
    return-void
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 5

    .line 1764
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1765
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 1768
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1769
    return-void

    .line 1766
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Landroid/os/IBinder;)V
    .registers 5

    .line 562
    if-eqz p1, :cond_13

    .line 566
    if-nez p2, :cond_9

    .line 567
    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    .line 569
    :cond_9
    invoke-virtual {p1, p2}, Landroid/view/InputChannel;->setToken(Landroid/os/IBinder;)V

    .line 571
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 p2, -0x1

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;I)V

    .line 572
    return-void

    .line 563
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputChannel must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .registers 6

    .line 744
    if-eqz p1, :cond_38

    .line 748
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 750
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 755
    new-instance v2, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_35

    .line 758
    :try_start_16
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 759
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_26
    .catchall {:try_start_16 .. :try_end_1e} :catchall_35

    .line 763
    nop

    .line 765
    :try_start_1f
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 766
    monitor-exit v0

    .line 767
    return-void

    .line 760
    :catch_26
    move-exception p1

    .line 762
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 751
    :cond_2d
    new-instance p1, Ljava/lang/SecurityException;

    const-string v1, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {p1, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 766
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_35

    throw p1

    .line 745
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .registers 6

    .line 990
    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "registerTabletModeChangedListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 994
    if-eqz p1, :cond_43

    .line 998
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1000
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_38

    .line 1004
    new-instance v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_40

    .line 1007
    :try_start_21
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1008
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_31
    .catchall {:try_start_21 .. :try_end_29} :catchall_40

    .line 1011
    nop

    .line 1012
    :try_start_2a
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1013
    monitor-exit v0

    .line 1014
    return-void

    .line 1009
    :catch_31
    move-exception p1

    .line 1010
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1001
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The calling process has already registered a TabletModeChangedListener."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1013
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_40

    throw p1

    .line 995
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 992
    :cond_4b
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires TABLET_MODE_LISTENER permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerVolumeKeysRotationSettingObserver()V
    .registers 5

    .line 1700
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1701
    const-string/jumbo v1, "swap_volume_keys_on_rotation"

    invoke-static {v1}, Llineageos/providers/LineageSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$13;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$13;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1700
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1709
    return-void
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 8

    .line 1433
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "removeKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1437
    if-eqz p2, :cond_71

    .line 1441
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1442
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1444
    :try_start_14
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1445
    if-nez v2, :cond_30

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 1446
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1448
    :cond_30
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1449
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 1451
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    or-int/2addr v3, p1

    .line 1454
    :cond_4b
    if-eqz v3, :cond_5f

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 1455
    invoke-virtual {p1, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1454
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    .line 1456
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_5f
    .catchall {:try_start_14 .. :try_end_5f} :catchall_67

    .line 1459
    :cond_5f
    :try_start_5f
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1460
    nop

    .line 1461
    monitor-exit v1

    .line 1462
    return-void

    .line 1459
    :catchall_67
    move-exception p1

    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw p1

    .line 1461
    :catchall_6e
    move-exception p1

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_6e

    throw p1

    .line 1438
    :cond_71
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1435
    :cond_79
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestPointerCapture(Landroid/os/IBinder;Z)V
    .registers 5

    .line 1520
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    const-string v1, "InputManager"

    if-eqz v0, :cond_32

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_d

    goto :goto_32

    .line 1525
    :cond_d
    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindowHasCapture:Z

    if-ne p1, p2, :cond_2e

    .line 1526
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestPointerCapture: already "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_21

    const-string p2, "enabled"

    goto :goto_23

    :cond_21
    const-string p2, "disabled"

    :goto_23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    return-void

    .line 1529
    :cond_2e
    invoke-direct {p0, p2}, Lcom/android/server/input/InputManagerService;->setPointerCapture(Z)V

    .line 1530
    return-void

    .line 1521
    :cond_32
    :goto_32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestPointerCapture called for a window that has no focus: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    return-void
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 5

    .line 1365
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "setCurrentKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1369
    if-eqz p2, :cond_34

    .line 1373
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object p1

    .line 1374
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 1376
    :try_start_14
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 1380
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_2a

    .line 1383
    :cond_22
    :try_start_22
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1384
    nop

    .line 1385
    monitor-exit v0

    .line 1386
    return-void

    .line 1383
    :catchall_2a
    move-exception p1

    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw p1

    .line 1385
    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_31

    throw p1

    .line 1370
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1367
    :cond_3c
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .registers 4

    .line 1789
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V

    .line 1791
    return-void
.end method

.method public setFocusedApplication(ILandroid/view/InputApplicationHandle;)V
    .registers 5

    .line 1506
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedApplication(JILandroid/view/InputApplicationHandle;)V

    .line 1507
    return-void
.end method

.method public setFocusedDisplay(I)V
    .registers 4

    .line 1510
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedDisplay(JI)V

    .line 1511
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .registers 5

    .line 1545
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInputDispatchMode(JZZ)V

    .line 1546
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .registers 6

    .line 598
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 600
    if-ne v1, p1, :cond_9

    .line 601
    monitor-exit v0

    return-void

    .line 604
    :cond_9
    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 605
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 606
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    .line 607
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_38

    .line 609
    :try_start_15
    invoke-interface {v1}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19
    .catchall {:try_start_15 .. :try_end_18} :catchall_38

    .line 612
    goto :goto_1a

    .line 610
    :catch_19
    move-exception v1

    .line 615
    :cond_1a
    :goto_1a
    if-eqz p1, :cond_2c

    .line 616
    :try_start_1c
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 617
    new-instance v1, Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_38

    .line 619
    :try_start_25
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-interface {p1, v1}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b
    .catchall {:try_start_25 .. :try_end_2a} :catchall_38

    .line 622
    goto :goto_2c

    .line 620
    :catch_2b
    move-exception v1

    .line 625
    :cond_2c
    :goto_2c
    :try_start_2c
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz p1, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    invoke-static {v1, v2, p1}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(JZ)V

    .line 626
    monitor-exit v0

    .line 627
    return-void

    .line 626
    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public setPointerIconType(I)V
    .registers 4

    .line 1783
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerIconType(JI)V

    .line 1784
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .registers 4

    .line 1549
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetSystemUiVisibility(JI)V

    .line 1550
    return-void
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .registers 6

    .line 953
    const-string v0, "android.permission.SET_INPUT_CALIBRATION"

    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 957
    if-eqz p1, :cond_47

    .line 960
    if-eqz p3, :cond_3f

    .line 963
    if-ltz p2, :cond_36

    const/4 v0, 0x3

    if-gt p2, v0, :cond_36

    .line 967
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 969
    :try_start_17
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 971
    iget-wide p1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {p1, p2}, Lcom/android/server/input/InputManagerService;->nativeReloadCalibration(J)V
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_2c

    .line 974
    :cond_24
    :try_start_24
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 975
    nop

    .line 976
    monitor-exit v0

    .line 977
    return-void

    .line 974
    :catchall_2c
    move-exception p1

    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw p1

    .line 976
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    throw p1

    .line 964
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "surfaceRotation value out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 961
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "calibration must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 958
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputDeviceDescriptor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 955
    :cond_4f
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires SET_INPUT_CALIBRATION permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 341
    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .registers 2

    .line 344
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 345
    return-void
.end method

.method public start()V
    .registers 6

    .line 348
    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeStart(J)V

    .line 352
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 354
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    .line 355
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    .line 356
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerAccessibilityLargePointerSettingObserver()V

    .line 357
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerLongPressTimeoutObserver()V

    .line 358
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerVolumeKeysRotationSettingObserver()V

    .line 360
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 371
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    .line 372
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    .line 373
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    .line 374
    const-string v0, "just booted"

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->updateDeepPressStatusFromSettings(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateVolumeKeysRotationFromSettings()V

    .line 376
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .registers 5

    .line 1465
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1466
    return-void
.end method

.method public systemRunning()V
    .registers 6

    .line 383
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 387
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 388
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 399
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 407
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 408
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 410
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    if-eqz v0, :cond_5f

    .line 411
    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->systemReady()V

    .line 413
    :cond_5f
    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .registers 5

    .line 1566
    if-eqz p1, :cond_14

    .line 1569
    if-eqz p2, :cond_b

    .line 1572
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeTransferTouchFocus(JLandroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result p1

    return p1

    .line 1570
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "toChannel must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1567
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fromChannel must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tryPointerSpeed(I)V
    .registers 4

    .line 1577
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string/jumbo v1, "tryPointerSpeed()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1582
    const/4 v0, -0x7

    if-lt p1, v0, :cond_15

    const/4 v0, 0x7

    if-gt p1, v0, :cond_15

    .line 1586
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1587
    return-void

    .line 1583
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "speed out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1579
    :cond_1e
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires SET_POINTER_SPEED permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .registers 4

    .line 579
    if-eqz p1, :cond_8

    .line 583
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    .line 584
    return-void

    .line 580
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inputChannel must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateVolumeKeysRotationFromSettings()V
    .registers 4

    .line 1695
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getVolumeKeysRotationSetting(I)I

    move-result v0

    .line 1696
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2, v0}, Lcom/android/server/input/InputManagerService;->nativeSetVolumeKeysRotation(JI)V

    .line 1697
    return-void
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .registers 13

    .line 1724
    array-length v0, p2

    if-ge p3, v0, :cond_44

    .line 1729
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1730
    :try_start_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1731
    if-nez v1, :cond_2d

    .line 1732
    new-instance v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    iget v2, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v1, p0, p1, p4, v2}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_41

    .line 1734
    const/4 v2, 0x0

    :try_start_1c
    invoke-interface {p4, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_26
    .catchall {:try_start_1c .. :try_end_1f} :catchall_41

    .line 1738
    nop

    .line 1739
    :try_start_20
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 1735
    :catch_26
    move-exception p1

    .line 1737
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1741
    :cond_2d
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_41

    .line 1743
    monitor-enter v1

    .line 1744
    const/4 p4, 0x1

    :try_start_30
    iput-boolean p4, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1745
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v7, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->nativeVibrate(JI[JII)V

    .line 1746
    monitor-exit v1

    .line 1747
    return-void

    .line 1746
    :catchall_3e
    move-exception p1

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_3e

    throw p1

    .line 1741
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1

    .line 1725
    :cond_44
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method
