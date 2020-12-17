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
    .registers 6
    .param p1, "context"  # Landroid/content/Context;

    .line 312
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 161
    new-instance v0, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 166
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/InputDevice;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 313
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 314
    new-instance v0, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 316
    nop

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 318
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

    .line 320
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "doubleTouchGestureEnablePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b2

    move-object v1, v2

    goto :goto_b7

    .line 325
    :cond_b2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_b7
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    .line 327
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    new-instance v3, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    invoke-static {v1, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 328
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/input/InputManagerService;

    .line 122
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$1000(JLandroid/view/InputEvent;IIIII)I
    .registers 9
    .param p0, "x0"  # J
    .param p2, "x1"  # Landroid/view/InputEvent;
    .param p3, "x2"  # I
    .param p4, "x3"  # I
    .param p5, "x4"  # I
    .param p6, "x5"  # I
    .param p7, "x6"  # I

    .line 122
    invoke-static/range {p0 .. p7}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(JLandroid/os/IBinder;)V
    .registers 3
    .param p0, "x0"  # J
    .param p2, "x1"  # Landroid/os/IBinder;

    .line 122
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativePilferPointers(JLandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1200(JLandroid/view/InputChannel;)V
    .registers 3
    .param p0, "x0"  # J
    .param p2, "x1"  # Landroid/view/InputChannel;

    .line 122
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"  # I

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"  # I

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onTabletModeChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"  # Ljava/util/List;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;I)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"  # Landroid/view/InputEvent;
    .param p2, "x2"  # I

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(JZ)V
    .registers 3
    .param p0, "x0"  # J
    .param p2, "x1"  # Z

    .line 122
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInteractive(JZ)V

    return-void
.end method

.method static synthetic access$1800(JI)V
    .registers 3
    .param p0, "x0"  # J
    .param p2, "x1"  # I

    .line 122
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeToggleCapsLock(JI)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/input/InputManagerService;)Ljava/io/File;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/input/InputManagerService;

    .line 122
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/input/InputManagerService;

    .line 122
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method static synthetic access$400(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 3
    .param p0, "x0"  # Ljava/util/Locale;
    .param p1, "x1"  # Ljava/util/Locale;

    .line 122
    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"  # [Landroid/view/InputDevice;

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/input/InputManagerService;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/input/InputManagerService;

    .line 122
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/input/InputManagerService;JZ)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"  # J
    .param p3, "x2"  # Z

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/input/InputManagerService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/input/InputManagerService;

    .line 122
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    return-wide v0
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 6
    .param p1, "v"  # Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1679
    monitor-enter p1

    .line 1680
    :try_start_1
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_11

    .line 1681
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v3, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeCancelVibrate(JII)V

    .line 1682
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1684
    :cond_11
    monitor-exit p1

    .line 1685
    return-void

    .line 1684
    :catchall_13
    move-exception v0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "permission"  # Ljava/lang/String;
    .param p2, "func"  # Ljava/lang/String;

    .line 1713
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 1714
    return v2

    .line 1717
    :cond_c
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 1718
    return v2

    .line 1720
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1724
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const/4 v1, 0x0

    return v1
.end method

.method private checkInjectEventsPermission(II)Z
    .registers 5
    .param p1, "injectorPid"  # I
    .param p2, "injectorUid"  # I

    .line 1852
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .registers 6
    .param p0, "inputDevices"  # [Landroid/view/InputDevice;
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 1091
    array-length v0, p0

    .line 1092
    .local v0, "numDevices":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_15

    .line 1093
    aget-object v2, p0, v1

    .line 1094
    .local v2, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1095
    const/4 v3, 0x1

    return v3

    .line 1092
    .end local v2  # "inputDevice":Landroid/view/InputDevice;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1098
    .end local v1  # "i":I
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 14
    .param p1, "oldInputDevices"  # [Landroid/view/InputDevice;

    .line 763
    const/4 v0, 0x0

    .line 764
    .local v0, "numFullKeyboardsAdded":I
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 765
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 768
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 769
    :try_start_e
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v2, :cond_14

    .line 770
    monitor-exit v1

    return-void

    .line 772
    :cond_14
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 774
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 775
    .local v3, "numListeners":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v3, :cond_30

    .line 776
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 777
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    .line 776
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 780
    .end local v4  # "i":I
    :cond_30
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v4, v4

    .line 781
    .local v4, "numDevices":I
    mul-int/lit8 v5, v4, 0x2

    new-array v5, v5, [I

    .line 782
    .local v5, "deviceIdAndGeneration":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_38
    const/4 v7, 0x1

    if-ge v6, v4, :cond_7c

    .line 783
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v8, v8, v6

    .line 784
    .local v8, "inputDevice":Landroid/view/InputDevice;
    mul-int/lit8 v9, v6, 0x2

    invoke-virtual {v8}, Landroid/view/InputDevice;->getId()I

    move-result v10

    aput v10, v5, v9

    .line 785
    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v9, v7

    invoke-virtual {v8}, Landroid/view/InputDevice;->getGeneration()I

    move-result v7

    aput v7, v5, v9

    .line 787
    invoke-virtual {v8}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v7

    if-nez v7, :cond_79

    invoke-virtual {v8}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v7

    if-eqz v7, :cond_79

    .line 788
    nop

    .line 789
    invoke-virtual {v8}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 788
    invoke-static {p1, v7}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 790
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;
    :try_end_69
    .catchall {:try_start_e .. :try_end_69} :catchall_ff

    add-int/lit8 v9, v0, 0x1

    .end local v0  # "numFullKeyboardsAdded":I
    .local v9, "numFullKeyboardsAdded":I
    :try_start_6b
    invoke-virtual {v7, v0, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_70

    move v0, v9

    goto :goto_79

    .line 796
    .end local v3  # "numListeners":I
    .end local v4  # "numDevices":I
    .end local v5  # "deviceIdAndGeneration":[I
    .end local v6  # "i":I
    .end local v8  # "inputDevice":Landroid/view/InputDevice;
    :catchall_70
    move-exception v2

    move v0, v9

    goto/16 :goto_100

    .line 792
    .end local v9  # "numFullKeyboardsAdded":I
    .restart local v0  # "numFullKeyboardsAdded":I
    .restart local v3  # "numListeners":I
    .restart local v4  # "numDevices":I
    .restart local v5  # "deviceIdAndGeneration":[I
    .restart local v6  # "i":I
    .restart local v8  # "inputDevice":Landroid/view/InputDevice;
    :cond_74
    :try_start_74
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    .end local v8  # "inputDevice":Landroid/view/InputDevice;
    :cond_79
    :goto_79
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 796
    .end local v4  # "numDevices":I
    .end local v6  # "i":I
    :cond_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_ff

    .line 799
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7e
    if-ge v1, v3, :cond_8e

    .line 800
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    .line 799
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    .line 803
    .end local v1  # "i":I
    :cond_8e
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 806
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    .line 807
    .local v4, "keyboardsMissingLayout":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 808
    .local v6, "numFullKeyboards":I
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v8

    .line 809
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_a3
    if-ge v1, v6, :cond_cf

    .line 810
    :try_start_a5
    iget-object v9, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InputDevice;

    .line 811
    .local v9, "inputDevice":Landroid/view/InputDevice;
    nop

    .line 812
    invoke-virtual {v9}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v10

    .line 813
    .local v10, "layout":Ljava/lang/String;
    if-nez v10, :cond_c7

    .line 814
    invoke-direct {p0, v9}, Lcom/android/server/input/InputManagerService;->getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 815
    if-eqz v10, :cond_c7

    .line 816
    nop

    .line 817
    invoke-virtual {v9}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v11

    .line 816
    invoke-virtual {p0, v11, v10}, Lcom/android/server/input/InputManagerService;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 820
    :cond_c7
    if-nez v10, :cond_cc

    .line 821
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    .end local v9  # "inputDevice":Landroid/view/InputDevice;
    .end local v10  # "layout":Ljava/lang/String;
    :cond_cc
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    .line 824
    .end local v1  # "i":I
    :cond_cf
    monitor-exit v8
    :try_end_d0
    .catchall {:try_start_a5 .. :try_end_d0} :catchall_fc

    .line 826
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_f6

    .line 827
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ef

    .line 828
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v7, :cond_e5

    .line 832
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_f6

    .line 834
    :cond_e5
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputDevice;

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_f6

    .line 836
    :cond_ef
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v1, :cond_f6

    .line 837
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    .line 840
    :cond_f6
    :goto_f6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 841
    return-void

    .line 824
    :catchall_fc
    move-exception v1

    :try_start_fd
    monitor-exit v8
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    throw v1

    .line 796
    .end local v3  # "numListeners":I
    .end local v4  # "keyboardsMissingLayout":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    .end local v5  # "deviceIdAndGeneration":[I
    .end local v6  # "numFullKeyboards":I
    :catchall_ff
    move-exception v2

    :goto_100
    :try_start_100
    monitor-exit v1
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_ff

    throw v2
.end method

.method private deliverTabletModeChanged(JZ)V
    .registers 9
    .param p1, "whenNanos"  # J
    .param p3, "inTabletMode"  # Z

    .line 1009
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1011
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1012
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1013
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_21

    .line 1014
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 1015
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    .line 1014
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1017
    .end local v2  # "i":I
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_34

    .line 1018
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, v1, :cond_33

    .line 1019
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->notifyTabletModeChanged(JZ)V

    .line 1018
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1022
    .end local v0  # "i":I
    :cond_33
    return-void

    .line 1017
    .end local v1  # "numListeners":I
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 5
    .param p1, "focus"  # Landroid/os/IBinder;
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 1847
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z
    .registers 4
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "displayId"  # I

    .line 2337
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private static flatten(Ljava/util/List;)Ljava/util/List;
    .registers 5
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

    .line 1895
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<TT;TT;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1896
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1897
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<TT;TT;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1898
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1899
    .end local v2  # "pair":Landroid/util/Pair;, "Landroid/util/Pair<TT;TT;>;"
    goto :goto_f

    .line 1900
    :cond_26
    return-object v0
.end method

.method private getContextForDisplay(I)Landroid/content/Context;
    .registers 5
    .param p1, "displayId"  # I

    .line 1977
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_11

    .line 1978
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    return-object v0

    .line 1981
    :cond_11
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_24

    .line 1982
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    .line 1983
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    return-object v0

    .line 1987
    :cond_24
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1988
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1989
    .local v1, "display":Landroid/view/Display;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    .line 1990
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDisplayContext:Landroid/content/Context;

    return-object v2
.end method

.method private getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
    .registers 13
    .param p1, "d"  # Landroid/view/InputDevice;

    .line 844
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 847
    .local v0, "systemLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 848
    return-object v2

    .line 850
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v1, "layouts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v3, Lcom/android/server/input/InputManagerService$4;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V

    invoke-direct {p0, v3}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 872
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 873
    return-object v2

    .line 877
    :cond_2c
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 879
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 880
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    if-ge v3, v2, :cond_72

    .line 881
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    .line 882
    .local v4, "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 883
    .local v5, "locales":Landroid/os/LocaleList;
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v6

    .line 884
    .local v6, "numLocales":I
    const/4 v7, 0x0

    .local v7, "localeIndex":I
    :goto_45
    if-ge v7, v6, :cond_6f

    .line 885
    invoke-virtual {v5, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 886
    .local v8, "locale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 887
    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 888
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 884
    .end local v8  # "locale":Ljava/util/Locale;
    :cond_6c
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 880
    .end local v4  # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v5  # "locales":Landroid/os/LocaleList;
    .end local v6  # "numLocales":I
    .end local v7  # "localeIndex":I
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 893
    .end local v3  # "i":I
    :cond_72
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_73
    if-ge v3, v2, :cond_a3

    .line 894
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    .line 895
    .restart local v4  # "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 896
    .restart local v5  # "locales":Landroid/os/LocaleList;
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v6

    .line 897
    .restart local v6  # "numLocales":I
    const/4 v7, 0x0

    .restart local v7  # "localeIndex":I
    :goto_84
    if-ge v7, v6, :cond_a0

    .line 898
    invoke-virtual {v5, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 899
    .restart local v8  # "locale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 900
    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 897
    .end local v8  # "locale":Ljava/util/Locale;
    :cond_9d
    add-int/lit8 v7, v7, 0x1

    goto :goto_84

    .line 893
    .end local v4  # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v5  # "locales":Landroid/os/LocaleList;
    .end local v6  # "numLocales":I
    .end local v7  # "localeIndex":I
    :cond_a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 906
    .end local v3  # "i":I
    :cond_a3
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uniqueId"  # Ljava/lang/String;

    .line 2033
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2035
    return-object v1

    .line 2037
    :cond_8
    return-object v1
.end method

.method private getDoubleTapTimeout()I
    .registers 2

    .line 1958
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private static getExcludedDeviceNames()[Ljava/lang/String;
    .registers 10

    .line 1869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1872
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/File;

    .line 1873
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1874
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 1876
    .local v1, "baseDirs":[Ljava/io/File;
    array-length v2, v1

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_57

    aget-object v5, v1, v4

    .line 1877
    .local v5, "baseDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "etc/excluded-input-devices.xml"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1879
    .local v6, "confFile":Ljava/io/File;
    :try_start_23
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1880
    .local v7, "stream":Ljava/io/InputStream;
    invoke-static {v7}, Lcom/android/server/input/ConfigurationProcessor;->processExcludedDeviceNames(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2f} :catch_52
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_31

    .line 1885
    nop

    .end local v7  # "stream":Ljava/io/InputStream;
    goto :goto_54

    .line 1883
    :catch_31
    move-exception v7

    .line 1884
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "InputManager"

    invoke-static {v9, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 1881
    .end local v7  # "e":Ljava/lang/Exception;
    :catch_52
    move-exception v7

    .line 1885
    nop

    .line 1876
    .end local v5  # "baseDir":Ljava/io/File;
    .end local v6  # "confFile":Ljava/io/File;
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 1887
    :cond_57
    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private getHoverTapSlop()I
    .registers 2

    .line 1953
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method private getHoverTapTimeout()I
    .registers 2

    .line 1948
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method private static getInputPortAssociations()[Ljava/lang/String;
    .registers 7

    .line 1909
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    .line 1910
    .local v0, "baseDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "etc/input-port-associations.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1913
    .local v1, "confFile":Ljava/io/File;
    const/4 v2, 0x0

    :try_start_c
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1914
    .local v3, "stream":Ljava/io/InputStream;
    nop

    .line 1915
    invoke-static {v3}, Lcom/android/server/input/ConfigurationProcessor;->processInputPortAssociations(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v4

    .line 1916
    .local v4, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 1917
    .local v5, "associationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v6, v2, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_22} :catch_44
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_23

    return-object v6

    .line 1920
    .end local v3  # "stream":Ljava/io/InputStream;
    .end local v4  # "associations":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5  # "associationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_23
    move-exception v3

    .line 1921
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 1918
    .end local v3  # "e":Ljava/lang/Exception;
    :catch_44
    move-exception v3

    .line 1922
    nop

    .line 1923
    :goto_46
    new-array v2, v2, [Ljava/lang/String;

    return-object v2
.end method

.method private getKeyRepeatDelay()I
    .registers 2

    .line 1943
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatTimeout()I
    .registers 2

    .line 1938
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 7
    .param p1, "identifier"  # Landroid/hardware/input/InputDeviceIdentifier;

    .line 2000
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2001
    return-object v1

    .line 2004
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 2005
    .local v0, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 2006
    return-object v1

    .line 2009
    :cond_d
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 2010
    .local v2, "result":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/input/InputManagerService$12;

    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2023
    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-nez v3, :cond_39

    .line 2024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    return-object v1

    .line 2028
    :cond_39
    return-object v2
.end method

.method private getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 4
    .param p1, "identifier"  # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1314
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1318
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v0

    if-nez v0, :cond_19

    .line 1319
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1321
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1322
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "vendor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1323
    const-string v1, ",product:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1315
    .end local v0  # "bob":Ljava/lang/StringBuilder;
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "identifier and descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .registers 3
    .param p0, "languageTags"  # Ljava/lang/String;

    .line 1303
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1304
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0

    .line 1306
    :cond_b
    const/16 v0, 0x7c

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method private getLongPressTimeout()I
    .registers 2

    .line 1963
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getPointerDisplayId()I
    .registers 2

    .line 1995
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerDisplayId()I

    move-result v0

    return v0
.end method

.method private getPointerIcon(I)Landroid/view/PointerIcon;
    .registers 3
    .param p1, "displayId"  # I

    .line 1973
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getContextForDisplay(I)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private getPointerLayer()I
    .registers 2

    .line 1968
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result v0

    return v0
.end method

.method private getPointerSpeedSetting()I
    .registers 5

    .line 1574
    const/4 v0, 0x0

    .line 1576
    .local v0, "speed":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pointer_speed"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v1

    .line 1579
    goto :goto_12

    .line 1578
    :catch_11
    move-exception v1

    .line 1580
    :goto_12
    return v0
.end method

.method private getShowTouchesSetting(I)I
    .registers 6
    .param p1, "defaultValue"  # I

    .line 1619
    move v0, p1

    .line 1621
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_touches"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v1

    .line 1624
    goto :goto_12

    .line 1623
    :catch_11
    move-exception v1

    .line 1625
    :goto_12
    return v0
.end method

.method private getVirtualKeyQuietTimeMillis()I
    .registers 3

    .line 1863
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private handleSwitchKeyboardLayout(II)V
    .registers 11
    .param p1, "deviceId"  # I
    .param p2, "direction"  # I

    .line 1455
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 1456
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_58

    .line 1460
    invoke-virtual {v0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 1461
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1463
    :try_start_11
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v1, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;I)Z

    move-result v3

    .line 1464
    .local v3, "changed":Z
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4, v1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_4e

    .line 1467
    .local v4, "keyboardLayoutDescriptor":Ljava/lang/String;
    :try_start_1d
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1468
    nop

    .line 1469
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_55

    .line 1471
    if-eqz v3, :cond_58

    .line 1472
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    if-eqz v2, :cond_30

    .line 1473
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1474
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1476
    :cond_30
    if-eqz v4, :cond_4a

    .line 1477
    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v2

    .line 1478
    .local v2, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v2, :cond_4a

    .line 1479
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 1480
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1479
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1481
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1485
    .end local v2  # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    goto :goto_58

    .line 1467
    .end local v3  # "changed":Z
    .end local v4  # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_4e
    move-exception v3

    :try_start_4f
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .end local v0  # "device":Landroid/view/InputDevice;
    .end local v1  # "key":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/input/InputManagerService;
    .end local p1  # "deviceId":I
    .end local p2  # "direction":I
    throw v3

    .line 1469
    .restart local v0  # "device":Landroid/view/InputDevice;
    .restart local v1  # "key":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1  # "deviceId":I
    .restart local p2  # "direction":I
    :catchall_55
    move-exception v3

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_55

    throw v3

    .line 1488
    .end local v1  # "key":Ljava/lang/String;
    :cond_58
    :goto_58
    return-void
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .registers 5

    .line 1058
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v0, :cond_11

    .line 1059
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 1060
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x13

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1064
    :cond_11
    return-void
.end method

.method private injectInputEventInternal(Landroid/view/InputEvent;I)Z
    .registers 16
    .param p1, "event"  # Landroid/view/InputEvent;
    .param p2, "mode"  # I

    .line 620
    if-eqz p1, :cond_93

    .line 623
    const/4 v0, 0x1

    if-eqz p2, :cond_14

    const/4 v1, 0x2

    if-eq p2, v1, :cond_14

    if-ne p2, v0, :cond_b

    goto :goto_14

    .line 626
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_14
    :goto_14
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 630
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 631
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 634
    .local v11, "ident":J
    :try_start_20
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/16 v8, 0x7530

    const/high16 v9, 0x8000000

    move-object v4, p1

    move v5, v1

    move v6, v10

    move v7, p2

    invoke-static/range {v2 .. v9}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIII)I

    move-result v2
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_8e

    .line 637
    .local v2, "result":I
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 638
    nop

    .line 639
    if-eqz v2, :cond_8d

    const-string v3, "Input event injection from pid "

    const-string v4, "InputManager"

    if-eq v2, v0, :cond_6e

    const/4 v0, 0x3

    const/4 v5, 0x0

    if-eq v2, v0, :cond_56

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return v5

    .line 647
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " timed out."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return v5

    .line 641
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " permission denied."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_8d
    return v0

    .line 637
    .end local v2  # "result":I
    :catchall_8e
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 621
    .end local v1  # "pid":I
    .end local v10  # "uid":I
    .end local v11  # "ident":J
    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .registers 6
    .param p1, "focus"  # Landroid/os/IBinder;
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 1842
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 4
    .param p1, "event"  # Landroid/view/KeyEvent;
    .param p2, "policyFlags"  # I

    .line 1828
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method private interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J
    .registers 6
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I
    .param p3, "displayId"  # I

    .line 2342
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptMotionBeforeQueueingNonInteractive(IJI)I
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "whenNanos"  # J
    .param p4, "policyFlags"  # I

    .line 1834
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingNonInteractive(IJI)I

    move-result v0

    return v0
.end method

.method private static isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 5
    .param p0, "systemLocale"  # Ljava/util/Locale;
    .param p1, "keyboardLocale"  # Ljava/util/Locale;

    .line 911
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 912
    return v1

    .line 915
    :cond_10
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 916
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 917
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 918
    return v1

    .line 920
    :cond_33
    const/4 v0, 0x1

    return v0
.end method

.method private mzInterceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
    .registers 4
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I

    .line 2332
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->mzInterceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
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

.method private static native nativeStart(J)V
.end method

.method private static native nativeToggleCapsLock(JI)V
.end method

.method private static native nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V
.end method

.method private static native nativeVibrate(JI[JII)V
.end method

.method private notifyANR(Landroid/os/IBinder;Ljava/lang/String;)J
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "reason"  # Ljava/lang/String;

    .line 1806
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyANR(Landroid/os/IBinder;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyConfigurationChanged(J)V
    .registers 4
    .param p1, "whenNanos"  # J

    .line 1737
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    .line 1738
    return-void
.end method

.method private notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "oldToken"  # Landroid/os/IBinder;
    .param p2, "newToken"  # Landroid/os/IBinder;

    .line 1792
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    if-eqz v0, :cond_28

    .line 1793
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p2, :cond_24

    .line 1794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyFocusChanged called with unchanged mFocusedWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    return-void

    .line 1798
    :cond_24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerCapture(Z)V

    .line 1801
    :cond_28
    invoke-static {p2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    .line 1802
    return-void
.end method

.method private notifyInputChannelBroken(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1787
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Landroid/os/IBinder;)V

    .line 1788
    return-void
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 6
    .param p1, "inputDevices"  # [Landroid/view/InputDevice;

    .line 1742
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1743
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v1, :cond_15

    .line 1744
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 1745
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1746
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1749
    :cond_15
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 1750
    monitor-exit v0

    .line 1751
    return-void

    .line 1750
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private notifySwitch(JII)V
    .registers 10
    .param p1, "whenNanos"  # J
    .param p3, "switchValues"  # I
    .param p4, "switchMask"  # I

    .line 1760
    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 1761
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 1762
    .local v0, "lidOpen":Z
    :goto_d
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v3, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V

    .line 1765
    .end local v0  # "lidOpen":Z
    :cond_12
    and-int/lit16 v0, p4, 0x200

    if-eqz v0, :cond_22

    .line 1766
    and-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 1767
    .local v0, "lensCovered":Z
    :goto_1d
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v3, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 1770
    .end local v0  # "lensCovered":Z
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_2f

    and-int/lit16 v0, p4, 0xd4

    if-eqz v0, :cond_2f

    .line 1771
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    .line 1775
    :cond_2f
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_59

    .line 1776
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1777
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    const-wide/16 v3, -0x1

    and-long/2addr v3, p1

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1778
    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1779
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_49

    move v1, v2

    :cond_49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1780
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1781
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1783
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :cond_59
    return-void
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"  # I

    .line 755
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 756
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 757
    monitor-exit v0

    .line 758
    return-void

    .line 757
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private onPointerDownOutsideFocus(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "touchedToken"  # Landroid/os/IBinder;

    .line 1858
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->onPointerDownOutsideFocus(Landroid/os/IBinder;)V

    .line 1859
    return-void
.end method

.method private onTabletModeChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"  # I

    .line 1002
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1003
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1004
    monitor-exit v0

    .line 1005
    return-void

    .line 1004
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private registerAccessibilityLargePointerSettingObserver()V
    .registers 6

    .line 1608
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1609
    const-string v1, "accessibility_large_pointer_icon"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$11;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$11;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1608
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1616
    return-void
.end method

.method private registerPointerSpeedSettingObserver()V
    .registers 6

    .line 1563
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1564
    const-string/jumbo v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$9;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1563
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1571
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .registers 6

    .line 1589
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1590
    const-string/jumbo v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$10;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1589
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1597
    return-void
.end method

.method private reloadDeviceAliases()V
    .registers 3

    .line 411
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadDeviceAliases(J)V

    .line 412
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .registers 3

    .line 404
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadKeyboardLayouts(J)V

    .line 405
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

    .line 415
    .local p1, "viewports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayViewport;>;"
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/hardware/display/DisplayViewport;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/display/DisplayViewport;

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSetDisplayViewports(J[Landroid/hardware/display/DisplayViewport;)V

    .line 416
    return-void
.end method

.method private setPointerCapture(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 1518
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindowHasCapture:Z

    if-eq v0, p1, :cond_12

    .line 1519
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindowHasCapture:Z

    .line 1521
    :try_start_6
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    invoke-interface {v0, p1}, Landroid/view/IWindow;->dispatchPointerCaptureChanged(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 1524
    goto :goto_d

    .line 1522
    :catch_c
    move-exception v0

    .line 1525
    :goto_d
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerCapture(JZ)V

    .line 1527
    :cond_12
    return-void
.end method

.method private setPointerSpeedUnchecked(I)V
    .registers 4
    .param p1, "speed"  # I

    .line 1557
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1559
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerSpeed(JI)V

    .line 1560
    return-void
.end method

.method private showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    .registers 10
    .param p1, "device"  # Landroid/view/InputDevice;

    .line 1026
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-nez v0, :cond_76

    .line 1027
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.HARD_KEYBOARD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_17

    .line 1029
    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v1

    const-string/jumbo v2, "input_device_identifier"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1031
    :cond_17
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1034
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1037
    .local v1, "keyboardLayoutIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1038
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x104065e

    .line 1040
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x104065d

    .line 1042
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1044
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x108050e

    .line 1045
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const v5, 0x106001c

    .line 1046
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1048
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 1049
    .local v3, "notification":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v5, 0x0

    const/16 v6, 0x13

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1052
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 1054
    .end local v0  # "intent":Landroid/content/Intent;
    .end local v1  # "keyboardLayoutIntent":Landroid/app/PendingIntent;
    .end local v2  # "r":Landroid/content/res/Resources;
    .end local v3  # "notification":Landroid/app/Notification;
    :cond_76
    return-void
.end method

.method private updateKeyboardLayouts()V
    .registers 5

    .line 1069
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1070
    .local v0, "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$5;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1077
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1079
    :try_start_10
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_20

    .line 1081
    :try_start_15
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1082
    nop

    .line 1083
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_27

    .line 1086
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 1087
    return-void

    .line 1081
    :catchall_20
    move-exception v2

    :try_start_21
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .end local v0  # "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local p0  # "this":Lcom/android/server/input/InputManagerService;
    throw v2

    .line 1083
    .restart local v0  # "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local p0  # "this":Lcom/android/server/input/InputManagerService;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_27

    throw v2
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 14
    .param p1, "visitor"  # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .line 1185
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1186
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    .line 1187
    .local v7, "intent":Landroid/content/Intent;
    const v1, 0xc0080

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1190
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1191
    .local v10, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v11, v9, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1192
    .local v11, "priority":I
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v10

    move v5, v11

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1193
    .end local v9  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10  # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v11  # "priority":I
    goto :goto_19

    .line 1194
    :cond_34
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 11
    .param p1, "keyboardLayoutDescriptor"  # Ljava/lang/String;
    .param p2, "visitor"  # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .line 1198
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    move-result-object v0

    .line 1199
    .local v0, "d":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    if-eqz v0, :cond_27

    .line 1200
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1202
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0xc0080

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1207
    .local v4, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_25} :catch_26

    .line 1209
    .end local v4  # "receiver":Landroid/content/pm/ActivityInfo;
    goto :goto_27

    .line 1208
    :catch_26
    move-exception v2

    .line 1211
    .end local v1  # "pm":Landroid/content/pm/PackageManager;
    :cond_27
    :goto_27
    return-void
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 31
    .param p1, "pm"  # Landroid/content/pm/PackageManager;
    .param p2, "receiver"  # Landroid/content/pm/ActivityInfo;
    .param p3, "keyboardName"  # Ljava/lang/String;
    .param p4, "requestedPriority"  # I
    .param p5, "visitor"  # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .line 1215
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1216
    .local v4, "metaData":Landroid/os/Bundle;
    if-nez v4, :cond_b

    .line 1217
    return-void

    .line 1220
    :cond_b
    const-string v0, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1221
    .local v5, "configResId":I
    const-string v6, "/"

    const-string v7, "InputManager"

    if-nez v5, :cond_36

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return-void

    .line 1227
    :cond_36
    invoke-virtual {v2, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1228
    .local v8, "receiverLabel":Ljava/lang/CharSequence;
    if-eqz v8, :cond_41

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_41
    const-string v0, ""

    :goto_43
    move-object v12, v0

    .line 1230
    .local v12, "collection":Ljava/lang/String;
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v13, 0x1

    and-int/2addr v0, v13

    if-eqz v0, :cond_51

    .line 1231
    move/from16 v0, p4

    move/from16 v17, v0

    .local v0, "priority":I
    goto :goto_54

    .line 1233
    .end local v0  # "priority":I
    :cond_51
    const/4 v0, 0x0

    move/from16 v17, v0

    .line 1237
    .local v17, "priority":I
    :goto_54
    :try_start_54
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v11, v0

    .line 1238
    .local v11, "resources":Landroid/content/res/Resources;
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5f} :catch_1c4

    move-object v9, v0

    .line 1240
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_60
    const-string/jumbo v0, "keyboard-layouts"

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1243
    :goto_66
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1244
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_1b4

    move-object v10, v0

    .line 1245
    .local v10, "element":Ljava/lang/String;
    if-nez v10, :cond_86

    .line 1246
    nop

    .line 1293
    .end local v10  # "element":Ljava/lang/String;
    :try_start_71
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_7d

    .line 1294
    nop

    .line 1298
    .end local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11  # "resources":Landroid/content/res/Resources;
    move-object/from16 v9, p5

    move-object/from16 v21, v4

    move/from16 v22, v5

    goto/16 :goto_1e9

    .line 1295
    :catch_7d
    move-exception v0

    move-object/from16 v9, p5

    move-object/from16 v21, v4

    move/from16 v22, v5

    goto/16 :goto_1cb

    .line 1248
    .restart local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10  # "element":Ljava/lang/String;
    .restart local v11  # "resources":Landroid/content/res/Resources;
    :cond_86
    :try_start_86
    const-string/jumbo v0, "keyboard-layout"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 1249
    sget-object v0, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    invoke-virtual {v11, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_95
    .catchall {:try_start_86 .. :try_end_95} :catchall_1b4

    move-object v15, v0

    .line 1252
    .local v15, "a":Landroid/content/res/TypedArray;
    :try_start_96
    invoke-virtual {v15, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, "name":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    .line 1256
    .local v18, "label":Ljava/lang/String;
    const/4 v13, 0x2

    invoke-virtual {v15, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 1259
    .local v13, "keyboardLayoutResId":I
    const/4 v14, 0x3

    invoke-virtual {v15, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v14

    .line 1261
    .local v20, "languageTags":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v14
    :try_end_b1
    .catchall {:try_start_96 .. :try_end_b1} :catchall_161

    .line 1262
    .local v14, "locales":Landroid/os/LocaleList;
    const/4 v1, 0x5

    move-object/from16 v21, v4

    .end local v4  # "metaData":Landroid/os/Bundle;
    .local v21, "metaData":Landroid/os/Bundle;
    const/4 v4, -0x1

    :try_start_b5
    invoke-virtual {v15, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1
    :try_end_b9
    .catchall {:try_start_b5 .. :try_end_b9} :catchall_156

    move-object v4, v15

    .end local v15  # "a":Landroid/content/res/TypedArray;
    .local v4, "a":Landroid/content/res/TypedArray;
    move v15, v1

    .line 1264
    .local v15, "vid":I
    const/4 v1, 0x4

    move/from16 v22, v5

    const/4 v5, -0x1

    .end local v5  # "configResId":I
    .local v22, "configResId":I
    :try_start_bf
    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 1267
    .local v16, "pid":I
    if-eqz v0, :cond_11d

    if-eqz v18, :cond_11d

    if-nez v13, :cond_d6

    move-object/from16 v24, v0

    move-object/from16 v23, v9

    move-object v5, v10

    move-object v3, v11

    move v0, v13

    const/16 v19, 0x1

    move-object/from16 v9, p5

    goto/16 :goto_128

    .line 1273
    :cond_d6
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1, v5, v0}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_de
    .catchall {:try_start_bf .. :try_end_de} :catchall_14e

    move-object v5, v10

    .end local v10  # "element":Ljava/lang/String;
    .local v5, "element":Ljava/lang/String;
    move-object v10, v1

    .line 1275
    .local v10, "descriptor":Ljava/lang/String;
    if-eqz v3, :cond_f9

    :try_start_e2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_e6
    .catchall {:try_start_e2 .. :try_end_e6} :catchall_f1

    if-eqz v1, :cond_e9

    goto :goto_f9

    :cond_e9
    move-object/from16 v23, v9

    move-object v3, v11

    const/16 v19, 0x1

    move-object/from16 v9, p5

    goto :goto_146

    .line 1284
    .end local v0  # "name":Ljava/lang/String;
    .end local v10  # "descriptor":Ljava/lang/String;
    .end local v13  # "keyboardLayoutResId":I
    .end local v14  # "locales":Landroid/os/LocaleList;
    .end local v15  # "vid":I
    .end local v16  # "pid":I
    .end local v18  # "label":Ljava/lang/String;
    .end local v20  # "languageTags":Ljava/lang/String;
    :catchall_f1
    move-exception v0

    move-object/from16 v23, v9

    move-object v3, v11

    move-object/from16 v9, p5

    goto/16 :goto_16d

    .line 1276
    .restart local v0  # "name":Ljava/lang/String;
    .restart local v10  # "descriptor":Ljava/lang/String;
    .restart local v13  # "keyboardLayoutResId":I
    .restart local v14  # "locales":Landroid/os/LocaleList;
    .restart local v15  # "vid":I
    .restart local v16  # "pid":I
    .restart local v18  # "label":Ljava/lang/String;
    .restart local v20  # "languageTags":Ljava/lang/String;
    :cond_f9
    :goto_f9
    :try_start_f9
    new-instance v1, Landroid/hardware/input/KeyboardLayout;
    :try_end_fb
    .catchall {:try_start_f9 .. :try_end_fb} :catchall_116

    move-object/from16 v23, v9

    .end local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .local v23, "parser":Landroid/content/res/XmlResourceParser;
    move-object v9, v1

    move-object v3, v11

    .end local v11  # "resources":Landroid/content/res/Resources;
    .local v3, "resources":Landroid/content/res/Resources;
    move-object/from16 v11, v18

    move-object/from16 v24, v0

    move v0, v13

    const/16 v19, 0x1

    .end local v13  # "keyboardLayoutResId":I
    .local v0, "keyboardLayoutResId":I
    .local v24, "name":Ljava/lang/String;
    move/from16 v13, v17

    :try_start_108
    invoke-direct/range {v9 .. v16}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;II)V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_111

    .line 1279
    .local v1, "layout":Landroid/hardware/input/KeyboardLayout;
    move-object/from16 v9, p5

    :try_start_10d
    invoke-interface {v9, v3, v0, v1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    goto :goto_146

    .line 1284
    .end local v0  # "keyboardLayoutResId":I
    .end local v1  # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v10  # "descriptor":Ljava/lang/String;
    .end local v14  # "locales":Landroid/os/LocaleList;
    .end local v15  # "vid":I
    .end local v16  # "pid":I
    .end local v18  # "label":Ljava/lang/String;
    .end local v20  # "languageTags":Ljava/lang/String;
    .end local v24  # "name":Ljava/lang/String;
    :catchall_111
    move-exception v0

    move-object/from16 v9, p5

    goto/16 :goto_16d

    .end local v3  # "resources":Landroid/content/res/Resources;
    .end local v23  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v11  # "resources":Landroid/content/res/Resources;
    :catchall_116
    move-exception v0

    move-object/from16 v23, v9

    move-object v3, v11

    move-object/from16 v9, p5

    .end local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11  # "resources":Landroid/content/res/Resources;
    .restart local v3  # "resources":Landroid/content/res/Resources;
    .restart local v23  # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_16d

    .line 1267
    .end local v3  # "resources":Landroid/content/res/Resources;
    .end local v5  # "element":Ljava/lang/String;
    .end local v23  # "parser":Landroid/content/res/XmlResourceParser;
    .local v0, "name":Ljava/lang/String;
    .restart local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .local v10, "element":Ljava/lang/String;
    .restart local v11  # "resources":Landroid/content/res/Resources;
    .restart local v13  # "keyboardLayoutResId":I
    .restart local v14  # "locales":Landroid/os/LocaleList;
    .restart local v15  # "vid":I
    .restart local v16  # "pid":I
    .restart local v18  # "label":Ljava/lang/String;
    .restart local v20  # "languageTags":Ljava/lang/String;
    :cond_11d
    move-object/from16 v24, v0

    move-object/from16 v23, v9

    move-object v5, v10

    move-object v3, v11

    move v0, v13

    const/16 v19, 0x1

    move-object/from16 v9, p5

    .line 1268
    .end local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10  # "element":Ljava/lang/String;
    .end local v11  # "resources":Landroid/content/res/Resources;
    .end local v13  # "keyboardLayoutResId":I
    .local v0, "keyboardLayoutResId":I
    .restart local v3  # "resources":Landroid/content/res/Resources;
    .restart local v5  # "element":Ljava/lang/String;
    .restart local v23  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v24  # "name":Ljava/lang/String;
    :goto_128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_146
    .catchall {:try_start_10d .. :try_end_146} :catchall_14c

    .line 1284
    .end local v0  # "keyboardLayoutResId":I
    .end local v14  # "locales":Landroid/os/LocaleList;
    .end local v15  # "vid":I
    .end local v16  # "pid":I
    .end local v18  # "label":Ljava/lang/String;
    .end local v20  # "languageTags":Ljava/lang/String;
    .end local v24  # "name":Ljava/lang/String;
    :goto_146
    :try_start_146
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1285
    nop

    .line 1286
    .end local v4  # "a":Landroid/content/res/TypedArray;
    goto/16 :goto_1a3

    .line 1284
    .restart local v4  # "a":Landroid/content/res/TypedArray;
    :catchall_14c
    move-exception v0

    goto :goto_16d

    .end local v3  # "resources":Landroid/content/res/Resources;
    .end local v5  # "element":Ljava/lang/String;
    .end local v23  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10  # "element":Ljava/lang/String;
    .restart local v11  # "resources":Landroid/content/res/Resources;
    :catchall_14e
    move-exception v0

    move-object/from16 v23, v9

    move-object v5, v10

    move-object v3, v11

    move-object/from16 v9, p5

    .end local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10  # "element":Ljava/lang/String;
    .end local v11  # "resources":Landroid/content/res/Resources;
    .restart local v3  # "resources":Landroid/content/res/Resources;
    .restart local v5  # "element":Ljava/lang/String;
    .restart local v23  # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_16d

    .end local v3  # "resources":Landroid/content/res/Resources;
    .end local v4  # "a":Landroid/content/res/TypedArray;
    .end local v22  # "configResId":I
    .end local v23  # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "configResId":I
    .restart local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10  # "element":Ljava/lang/String;
    .restart local v11  # "resources":Landroid/content/res/Resources;
    .local v15, "a":Landroid/content/res/TypedArray;
    :catchall_156
    move-exception v0

    move/from16 v22, v5

    move-object/from16 v23, v9

    move-object v5, v10

    move-object v3, v11

    move-object v4, v15

    move-object/from16 v9, p5

    .end local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10  # "element":Ljava/lang/String;
    .end local v11  # "resources":Landroid/content/res/Resources;
    .end local v15  # "a":Landroid/content/res/TypedArray;
    .restart local v3  # "resources":Landroid/content/res/Resources;
    .restart local v4  # "a":Landroid/content/res/TypedArray;
    .local v5, "element":Ljava/lang/String;
    .restart local v22  # "configResId":I
    .restart local v23  # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_16d

    .end local v3  # "resources":Landroid/content/res/Resources;
    .end local v21  # "metaData":Landroid/os/Bundle;
    .end local v22  # "configResId":I
    .end local v23  # "parser":Landroid/content/res/XmlResourceParser;
    .local v4, "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .restart local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10  # "element":Ljava/lang/String;
    .restart local v11  # "resources":Landroid/content/res/Resources;
    .restart local v15  # "a":Landroid/content/res/TypedArray;
    :catchall_161
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v9

    move-object v5, v10

    move-object v3, v11

    move-object v4, v15

    move-object/from16 v9, p5

    .end local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10  # "element":Ljava/lang/String;
    .end local v11  # "resources":Landroid/content/res/Resources;
    .end local v15  # "a":Landroid/content/res/TypedArray;
    .restart local v3  # "resources":Landroid/content/res/Resources;
    .local v4, "a":Landroid/content/res/TypedArray;
    .local v5, "element":Ljava/lang/String;
    .restart local v21  # "metaData":Landroid/os/Bundle;
    .restart local v22  # "configResId":I
    .restart local v23  # "parser":Landroid/content/res/XmlResourceParser;
    :goto_16d
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .end local v3  # "resources":Landroid/content/res/Resources;
    .end local v8  # "receiverLabel":Ljava/lang/CharSequence;
    .end local v12  # "collection":Ljava/lang/String;
    .end local v17  # "priority":I
    .end local v21  # "metaData":Landroid/os/Bundle;
    .end local v22  # "configResId":I
    .end local v23  # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0  # "this":Lcom/android/server/input/InputManagerService;
    .end local p1  # "pm":Landroid/content/pm/PackageManager;
    .end local p2  # "receiver":Landroid/content/pm/ActivityInfo;
    .end local p3  # "keyboardName":Ljava/lang/String;
    .end local p4  # "requestedPriority":I
    .end local p5  # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    throw v0

    .line 1287
    .local v4, "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .restart local v8  # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10  # "element":Ljava/lang/String;
    .restart local v11  # "resources":Landroid/content/res/Resources;
    .restart local v12  # "collection":Ljava/lang/String;
    .restart local v17  # "priority":I
    .restart local p0  # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1  # "pm":Landroid/content/pm/PackageManager;
    .restart local p2  # "receiver":Landroid/content/pm/ActivityInfo;
    .restart local p3  # "keyboardName":Ljava/lang/String;
    .restart local p4  # "requestedPriority":I
    .restart local p5  # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    :cond_171
    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v9

    move-object v5, v10

    move-object v3, v11

    move/from16 v19, v13

    move-object/from16 v9, p5

    .end local v4  # "metaData":Landroid/os/Bundle;
    .end local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10  # "element":Ljava/lang/String;
    .end local v11  # "resources":Landroid/content/res/Resources;
    .restart local v3  # "resources":Landroid/content/res/Resources;
    .local v5, "element":Ljava/lang/String;
    .restart local v21  # "metaData":Landroid/os/Bundle;
    .restart local v22  # "configResId":I
    .restart local v23  # "parser":Landroid/content/res/XmlResourceParser;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unrecognized element \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' in keyboard layout resource from receiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a3
    .catchall {:try_start_146 .. :try_end_1a3} :catchall_1b2

    .line 1291
    .end local v5  # "element":Ljava/lang/String;
    :goto_1a3
    move-object/from16 v1, p1

    move-object v11, v3

    move/from16 v13, v19

    move-object/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v9, v23

    move-object/from16 v3, p3

    goto/16 :goto_66

    .line 1293
    :catchall_1b2
    move-exception v0

    goto :goto_1be

    .end local v3  # "resources":Landroid/content/res/Resources;
    .end local v21  # "metaData":Landroid/os/Bundle;
    .end local v22  # "configResId":I
    .end local v23  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4  # "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .restart local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v11  # "resources":Landroid/content/res/Resources;
    :catchall_1b4
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v9

    move-object v3, v11

    move-object/from16 v9, p5

    .end local v4  # "metaData":Landroid/os/Bundle;
    .end local v5  # "configResId":I
    .end local v9  # "parser":Landroid/content/res/XmlResourceParser;
    .end local v11  # "resources":Landroid/content/res/Resources;
    .restart local v3  # "resources":Landroid/content/res/Resources;
    .restart local v21  # "metaData":Landroid/os/Bundle;
    .restart local v22  # "configResId":I
    .restart local v23  # "parser":Landroid/content/res/XmlResourceParser;
    :goto_1be
    :try_start_1be
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    .end local v8  # "receiverLabel":Ljava/lang/CharSequence;
    .end local v12  # "collection":Ljava/lang/String;
    .end local v17  # "priority":I
    .end local v21  # "metaData":Landroid/os/Bundle;
    .end local v22  # "configResId":I
    .end local p0  # "this":Lcom/android/server/input/InputManagerService;
    .end local p1  # "pm":Landroid/content/pm/PackageManager;
    .end local p2  # "receiver":Landroid/content/pm/ActivityInfo;
    .end local p3  # "keyboardName":Ljava/lang/String;
    .end local p4  # "requestedPriority":I
    .end local p5  # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    throw v0
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_1c2} :catch_1c2

    .line 1295
    .end local v3  # "resources":Landroid/content/res/Resources;
    .end local v23  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8  # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v12  # "collection":Ljava/lang/String;
    .restart local v17  # "priority":I
    .restart local v21  # "metaData":Landroid/os/Bundle;
    .restart local v22  # "configResId":I
    .restart local p0  # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1  # "pm":Landroid/content/pm/PackageManager;
    .restart local p2  # "receiver":Landroid/content/pm/ActivityInfo;
    .restart local p3  # "keyboardName":Ljava/lang/String;
    .restart local p4  # "requestedPriority":I
    .restart local p5  # "visitor":Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;
    :catch_1c2
    move-exception v0

    goto :goto_1cb

    .end local v21  # "metaData":Landroid/os/Bundle;
    .end local v22  # "configResId":I
    .restart local v4  # "metaData":Landroid/os/Bundle;
    .restart local v5  # "configResId":I
    :catch_1c4
    move-exception v0

    move-object/from16 v9, p5

    move-object/from16 v21, v4

    move/from16 v22, v5

    .line 1296
    .end local v4  # "metaData":Landroid/os/Bundle;
    .end local v5  # "configResId":I
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v21  # "metaData":Landroid/os/Bundle;
    .restart local v22  # "configResId":I
    :goto_1cb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse keyboard layout resource from receiver "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1299
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1e9
    return-void
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 8
    .param p1, "identifier"  # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"  # Ljava/lang/String;

    .line 1389
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v1, "addKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1393
    if-eqz p2, :cond_5c

    .line 1397
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1400
    :try_start_13
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1401
    .local v2, "oldLayout":Ljava/lang/String;
    if-nez v2, :cond_30

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 1402
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1404
    :cond_30
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 1406
    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1405
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 1407
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_4a
    .catchall {:try_start_13 .. :try_end_4a} :catchall_52

    .line 1410
    .end local v2  # "oldLayout":Ljava/lang/String;
    :cond_4a
    :try_start_4a
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1411
    nop

    .line 1412
    monitor-exit v1

    .line 1413
    return-void

    .line 1410
    :catchall_52
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .end local v0  # "key":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/input/InputManagerService;
    .end local p1  # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2  # "keyboardLayoutDescriptor":Ljava/lang/String;
    throw v2

    .line 1412
    .restart local v0  # "key":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1  # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2  # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_59
    move-exception v2

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_59

    throw v2

    .line 1394
    .end local v0  # "key":Ljava/lang/String;
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1391
    :cond_65
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canDispatchToDisplay(II)Z
    .registers 5
    .param p1, "deviceId"  # I
    .param p2, "displayId"  # I

    .line 1933
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeCanDispatchToDisplay(JII)Z

    move-result v0

    return v0
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "deviceId"  # I
    .param p2, "token"  # Landroid/os/IBinder;

    .line 1660
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1661
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1662
    .local v1, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-eqz v1, :cond_17

    iget v2, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    if-eq v2, p1, :cond_12

    goto :goto_17

    .line 1665
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_19

    .line 1667
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1668
    return-void

    .line 1663
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v0

    return-void

    .line 1665
    .end local v1  # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public disableInputDevice(I)V
    .registers 4
    .param p1, "deviceId"  # I

    .line 694
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "disableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 698
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeDisableInputDevice(JI)V

    .line 699
    return-void

    .line 696
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 1702
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1704
    :cond_b
    const-string v0, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1705
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeDump(J)Ljava/lang/String;

    move-result-object v0

    .line 1706
    .local v0, "dumpStr":Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 1707
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1709
    :cond_1b
    return-void
.end method

.method public enableInputDevice(I)V
    .registers 4
    .param p1, "deviceId"  # I

    .line 684
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "enableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 688
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeEnableInputDevice(JI)V

    .line 689
    return-void

    .line 686
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .registers 5
    .param p1, "event"  # Landroid/view/InputEvent;
    .param p2, "policyFlags"  # I

    .line 1812
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1813
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v1, :cond_11

    .line 1815
    :try_start_7
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v1, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_17

    .line 1818
    goto :goto_e

    .line 1816
    :catch_d
    move-exception v1

    .line 1819
    :goto_e
    const/4 v1, 0x0

    :try_start_f
    monitor-exit v0

    return v1

    .line 1821
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    .line 1822
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 1823
    const/4 v0, 0x1

    return v0

    .line 1821
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 7
    .param p1, "identifier"  # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1330
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1331
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1332
    const/4 v2, 0x0

    .line 1334
    .local v2, "layout":Ljava/lang/String;
    :try_start_8
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1335
    if-nez v2, :cond_26

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1337
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1343
    :cond_26
    monitor-exit v1

    return-object v2

    .line 1344
    .end local v2  # "layout":Ljava/lang/String;
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 7
    .param p1, "identifier"  # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1375
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1376
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1377
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1378
    .local v2, "layouts":[Ljava/lang/String;
    if-eqz v2, :cond_12

    array-length v3, v2

    if-nez v3, :cond_27

    .line 1379
    :cond_12
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1380
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1382
    :cond_27
    monitor-exit v1

    return-object v2

    .line 1383
    .end local v2  # "layouts":[Ljava/lang/String;
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 7
    .param p1, "deviceId"  # I

    .line 663
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 664
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, v1

    .line 665
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_18

    .line 666
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v3, v3, v2

    .line 667
    .local v3, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v4

    if-ne v4, p1, :cond_15

    .line 668
    monitor-exit v0

    return-object v3

    .line 665
    .end local v3  # "inputDevice":Landroid/view/InputDevice;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 671
    .end local v1  # "count":I
    .end local v2  # "i":I
    :cond_18
    monitor-exit v0

    .line 672
    const/4 v0, 0x0

    return-object v0

    .line 671
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getInputDeviceIds()[I
    .registers 6

    .line 707
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, v1

    .line 709
    .local v1, "count":I
    new-array v2, v1, [I

    .line 710
    .local v2, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v1, :cond_18

    .line 711
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v4

    aput v4, v2, v3

    .line 710
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 713
    .end local v3  # "i":I
    :cond_18
    monitor-exit v0

    return-object v2

    .line 714
    .end local v1  # "count":I
    .end local v2  # "ids":[I
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .registers 3

    .line 722
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    monitor-exit v0

    return-object v1

    .line 724
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getKeyCodeState(III)I
    .registers 6
    .param p1, "deviceId"  # I
    .param p2, "sourceMask"  # I
    .param p3, "keyCode"  # I

    .line 428
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetKeyCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 6
    .param p1, "keyboardLayoutDescriptor"  # Ljava/lang/String;

    .line 1165
    if-eqz p1, :cond_30

    .line 1169
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/input/KeyboardLayout;

    .line 1170
    .local v0, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Lcom/android/server/input/InputManagerService$8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1177
    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_2d

    .line 1178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_2d
    aget-object v1, v0, v1

    return-object v1

    .line 1166
    .end local v0  # "result":[Landroid/hardware/input/KeyboardLayout;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 3

    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1111
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/input/KeyboardLayout;

    return-object v1
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .registers 12
    .param p1, "identifier"  # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1117
    nop

    .line 1118
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v6

    .line 1119
    .local v6, "enabledLayoutDescriptors":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v0

    .line 1121
    .local v7, "enabledLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 1122
    .local v8, "potentialLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v9, Lcom/android/server/input/InputManagerService$7;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, p1

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V

    invoke-direct {p0, v9}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1153
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1154
    .local v0, "enabledLayoutSize":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1155
    .local v1, "potentialLayoutSize":I
    add-int v2, v0, v1

    new-array v2, v2, [Landroid/hardware/input/KeyboardLayout;

    .line 1156
    .local v2, "layouts":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1157
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    if-ge v3, v1, :cond_3f

    .line 1158
    add-int v4, v0, v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/KeyboardLayout;

    aput-object v5, v2, v4

    .line 1157
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 1160
    .end local v3  # "i":I
    :cond_3f
    return-object v2
.end method

.method public getScanCodeState(III)I
    .registers 6
    .param p1, "deviceId"  # I
    .param p2, "sourceMask"  # I
    .param p3, "scanCode"  # I

    .line 441
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetScanCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getSwitchState(III)I
    .registers 6
    .param p1, "deviceId"  # I
    .param p2, "sourceMask"  # I
    .param p3, "switchCode"  # I

    .line 454
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetSwitchState(JIII)I

    move-result v0

    return v0
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 5
    .param p1, "inputDeviceDescriptor"  # Ljava/lang/String;
    .param p2, "surfaceRotation"  # I

    .line 926
    if-eqz p1, :cond_10

    .line 930
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 931
    :try_start_5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 932
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1

    .line 927
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasKeys(II[I[Z)Z
    .registers 13
    .param p1, "deviceId"  # I
    .param p2, "sourceMask"  # I
    .param p3, "keyCodes"  # [I
    .param p4, "keyExists"  # [Z

    .line 471
    if-eqz p3, :cond_1c

    .line 474
    if-eqz p4, :cond_13

    array-length v0, p4

    array-length v1, p3

    if-lt v0, v1, :cond_13

    .line 479
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->nativeHasKeys(JII[I[Z)Z

    move-result v0

    return v0

    .line 475
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4
    .param p1, "event"  # Landroid/view/InputEvent;
    .param p2, "mode"  # I

    .line 616
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method public isInTabletMode()I
    .registers 4

    .line 966
    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "isInTabletMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 970
    const/4 v0, -0x1

    const/16 v1, -0x100

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0

    .line 968
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TABLET_MODE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInputDeviceEnabled(I)Z
    .registers 4
    .param p1, "deviceId"  # I

    .line 678
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeIsInputDeviceEnabled(JI)Z

    move-result v0

    return v0
.end method

.method public monitor()V
    .registers 3

    .line 1731
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_a

    .line 1732
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeMonitor(J)V

    .line 1733
    return-void

    .line 1731
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
    .param p1, "inputChannelName"  # Ljava/lang/String;
    .param p2, "displayId"  # I

    .line 515
    const-string v0, "android.permission.MONITOR_INPUT"

    const-string/jumbo v1, "monitorInputRegion()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 520
    const-string/jumbo v0, "inputChannelName must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 522
    if-ltz p2, :cond_44

    .line 527
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 529
    .local v0, "ident":J
    :try_start_17
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v2

    .line 530
    .local v2, "inputChannels":[Landroid/view/InputChannel;
    new-instance v3, Lcom/android/server/input/InputManagerService$InputMonitorHost;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-direct {v3, p0, v5}, Lcom/android/server/input/InputManagerService$InputMonitorHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V

    .line 531
    .local v3, "host":Lcom/android/server/input/InputManagerService$InputMonitorHost;
    aget-object v5, v2, v4

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$InputMonitorHost;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/InputChannel;->setToken(Landroid/os/IBinder;)V

    .line 532
    iget-wide v5, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    aget-object v4, v2, v4

    const/4 v7, 0x1

    invoke-static {v5, v6, v4, p2, v7}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputMonitor(JLandroid/view/InputChannel;IZ)V

    .line 534
    new-instance v4, Landroid/view/InputMonitor;

    aget-object v5, v2, v7

    invoke-direct {v4, p1, v5, v3}, Landroid/view/InputMonitor;-><init>(Ljava/lang/String;Landroid/view/InputChannel;Landroid/view/IInputMonitorHost;)V
    :try_end_3b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_3f

    .line 536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    return-object v4

    .line 536
    .end local v2  # "inputChannels":[Landroid/view/InputChannel;
    .end local v3  # "host":Lcom/android/server/input/InputManagerService$InputMonitorHost;
    :catchall_3f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 523
    .end local v0  # "ident":J
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayId must >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_4c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MONITOR_INPUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;
    .registers 8
    .param p1, "inputChannelName"  # Ljava/lang/String;
    .param p2, "displayId"  # I

    .line 489
    if-eqz p1, :cond_2b

    .line 493
    if-ltz p2, :cond_23

    .line 497
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 499
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/InputChannel;->setToken(Landroid/os/IBinder;)V

    .line 500
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    aget-object v4, v0, v1

    invoke-static {v2, v3, v4, p2, v1}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputMonitor(JLandroid/view/InputChannel;IZ)V

    .line 501
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 502
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1

    .line 494
    .end local v0  # "inputChannels":[Landroid/view/InputChannel;
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayId must >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannelName must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDisplayRemoved(I)V
    .registers 5
    .param p1, "displayId"  # I

    .line 1500
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/input/InputManagerService;->nativeSetInputWindows(J[Landroid/view/InputWindowHandle;I)V

    .line 1501
    return-void
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 5
    .param p1, "v"  # Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1671
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1672
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 1675
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1676
    return-void

    .line 1673
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "inputChannel"  # Landroid/view/InputChannel;
    .param p2, "token"  # Landroid/os/IBinder;

    .line 547
    if-eqz p1, :cond_14

    .line 551
    if-nez p2, :cond_a

    .line 552
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object p2, v0

    .line 554
    :cond_a
    invoke-virtual {p1, p2}, Landroid/view/InputChannel;->setToken(Landroid/os/IBinder;)V

    .line 556
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;I)V

    .line 557
    return-void

    .line 548
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .registers 7
    .param p1, "listener"  # Landroid/hardware/input/IInputDevicesChangedListener;

    .line 729
    if-eqz p1, :cond_38

    .line 733
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 735
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 740
    new-instance v2, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_35

    .line 743
    .local v2, "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :try_start_16
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 744
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_26
    .catchall {:try_start_16 .. :try_end_1e} :catchall_35

    .line 748
    .end local v3  # "binder":Landroid/os/IBinder;
    nop

    .line 750
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 751
    .end local v1  # "callingPid":I
    .end local v2  # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    monitor-exit v0

    .line 752
    return-void

    .line 745
    .restart local v1  # "callingPid":I
    .restart local v2  # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :catch_26
    move-exception v3

    .line 747
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/input/InputManagerService;
    .end local p1  # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    throw v4

    .line 736
    .end local v2  # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    .end local v3  # "ex":Landroid/os/RemoteException;
    .restart local p0  # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1  # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    :cond_2d
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/input/InputManagerService;
    .end local p1  # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    throw v2

    .line 751
    .end local v1  # "callingPid":I
    .restart local p0  # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1  # "listener":Landroid/hardware/input/IInputDevicesChangedListener;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_35

    throw v1

    .line 730
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .registers 7
    .param p1, "listener"  # Landroid/hardware/input/ITabletModeChangedListener;

    .line 975
    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "registerTabletModeChangedListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 979
    if-eqz p1, :cond_43

    .line 983
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 984
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 985
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_38

    .line 989
    new-instance v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_40

    .line 992
    .local v2, "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    :try_start_21
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 993
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_31
    .catchall {:try_start_21 .. :try_end_29} :catchall_40

    .line 996
    .end local v3  # "binder":Landroid/os/IBinder;
    nop

    .line 997
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 998
    .end local v1  # "callingPid":I
    .end local v2  # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    monitor-exit v0

    .line 999
    return-void

    .line 994
    .restart local v1  # "callingPid":I
    .restart local v2  # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    :catch_31
    move-exception v3

    .line 995
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/input/InputManagerService;
    .end local p1  # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    throw v4

    .line 986
    .end local v2  # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    .end local v3  # "ex":Landroid/os/RemoteException;
    .restart local p0  # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1  # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    :cond_38
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has already registered a TabletModeChangedListener."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/input/InputManagerService;
    .end local p1  # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    throw v2

    .line 998
    .end local v1  # "callingPid":I
    .restart local p0  # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1  # "listener":Landroid/hardware/input/ITabletModeChangedListener;
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_40

    throw v1

    .line 980
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :cond_4c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TABLET_MODE_LISTENER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 9
    .param p1, "identifier"  # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"  # Ljava/lang/String;

    .line 1418
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "removeKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1422
    if-eqz p2, :cond_72

    .line 1426
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1427
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1429
    :try_start_14
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1430
    .local v2, "oldLayout":Ljava/lang/String;
    if-nez v2, :cond_31

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 1431
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1433
    :cond_31
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1434
    .local v3, "removed":Z
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 1436
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1439
    :cond_4c
    if-eqz v3, :cond_60

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 1440
    invoke-virtual {v4, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1439
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 1441
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_60
    .catchall {:try_start_14 .. :try_end_60} :catchall_68

    .line 1444
    .end local v2  # "oldLayout":Ljava/lang/String;
    .end local v3  # "removed":Z
    :cond_60
    :try_start_60
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1445
    nop

    .line 1446
    monitor-exit v1

    .line 1447
    return-void

    .line 1444
    :catchall_68
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .end local v0  # "key":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/input/InputManagerService;
    .end local p1  # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2  # "keyboardLayoutDescriptor":Ljava/lang/String;
    throw v2

    .line 1446
    .restart local v0  # "key":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1  # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2  # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_6f
    move-exception v2

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_60 .. :try_end_71} :catchall_6f

    throw v2

    .line 1423
    .end local v0  # "key":Ljava/lang/String;
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1420
    :cond_7b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPointerCapture(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "windowToken"  # Landroid/os/IBinder;
    .param p2, "enabled"  # Z

    .line 1505
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    const-string v1, "InputManager"

    if-eqz v0, :cond_32

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_d

    goto :goto_32

    .line 1510
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindowHasCapture:Z

    if-ne v0, p2, :cond_2e

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPointerCapture: already "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_21

    const-string v2, "enabled"

    goto :goto_23

    :cond_21
    const-string v2, "disabled"

    :goto_23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    return-void

    .line 1514
    :cond_2e
    invoke-direct {p0, p2}, Lcom/android/server/input/InputManagerService;->setPointerCapture(Z)V

    .line 1515
    return-void

    .line 1506
    :cond_32
    :goto_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPointerCapture called for a window that has no focus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    return-void
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 7
    .param p1, "identifier"  # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"  # Ljava/lang/String;

    .line 1350
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "setCurrentKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1354
    if-eqz p2, :cond_34

    .line 1358
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1359
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1361
    :try_start_14
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1365
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_2a

    .line 1368
    :cond_22
    :try_start_22
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1369
    nop

    .line 1370
    monitor-exit v1

    .line 1371
    return-void

    .line 1368
    :catchall_2a
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .end local v0  # "key":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/input/InputManagerService;
    .end local p1  # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local p2  # "keyboardLayoutDescriptor":Ljava/lang/String;
    throw v2

    .line 1370
    .restart local v0  # "key":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1  # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local p2  # "keyboardLayoutDescriptor":Ljava/lang/String;
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_31

    throw v2

    .line 1355
    .end local v0  # "key":Ljava/lang/String;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1352
    :cond_3d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .registers 4
    .param p1, "icon"  # Landroid/view/PointerIcon;

    .line 1696
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V

    .line 1698
    return-void
.end method

.method public setFocusedApplication(ILandroid/view/InputApplicationHandle;)V
    .registers 5
    .param p1, "displayId"  # I
    .param p2, "application"  # Landroid/view/InputApplicationHandle;

    .line 1491
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedApplication(JILandroid/view/InputApplicationHandle;)V

    .line 1492
    return-void
.end method

.method public setFocusedDisplay(I)V
    .registers 4
    .param p1, "displayId"  # I

    .line 1495
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedDisplay(JI)V

    .line 1496
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .registers 5
    .param p1, "enabled"  # Z
    .param p2, "frozen"  # Z

    .line 1530
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInputDispatchMode(JZZ)V

    .line 1531
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .registers 7
    .param p1, "filter"  # Landroid/view/IInputFilter;

    .line 583
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 585
    .local v1, "oldFilter":Landroid/view/IInputFilter;
    if-ne v1, p1, :cond_9

    .line 586
    monitor-exit v0

    return-void

    .line 589
    :cond_9
    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 590
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 591
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    .line 592
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_38

    .line 594
    :try_start_15
    invoke-interface {v1}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19
    .catchall {:try_start_15 .. :try_end_18} :catchall_38

    .line 597
    goto :goto_1a

    .line 595
    :catch_19
    move-exception v3

    .line 600
    :cond_1a
    :goto_1a
    if-eqz p1, :cond_2c

    .line 601
    :try_start_1c
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 602
    new-instance v3, Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_38

    .line 604
    :try_start_25
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-interface {p1, v2}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b
    .catchall {:try_start_25 .. :try_end_2a} :catchall_38

    .line 607
    goto :goto_2c

    .line 605
    :catch_2b
    move-exception v2

    .line 610
    :cond_2c
    :goto_2c
    :try_start_2c
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz p1, :cond_32

    const/4 v4, 0x1

    goto :goto_33

    :cond_32
    const/4 v4, 0x0

    :goto_33
    invoke-static {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(JZ)V

    .line 611
    .end local v1  # "oldFilter":Landroid/view/IInputFilter;
    monitor-exit v0

    .line 612
    return-void

    .line 611
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public setPointerIconType(I)V
    .registers 4
    .param p1, "iconId"  # I

    .line 1690
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerIconType(JI)V

    .line 1691
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .registers 4
    .param p1, "visibility"  # I

    .line 1534
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetSystemUiVisibility(JI)V

    .line 1535
    return-void
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .registers 7
    .param p1, "inputDeviceDescriptor"  # Ljava/lang/String;
    .param p2, "surfaceRotation"  # I
    .param p3, "calibration"  # Landroid/hardware/input/TouchCalibration;

    .line 938
    const-string v0, "android.permission.SET_INPUT_CALIBRATION"

    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 942
    if-eqz p1, :cond_47

    .line 945
    if-eqz p3, :cond_3f

    .line 948
    if-ltz p2, :cond_36

    const/4 v0, 0x3

    if-gt p2, v0, :cond_36

    .line 952
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 954
    :try_start_17
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 956
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->nativeReloadCalibration(J)V
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_2c

    .line 959
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 960
    nop

    .line 961
    monitor-exit v0

    .line 962
    return-void

    .line 959
    :catchall_2c
    move-exception v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .end local p0  # "this":Lcom/android/server/input/InputManagerService;
    .end local p1  # "inputDeviceDescriptor":Ljava/lang/String;
    .end local p2  # "surfaceRotation":I
    .end local p3  # "calibration":Landroid/hardware/input/TouchCalibration;
    throw v1

    .line 961
    .restart local p0  # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1  # "inputDeviceDescriptor":Ljava/lang/String;
    .restart local p2  # "surfaceRotation":I
    .restart local p3  # "calibration":Landroid/hardware/input/TouchCalibration;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    throw v1

    .line 949
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceRotation value out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "calibration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_50
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_INPUT_CALIBRATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .registers 2
    .param p1, "callbacks"  # Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 331
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 332
    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .registers 2
    .param p1, "callbacks"  # Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 335
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 336
    return-void
.end method

.method public start()V
    .registers 6

    .line 339
    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeStart(J)V

    .line 343
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 345
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    .line 346
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    .line 347
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerAccessibilityLargePointerSettingObserver()V

    .line 349
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    .line 359
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    .line 360
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    .line 361
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .registers 5
    .param p1, "deviceId"  # I
    .param p2, "direction"  # I

    .line 1450
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1451
    return-void
.end method

.method public systemRunning()V
    .registers 6

    .line 368
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 372
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 384
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 385
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 392
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 393
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 395
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    if-eqz v1, :cond_60

    .line 396
    invoke-interface {v1}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->systemReady()V

    .line 398
    :cond_60
    return-void
.end method

.method public tryPointerSpeed(I)V
    .registers 4
    .param p1, "speed"  # I

    .line 1539
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string/jumbo v1, "tryPointerSpeed()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1544
    const/4 v0, -0x7

    if-lt p1, v0, :cond_15

    const/4 v0, 0x7

    if-gt p1, v0, :cond_15

    .line 1548
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1549
    return-void

    .line 1545
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1541
    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .registers 4
    .param p1, "inputChannel"  # Landroid/view/InputChannel;

    .line 564
    if-eqz p1, :cond_8

    .line 568
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    .line 569
    return-void

    .line 565
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAccessibilityLargePointerFromSettings()V
    .registers 5

    .line 1600
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 1601
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1600
    const/4 v1, 0x0

    const-string v2, "accessibility_large_pointer_icon"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1603
    .local v0, "accessibilityConfig":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v1, v2

    :cond_12
    invoke-static {v1}, Landroid/view/PointerIcon;->setUseLargeIcons(Z)V

    .line 1604
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->nativeReloadPointerIcons(J)V

    .line 1605
    return-void
.end method

.method public updatePointerSpeedFromSettings()V
    .registers 2

    .line 1552
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    move-result v0

    .line 1553
    .local v0, "speed":I
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1554
    return-void
.end method

.method public updateShowTouchesFromSettings()V
    .registers 5

    .line 1584
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    move-result v1

    .line 1585
    .local v1, "setting":I
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-static {v2, v3, v0}, Lcom/android/server/input/InputManagerService;->nativeSetShowTouches(JZ)V

    .line 1586
    return-void
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .registers 13
    .param p1, "deviceId"  # I
    .param p2, "pattern"  # [J
    .param p3, "repeat"  # I
    .param p4, "token"  # Landroid/os/IBinder;

    .line 1631
    array-length v0, p2

    if-ge p3, v0, :cond_45

    .line 1636
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1637
    :try_start_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1638
    .local v1, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-nez v1, :cond_2e

    .line 1639
    new-instance v2, Lcom/android/server/input/InputManagerService$VibratorToken;

    iget v3, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v2, p0, p1, p4, v3}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_42

    move-object v1, v2

    .line 1641
    const/4 v2, 0x0

    :try_start_1d
    invoke-interface {p4, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_27
    .catchall {:try_start_1d .. :try_end_20} :catchall_42

    .line 1645
    nop

    .line 1646
    :try_start_21
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 1642
    :catch_27
    move-exception v2

    .line 1644
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/input/InputManagerService;
    .end local p1  # "deviceId":I
    .end local p2  # "pattern":[J
    .end local p3  # "repeat":I
    .end local p4  # "token":Landroid/os/IBinder;
    throw v3

    .line 1648
    .end local v2  # "ex":Landroid/os/RemoteException;
    .restart local p0  # "this":Lcom/android/server/input/InputManagerService;
    .restart local p1  # "deviceId":I
    .restart local p2  # "pattern":[J
    .restart local p3  # "repeat":I
    .restart local p4  # "token":Landroid/os/IBinder;
    :cond_2e
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_42

    .line 1650
    monitor-enter v1

    .line 1651
    const/4 v0, 0x1

    :try_start_31
    iput-boolean v0, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1652
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v7, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->nativeVibrate(JI[JII)V

    .line 1653
    monitor-exit v1

    .line 1654
    return-void

    .line 1653
    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_3f

    throw v0

    .line 1648
    .end local v1  # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1

    .line 1632
    :cond_45
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
