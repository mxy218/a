.class public Lcom/android/server/usb/UsbDeviceManager;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$MeizuUsbThreadFactory;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler;,
        Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;
    }
.end annotation


# static fields
.field private static final ACCESSORY_REQUEST_TIMEOUT:I = 0x2710

.field private static final ACCESSORY_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_accessory"

.field private static final ADB_NOTIFICATION_CHANNEL_ID_TV:Ljava/lang/String; = "usbdevicemanager.adb.tv"

.field private static final AUDIO_MODE_SOURCE:I = 0x1

.field private static final AUDIO_SOURCE_PCM_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_audio_source/pcm"

.field private static final BOOT_MODE_PROPERTY:Ljava/lang/String; = "ro.bootmode"

.field private static final DEBUG:Z = true

.field private static final FUNCTIONS_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/functions"

.field private static final MIDI_ALSA_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_midi/alsa"

.field private static final MSG_ACCESSORY_MODE_ENTER_TIMEOUT:I = 0x8

.field private static final MSG_BOOT_COMPLETED:I = 0x4

.field private static final MSG_ENABLE_ADB:I = 0x1

.field private static final MSG_FUNCTION_SWITCH_TIMEOUT:I = 0x11

.field private static final MSG_GADGET_HAL_REGISTERED:I = 0x12

.field private static final MSG_GET_CURRENT_USB_FUNCTIONS:I = 0x10

.field private static final MSG_LIQUID_DETECTED:I = 0xc8

.field private static final MSG_LOCALE_CHANGED:I = 0xb

.field private static final MSG_SET_CHARGING_FUNCTIONS:I = 0xe

.field private static final MSG_SET_CURRENT_FUNCTIONS:I = 0x2

.field private static final MSG_SET_FUNCTIONS_TIMEOUT:I = 0xf

.field private static final MSG_SET_SCREEN_UNLOCKED_FUNCTIONS:I = 0xc

.field private static final MSG_SYSTEM_READY:I = 0x3

.field private static final MSG_UPDATE_CHARGING_STATE:I = 0x9

.field private static final MSG_UPDATE_HOST_STATE:I = 0xa

.field private static final MSG_UPDATE_PORT_STATE:I = 0x7

.field private static final MSG_UPDATE_SCREEN_LOCK:I = 0xd

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final MSG_UPDATE_USER_RESTRICTIONS:I = 0x6

.field private static final MSG_USER_SWITCHED:I = 0x5

.field private static final MZ_SMS_DELIVER:Ljava/lang/String; = "android.provider.Telephony.MZ_SMS_DELIVER"

.field private static final NORMAL_BOOT:Ljava/lang/String; = "normal"

.field private static final NOTE_USB_LIQUID:I = 0x3c

.field private static final PHONE_UNLOCK_PWD:Ljava/lang/String; = "phone_unlock_pwd"

.field private static final RNDIS_ETH_ADDR_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_rndis/ethaddr"

.field private static final STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field private static final TAG:Ljava/lang/String;

.field static final UNLOCKED_CONFIG_PREF:Ljava/lang/String; = "usb-screen-unlocked-config-%d"

.field private static final UPDATE_DELAY:I = 0x3e8

.field private static final USB_CHARGING_PROPERTY:Ljava/lang/String; = "sys.usb.charging"

.field private static final USB_LIQUID_PATH:Ljava/lang/String; = "moisture_status="

.field private static final USB_PREFS_XML:Ljava/lang/String; = "UsbDeviceManagerPrefs.xml"

.field private static final USB_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/android_usb/android0"

.field private static final USB_STATE_MATCH_SEC:Ljava/lang/String; = "DEVPATH=/devices/virtual/android_usb/android1"

.field private static mThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sBlackListedInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessoryStrings:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mControlFds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/io/FileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mCurrentSmsVolume:I

.field private mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field private final mHasUsbAccessory:Z

.field private mLastCheckPwdTime:J

.field private final mLock:Ljava/lang/Object;

.field private mMaxSmsVolume:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mOpenMtpReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsReceiver:Landroid/content/BroadcastReceiver;

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 2782
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 10

    .line 152
    const-class v0, Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    .line 247
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2586
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/android/server/usb/UsbDeviceManager$MeizuUsbThreadFactory;

    const-string v1, "UsbDM-ThreadPool"

    invoke-direct {v9, v1}, Lcom/android/server/usb/UsbDeviceManager$MeizuUsbThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-wide/16 v5, 0x3e8

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 20
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "alsaManager"  # Lcom/android/server/usb/UsbAlsaManager;
    .param p3, "settingsManager"  # Lcom/android/server/usb/UsbSettingsManager;

    .line 310
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 2503
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$5;

    invoke-direct {v0, v7}, Lcom/android/server/usb/UsbDeviceManager$5;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mOpenMtpReceiver:Landroid/content/BroadcastReceiver;

    .line 2583
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mLastCheckPwdTime:J

    .line 2692
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$6;

    invoke-direct {v0, v7}, Lcom/android/server/usb/UsbDeviceManager$6;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 2888
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$7;

    invoke-direct {v0, v7}, Lcom/android/server/usb/UsbDeviceManager$7;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    .line 2913
    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 311
    move-object/from16 v9, p1

    iput-object v9, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 313
    iget-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 314
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "android.hardware.usb.accessory"

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    .line 315
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->initRndisAddress()V

    .line 317
    const/4 v1, 0x0

    .line 319
    .local v1, "halNotPresent":Z
    const/4 v0, 0x1

    :try_start_45
    invoke-static {v0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService(Z)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_56
    .catch Ljava/util/NoSuchElementException; {:try_start_45 .. :try_end_48} :catch_49

    .line 325
    :goto_48
    goto :goto_61

    .line 322
    :catch_49
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 323
    .local v0, "e":Ljava/util/NoSuchElementException;
    const/4 v1, 0x1

    .line 324
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "USB GADGET HAL not present in the device"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_62

    .line 320
    .end local v0  # "e":Ljava/util/NoSuchElementException;
    :catch_56
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "USB GADGET HAL present but exception thrown"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0  # "e":Landroid/os/RemoteException;
    goto :goto_48

    .line 327
    :goto_61
    move v0, v1

    .end local v1  # "halNotPresent":Z
    .local v0, "halNotPresent":Z
    :goto_62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v7, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    .line 328
    const-string/jumbo v1, "mtp"

    invoke-direct {v7, v1}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v11

    .line 329
    .local v11, "mtpFd":Ljava/io/FileDescriptor;
    if-nez v11, :cond_79

    .line 330
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to open control for mtp"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_79
    iget-object v1, v7, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v1, "ptp"

    invoke-direct {v7, v1}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v12

    .line 334
    .local v12, "ptpFd":Ljava/io/FileDescriptor;
    if-nez v12, :cond_94

    .line 335
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to open control for ptp"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_94
    iget-object v1, v7, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    const-wide/16 v2, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    if-eqz v0, :cond_ba

    .line 343
    new-instance v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    move-object v1, v13

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v13, v7, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    goto :goto_d2

    .line 349
    :cond_ba
    new-instance v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    move-object v1, v13

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v13, v7, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 353
    :goto_d2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeIsStartRequested()Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 354
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "accessory attached at boot"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    .line 358
    :cond_e2
    new-instance v1, Lcom/android/server/usb/UsbDeviceManager$1;

    invoke-direct {v1, v7}, Lcom/android/server/usb/UsbDeviceManager$1;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 368
    .local v1, "portReceiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$2;

    invoke-direct {v2, v7}, Lcom/android/server/usb/UsbDeviceManager$2;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 377
    .local v2, "chargingReceiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$3;

    invoke-direct {v3, v7}, Lcom/android/server/usb/UsbDeviceManager$3;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 390
    .local v3, "hostReceiver":Landroid/content/BroadcastReceiver;
    new-instance v4, Lcom/android/server/usb/UsbDeviceManager$4;

    invoke-direct {v4, v7}, Lcom/android/server/usb/UsbDeviceManager$4;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 397
    .local v4, "languageChangedReceiver":Landroid/content/BroadcastReceiver;
    iget-object v5, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v13, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v6, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 399
    iget-object v5, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 404
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    iget-object v6, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 407
    iget-object v6, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 411
    new-instance v6, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;

    invoke-direct {v6, v7, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbDeviceManager$1;)V

    iput-object v6, v7, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    .line 412
    iget-object v6, v7, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v8, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v6, v8}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 413
    iget-object v6, v7, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v8, "DEVPATH=/devices/virtual/android_usb/android1"

    invoke-virtual {v6, v8}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 414
    iget-object v6, v7, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v8, "DEVPATH=/devices/virtual/misc/usb_accessory"

    invoke-virtual {v6, v8}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 415
    iget-object v6, v7, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v8, "moisture_status="

    invoke-virtual {v6, v8}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 418
    iget-object v6, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    iget-object v8, v7, Lcom/android/server/usb/UsbDeviceManager;->mOpenMtpReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string/jumbo v14, "meizu.intent.action.MTP_OPEN"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 419
    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 420
    .local v6, "iSmsFilter":Landroid/content/IntentFilter;
    const-string v8, "android.provider.Telephony.MZ_SMS_DELIVER"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    iget-object v8, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    iget-object v13, v7, Lcom/android/server/usb/UsbDeviceManager;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v13, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 422
    iget-object v8, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    iget-object v13, v7, Lcom/android/server/usb/UsbDeviceManager;->mBootReceiver:Landroid/content/BroadcastReceiver;

    new-instance v14, Landroid/content/IntentFilter;

    const-string v15, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v14, v15}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 150
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbDeviceManager;

    .line 150
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"  # Ljava/lang/String;

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->changeToMtp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"  # Landroid/content/Context;

    .line 150
    invoke-static {p0}, Lcom/android/server/usb/UsbDeviceManager;->exportContact(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1300()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 150
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/usb/UsbDeviceManager;Landroid/telephony/SmsMessage;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"  # Landroid/telephony/SmsMessage;

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->getSmsAndCheck(Landroid/telephony/SmsMessage;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/usb/UsbDeviceManager;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbDeviceManager;

    .line 150
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/usb/UsbDeviceManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"  # Landroid/media/MediaPlayer;

    .line 150
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/usb/UsbDeviceManager;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbDeviceManager;

    .line 150
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mMaxSmsVolume:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/usb/UsbDeviceManager;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbDeviceManager;

    .line 150
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSmsVolume:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/usb/UsbDeviceManager;

    .line 150
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    return-void
.end method

.method static synthetic access$500()Ljava/util/Set;
    .registers 1

    .line 150
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)Z
    .registers 2
    .param p0, "x0"  # Ljava/lang/String;

    .line 150
    invoke-static {p0}, Lcom/android/server/usb/UsbDeviceManager;->isChargingMode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private changeToCharging()V
    .registers 3

    .line 2579
    const-string/jumbo v0, "persist.sys.mtp.open.config"

    const-string/jumbo v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 2581
    return-void
.end method

.method private changeToMtp(Ljava/lang/String;)V
    .registers 8
    .param p1, "usbMode"  # Ljava/lang/String;

    .line 2548
    const-string/jumbo v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2549
    const-wide/16 v0, 0x10

    .local v0, "usb_mode":J
    goto :goto_e

    .line 2551
    .end local v0  # "usb_mode":J
    :cond_c
    const-wide/16 v0, 0x4

    .line 2554
    .restart local v0  # "usb_mode":J
    :goto_e
    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    .line 2555
    .local v2, "str_mode":Ljava/lang/String;
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeToMtp change to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 2561
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2562
    const-string v3, "adb"

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->access$1100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2564
    :cond_39
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeToMtp str_mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    const-string/jumbo v3, "persist.sys.usb.config"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    const-string/jumbo v3, "persist.sys.mtp.open.config"

    const-string/jumbo v4, "yes"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2568
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->playSetUsbModeSound()V

    .line 2572
    return-void
.end method

.method private checkPassword(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "password"  # Ljava/lang/String;

    .line 2528
    const/4 v0, 0x0

    .line 2530
    .local v0, "ret":Z
    :try_start_1
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2531
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x2

    .line 2532
    invoke-virtual {v1, v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->checkFlymePassword(ILjava/lang/String;)Z

    move-result v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_21

    if-eqz v2, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v2, 0x1

    :goto_1f
    move v0, v2

    .line 2535
    .end local v1  # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    goto :goto_25

    .line 2533
    :catch_21
    move-exception v1

    .line 2534
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2536
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_25
    return v0
.end method

.method private static exportContact(Landroid/content/Context;)V
    .registers 14
    .param p0, "context"  # Landroid/content/Context;

    .line 2727
    const-string v0, "display_name"

    const-string v1, "data1"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v4

    .line 2731
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2734
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_b1

    .line 2735
    :try_start_17
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_a9

    .line 2736
    invoke-static {p0}, Lcom/android/server/usb/UsbDeviceManager;->getContactSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2737
    .local v3, "contactPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 2738
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    .line 2739
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 2740
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_36

    .line 2741
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v8

    .line 2743
    :cond_36
    const/4 v8, 0x0

    .line 2744
    .local v8, "commitFlag":Z
    :goto_37
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 2746
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2747
    .local v9, "number":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2748
    .local v10, "name":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 2749
    if-eqz v9, :cond_6c

    if-eqz v10, :cond_6c

    .line 2750
    if-eqz v7, :cond_5b

    .line 2751
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2754
    :cond_5b
    const-string v11, ""

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2755
    .local v11, "oldName":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_68

    .line 2756
    goto :goto_37

    .line 2758
    :cond_68
    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2759
    const/4 v8, 0x1

    .line 2761
    .end local v9  # "number":Ljava/lang/String;
    .end local v10  # "name":Ljava/lang/String;
    .end local v11  # "oldName":Ljava/lang/String;
    :cond_6c
    goto :goto_37

    .line 2763
    :cond_6d
    if-eqz v7, :cond_9c

    .line 2764
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2765
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    .line 2766
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9b

    const-string/jumbo v9, "phone_unlock_pwd"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9b

    .line 2767
    invoke-interface {v5, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2768
    const/4 v8, 0x1

    .line 2770
    .end local v1  # "key":Ljava/lang/String;
    :cond_9b
    goto :goto_77

    .line 2772
    :cond_9c
    if-eqz v8, :cond_a8

    .line 2773
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2774
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "Export successful!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    .end local v3  # "contactPrefs":Landroid/content/SharedPreferences;
    .end local v5  # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6  # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7  # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8  # "commitFlag":Z
    :cond_a8
    goto :goto_b8

    .line 2777
    :cond_a9
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "contact is 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 2780
    :cond_b1
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "No contact number and name"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_17 .. :try_end_b8} :catchall_bf

    .line 2782
    :goto_b8
    if-eqz v2, :cond_be

    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/android/server/usb/UsbDeviceManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 2783
    .end local v2  # "cursor":Landroid/database/Cursor;
    :cond_be
    return-void

    .line 2731
    .restart local v2  # "cursor":Landroid/database/Cursor;
    :catchall_bf
    move-exception v0

    .end local v2  # "cursor":Landroid/database/Cursor;
    .end local v4  # "projection":[Ljava/lang/String;
    .end local p0  # "context":Landroid/content/Context;
    :try_start_c0
    throw v0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_c1

    .line 2782
    .restart local v2  # "cursor":Landroid/database/Cursor;
    .restart local v4  # "projection":[Ljava/lang/String;
    .restart local p0  # "context":Landroid/content/Context;
    :catchall_c1
    move-exception v1

    if-eqz v2, :cond_c7

    invoke-static {v0, v2}, Lcom/android/server/usb/UsbDeviceManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_c7
    throw v1
.end method

.method private static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "address"  # Ljava/lang/String;

    .line 2848
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 2850
    :cond_7
    move-object v0, p0

    .line 2851
    .local v0, "formatAddress":Ljava/lang/String;
    const-string v1, "861"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_29

    .line 2852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2855
    :cond_29
    nop

    .line 2856
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->removeSpaceAndDivider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2855
    invoke-static {v1}, Landroid/telephony/MzPhoneNumberUtils;->removeCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2858
    .local v1, "addr2":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2859
    return-object v1

    .line 2861
    :cond_39
    invoke-static {v1}, Landroid/telephony/MzPhoneNumberUtils;->removeCNIpPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2862
    .local v2, "addr3":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 2863
    return-object v1

    .line 2865
    :cond_44
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->normalizeDigits(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getContactNameByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "number"  # Ljava/lang/String;

    .line 2791
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->getContactSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2792
    .local v0, "contactPrefs":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2795
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 2796
    const-string v2, "display_name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 2798
    .local v5, "projection":[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2800
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 2802
    if-eqz v3, :cond_53

    .line 2805
    :cond_3f
    :try_start_3f
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 2807
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 2808
    if-eqz v1, :cond_3f

    .line 2809
    goto :goto_5a

    .line 2800
    :catchall_51
    move-exception v2

    goto :goto_60

    .line 2813
    :cond_53
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v6, "No contact name"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_3f .. :try_end_5a} :catchall_51

    .line 2815
    :cond_5a
    :goto_5a
    if-eqz v3, :cond_68

    invoke-static {v4, v3}, Lcom/android/server/usb/UsbDeviceManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    goto :goto_68

    .line 2800
    .end local v0  # "contactPrefs":Landroid/content/SharedPreferences;
    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "cursor":Landroid/database/Cursor;
    .end local v5  # "projection":[Ljava/lang/String;
    .end local v9  # "uri":Landroid/net/Uri;
    .end local p0  # "this":Lcom/android/server/usb/UsbDeviceManager;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "number":Ljava/lang/String;
    :goto_60
    :try_start_60
    throw v2
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    .line 2815
    .restart local v0  # "contactPrefs":Landroid/content/SharedPreferences;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v3  # "cursor":Landroid/database/Cursor;
    .restart local v5  # "projection":[Ljava/lang/String;
    .restart local v9  # "uri":Landroid/net/Uri;
    .restart local p0  # "this":Lcom/android/server/usb/UsbDeviceManager;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "number":Ljava/lang/String;
    :catchall_61
    move-exception v4

    if-eqz v3, :cond_67

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_67
    throw v4

    .line 2819
    .end local v3  # "cursor":Landroid/database/Cursor;
    .end local v5  # "projection":[Ljava/lang/String;
    .end local v9  # "uri":Landroid/net/Uri;
    :cond_68
    :goto_68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_cf

    .line 2820
    invoke-static {p2}, Lcom/android/server/usb/UsbDeviceManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2821
    .local v2, "address":Ljava/lang/String;
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "address after format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    const-string v3, "content://blackList/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2824
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "address"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v8, v5

    const/4 v9, 0x0

    const-string v7, "address=?"

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 2831
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_cf

    .line 2832
    .end local v4  # "cursor":Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 2833
    .local v5, "count":I
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "blacklist count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    if-lez v5, :cond_cc

    .line 2835
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v7, "The sender is in blacklist contact!"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    const/4 v1, 0x0

    .line 2838
    :cond_cc
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2843
    .end local v2  # "address":Ljava/lang/String;
    .end local v3  # "uri":Landroid/net/Uri;
    .end local v5  # "count":I
    :cond_cf
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact name: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    return-object v1
.end method

.method private static getContactSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 5
    .param p0, "context"  # Landroid/content/Context;

    .line 2716
    new-instance v0, Ljava/io/File;

    .line 2717
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "UsbDeviceManagerContactPrefs.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2718
    .local v0, "prefsFile":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    .line 2719
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2718
    return-object v1
.end method

.method private getSmsAndCheck(Landroid/telephony/SmsMessage;)V
    .registers 22
    .param p1, "sms"  # Landroid/telephony/SmsMessage;

    .line 2591
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 2592
    .local v1, "number":Ljava/lang/String;
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2595
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 2598
    .local v2, "body":Ljava/lang/String;
    const-string v3, "*#"

    .line 2599
    .local v3, "PWDPREFIX":Ljava/lang/String;
    const-string v4, "#*"

    .line 2601
    .local v4, "PWDSUFFIX":Ljava/lang/String;
    const-string v5, "*#"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "#*"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    .line 2602
    .local v6, "MIN_LENGTH_WITHOUT_PWD":I
    add-int/lit8 v8, v6, 0x4

    .line 2603
    .local v8, "MIN_LENGTH_WITH_PWD":I
    add-int/lit8 v9, v6, 0x11

    .line 2604
    .local v9, "MAX_LENGTH_WITH_PWD":I
    if-eqz v2, :cond_208

    .line 2605
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2608
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v6, :cond_1fe

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v10, v9, :cond_1fe

    .line 2610
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2611
    .local v10, "sb":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const-string v13, "*"

    const v14, 0xff0a

    const/4 v15, 0x1

    if-ne v12, v14, :cond_60

    .line 2612
    invoke-virtual {v10, v11, v15, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2614
    :cond_60
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const-string v12, "#"

    const v14, 0xff03

    const/4 v15, 0x2

    if-ne v11, v14, :cond_71

    .line 2615
    const/4 v11, 0x1

    invoke-virtual {v10, v11, v15, v12}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 2614
    :cond_71
    const/4 v11, 0x1

    .line 2617
    :goto_72
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v14, v17, -0x1

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const v15, 0xff0a

    if-ne v14, v15, :cond_8d

    .line 2618
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v14, v11, v13}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2620
    :cond_8d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x2

    sub-int/2addr v11, v13

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const v14, 0xff03

    if-ne v11, v14, :cond_aa

    .line 2621
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v10, v11, v13, v12}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2623
    :cond_aa
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2624
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1f4

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1f4

    .line 2625
    sget-object v11, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "new body:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    const-string v11, "*#00#*"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f0

    iget-object v11, v0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 2628
    invoke-direct {v0, v11, v1}, Lcom/android/server/usb/UsbDeviceManager;->getContactNameByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f0

    .line 2630
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v7, "getSmsAndCheck change to charging only"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager;->changeToCharging()V

    .line 2632
    return-void

    .line 2634
    :cond_f0
    new-instance v11, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v12, v0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2635
    .local v11, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v12

    const-string/jumbo v13, "mtp"

    if-nez v12, :cond_141

    .line 2641
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_12f

    iget-object v5, v0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 2643
    invoke-direct {v0, v5, v1}, Lcom/android/server/usb/UsbDeviceManager;->getContactNameByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12f

    .line 2644
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v7, "getSmsAndCheck The phone NO Password, start mtp"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    invoke-direct {v0, v13}, Lcom/android/server/usb/UsbDeviceManager;->changeToMtp(Ljava/lang/String;)V

    move-object v12, v3

    move-object/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v19, v9

    goto/16 :goto_211

    .line 2647
    :cond_12f
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v7, "No password, do nothing."

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v12, v3

    move-object/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v19, v9

    goto/16 :goto_211

    .line 2653
    :cond_141
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v12, v8, :cond_1e3

    .line 2656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2657
    .local v14, "currentTime":J
    move-object v12, v3

    move-object/from16 v16, v4

    .end local v3  # "PWDPREFIX":Ljava/lang/String;
    .end local v4  # "PWDSUFFIX":Ljava/lang/String;
    .local v12, "PWDPREFIX":Ljava/lang/String;
    .local v16, "PWDSUFFIX":Ljava/lang/String;
    iget-wide v3, v0, Lcom/android/server/usb/UsbDeviceManager;->mLastCheckPwdTime:J

    sub-long v3, v14, v3

    .line 2658
    .local v3, "delta":J
    move/from16 v17, v6

    .end local v6  # "MIN_LENGTH_WITHOUT_PWD":I
    .local v17, "MIN_LENGTH_WITHOUT_PWD":I
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    move/from16 v18, v8

    .end local v8  # "MIN_LENGTH_WITH_PWD":I
    .local v18, "MIN_LENGTH_WITH_PWD":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v9

    .end local v9  # "MAX_LENGTH_WITH_PWD":I
    .local v19, "MAX_LENGTH_WITH_PWD":I
    const-string v9, "delta = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    const-wide/32 v8, 0xea60

    cmp-long v6, v3, v8

    if-gtz v6, :cond_17f

    .line 2660
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v6, "----- getSmsAndCheck Try one minute later !!! -----"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    iput-wide v14, v0, Lcom/android/server/usb/UsbDeviceManager;->mLastCheckPwdTime:J

    .line 2662
    return-void

    .line 2664
    :cond_17f
    iput-wide v14, v0, Lcom/android/server/usb/UsbDeviceManager;->mLastCheckPwdTime:J

    .line 2665
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2666
    .local v5, "password":Ljava/lang/String;
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "qxe:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    iget-object v6, v0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, v1}, Lcom/android/server/usb/UsbDeviceManager;->getContactNameByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e2

    .line 2670
    iget-object v6, v0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, v5}, Lcom/android/server/usb/UsbDeviceManager;->checkPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1db

    .line 2671
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v7, "getSmsAndCheck Password OK, to unlock and start mtp"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    invoke-direct {v0, v13}, Lcom/android/server/usb/UsbDeviceManager;->changeToMtp(Ljava/lang/String;)V

    .line 2674
    iget-object v6, v0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->getContactSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2675
    .local v6, "contactPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 2676
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v8, "phone_unlock_pwd"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2677
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2678
    .end local v6  # "contactPrefs":Landroid/content/SharedPreferences;
    .end local v7  # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_1e2

    .line 2679
    :cond_1db
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v7, "getSmsAndCheck Password ERROR, musn\'t unlock!"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    .end local v3  # "delta":J
    .end local v5  # "password":Ljava/lang/String;
    .end local v14  # "currentTime":J
    :cond_1e2
    :goto_1e2
    goto :goto_211

    .line 2683
    .end local v12  # "PWDPREFIX":Ljava/lang/String;
    .end local v16  # "PWDSUFFIX":Ljava/lang/String;
    .end local v17  # "MIN_LENGTH_WITHOUT_PWD":I
    .end local v18  # "MIN_LENGTH_WITH_PWD":I
    .end local v19  # "MAX_LENGTH_WITH_PWD":I
    .local v3, "PWDPREFIX":Ljava/lang/String;
    .restart local v4  # "PWDSUFFIX":Ljava/lang/String;
    .local v6, "MIN_LENGTH_WITHOUT_PWD":I
    .restart local v8  # "MIN_LENGTH_WITH_PWD":I
    .restart local v9  # "MAX_LENGTH_WITH_PWD":I
    :cond_1e3
    move-object v12, v3

    move-object/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v19, v9

    .end local v3  # "PWDPREFIX":Ljava/lang/String;
    .end local v4  # "PWDSUFFIX":Ljava/lang/String;
    .end local v6  # "MIN_LENGTH_WITHOUT_PWD":I
    .end local v8  # "MIN_LENGTH_WITH_PWD":I
    .end local v9  # "MAX_LENGTH_WITH_PWD":I
    .restart local v12  # "PWDPREFIX":Ljava/lang/String;
    .restart local v16  # "PWDSUFFIX":Ljava/lang/String;
    .restart local v17  # "MIN_LENGTH_WITHOUT_PWD":I
    .restart local v18  # "MIN_LENGTH_WITH_PWD":I
    .restart local v19  # "MAX_LENGTH_WITH_PWD":I
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v4, "Have opened MTP, do nothing."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_211

    .line 2624
    .end local v11  # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v12  # "PWDPREFIX":Ljava/lang/String;
    .end local v16  # "PWDSUFFIX":Ljava/lang/String;
    .end local v17  # "MIN_LENGTH_WITHOUT_PWD":I
    .end local v18  # "MIN_LENGTH_WITH_PWD":I
    .end local v19  # "MAX_LENGTH_WITH_PWD":I
    .restart local v3  # "PWDPREFIX":Ljava/lang/String;
    .restart local v4  # "PWDSUFFIX":Ljava/lang/String;
    .restart local v6  # "MIN_LENGTH_WITHOUT_PWD":I
    .restart local v8  # "MIN_LENGTH_WITH_PWD":I
    .restart local v9  # "MAX_LENGTH_WITH_PWD":I
    :cond_1f4
    move-object v12, v3

    move-object/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v19, v9

    .end local v3  # "PWDPREFIX":Ljava/lang/String;
    .end local v4  # "PWDSUFFIX":Ljava/lang/String;
    .end local v6  # "MIN_LENGTH_WITHOUT_PWD":I
    .end local v8  # "MIN_LENGTH_WITH_PWD":I
    .end local v9  # "MAX_LENGTH_WITH_PWD":I
    .restart local v12  # "PWDPREFIX":Ljava/lang/String;
    .restart local v16  # "PWDSUFFIX":Ljava/lang/String;
    .restart local v17  # "MIN_LENGTH_WITHOUT_PWD":I
    .restart local v18  # "MIN_LENGTH_WITH_PWD":I
    .restart local v19  # "MAX_LENGTH_WITH_PWD":I
    goto :goto_211

    .line 2608
    .end local v10  # "sb":Ljava/lang/StringBuilder;
    .end local v12  # "PWDPREFIX":Ljava/lang/String;
    .end local v16  # "PWDSUFFIX":Ljava/lang/String;
    .end local v17  # "MIN_LENGTH_WITHOUT_PWD":I
    .end local v18  # "MIN_LENGTH_WITH_PWD":I
    .end local v19  # "MAX_LENGTH_WITH_PWD":I
    .restart local v3  # "PWDPREFIX":Ljava/lang/String;
    .restart local v4  # "PWDSUFFIX":Ljava/lang/String;
    .restart local v6  # "MIN_LENGTH_WITHOUT_PWD":I
    .restart local v8  # "MIN_LENGTH_WITH_PWD":I
    .restart local v9  # "MAX_LENGTH_WITH_PWD":I
    :cond_1fe
    move-object v12, v3

    move-object/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v19, v9

    .end local v3  # "PWDPREFIX":Ljava/lang/String;
    .end local v4  # "PWDSUFFIX":Ljava/lang/String;
    .end local v6  # "MIN_LENGTH_WITHOUT_PWD":I
    .end local v8  # "MIN_LENGTH_WITH_PWD":I
    .end local v9  # "MAX_LENGTH_WITH_PWD":I
    .restart local v12  # "PWDPREFIX":Ljava/lang/String;
    .restart local v16  # "PWDSUFFIX":Ljava/lang/String;
    .restart local v17  # "MIN_LENGTH_WITHOUT_PWD":I
    .restart local v18  # "MIN_LENGTH_WITH_PWD":I
    .restart local v19  # "MAX_LENGTH_WITH_PWD":I
    goto :goto_211

    .line 2604
    .end local v12  # "PWDPREFIX":Ljava/lang/String;
    .end local v16  # "PWDSUFFIX":Ljava/lang/String;
    .end local v17  # "MIN_LENGTH_WITHOUT_PWD":I
    .end local v18  # "MIN_LENGTH_WITH_PWD":I
    .end local v19  # "MAX_LENGTH_WITH_PWD":I
    .restart local v3  # "PWDPREFIX":Ljava/lang/String;
    .restart local v4  # "PWDSUFFIX":Ljava/lang/String;
    .restart local v6  # "MIN_LENGTH_WITHOUT_PWD":I
    .restart local v8  # "MIN_LENGTH_WITH_PWD":I
    .restart local v9  # "MAX_LENGTH_WITH_PWD":I
    :cond_208
    move-object v12, v3

    move-object/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v19, v9

    .line 2689
    .end local v3  # "PWDPREFIX":Ljava/lang/String;
    .end local v4  # "PWDSUFFIX":Ljava/lang/String;
    .end local v6  # "MIN_LENGTH_WITHOUT_PWD":I
    .end local v8  # "MIN_LENGTH_WITH_PWD":I
    .end local v9  # "MAX_LENGTH_WITH_PWD":I
    .restart local v12  # "PWDPREFIX":Ljava/lang/String;
    .restart local v16  # "PWDSUFFIX":Ljava/lang/String;
    .restart local v17  # "MIN_LENGTH_WITHOUT_PWD":I
    .restart local v18  # "MIN_LENGTH_WITH_PWD":I
    .restart local v19  # "MAX_LENGTH_WITH_PWD":I
    :goto_211
    return-void
.end method

.method private static initRndisAddress()V
    .registers 11

    .line 506
    const/4 v0, 0x6

    .line 507
    .local v0, "ETH_ALEN":I
    const/4 v1, 0x6

    new-array v2, v1, [I

    .line 509
    .local v2, "address":[I
    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 511
    const-string/jumbo v5, "ro.serialno"

    const-string v6, "1234567890ABCDEF"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, "serial":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 514
    .local v6, "serialLength":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_16
    const/4 v8, 0x1

    if-ge v7, v6, :cond_28

    .line 515
    rem-int/lit8 v9, v7, 0x5

    add-int/2addr v9, v8

    aget v8, v2, v9

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    xor-int/2addr v8, v10

    aput v8, v2, v9

    .line 514
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 517
    .end local v7  # "i":I
    :cond_28
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aget v9, v2, v4

    .line 518
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v4

    aget v4, v2, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x5

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 517
    const-string v3, "%02X:%02X:%02X:%02X:%02X:%02X"

    invoke-static {v7, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "addrString":Ljava/lang/String;
    :try_start_65
    const-string v3, "/sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v3, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6a} :catch_6b

    .line 523
    goto :goto_73

    .line 521
    :catch_6b
    move-exception v3

    .line 522
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v7, "failed to write to /sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v3  # "e":Ljava/io/IOException;
    :goto_73
    return-void
.end method

.method private static isChargingMode(Ljava/lang/String;)Z
    .registers 2
    .param p0, "config"  # Ljava/lang/String;

    .line 2492
    if-eqz p0, :cond_15

    .line 2493
    const-string/jumbo v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2494
    const-string v0, "adb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2495
    :cond_13
    const/4 v0, 0x1

    return v0

    .line 2498
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeGetAudioMode()I
.end method

.method private native nativeIsStartRequested()Z
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private native nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;
.end method

.method private static normalizeDigits(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 7
    .param p0, "number"  # Ljava/lang/String;

    .line 2871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2872
    .local v0, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_21

    aget-char v4, v1, v3

    .line 2873
    .local v4, "c":C
    const/16 v5, 0x30

    if-gt v5, v4, :cond_1e

    const/16 v5, 0x39

    if-gt v4, v5, :cond_1e

    .line 2874
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2872
    .end local v4  # "c":C
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2877
    :cond_21
    return-object v0
.end method

.method private onAdbEnabled(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 2474
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 2475
    return-void
.end method

.method private playSetUsbModeSound()V
    .registers 11

    .line 2919
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2920
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-nez v1, :cond_5c

    .line 2921
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMaxSmsVolume:I

    .line 2922
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSmsVolume:I

    .line 2923
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mMaxSmsVolume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mMaxSmsVolume:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mCurrentSmsVolume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSmsVolume:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMaxSmsVolume:I

    shr-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSmsVolume:I

    if-ge v5, v6, :cond_4f

    .line 2925
    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2927
    :cond_4f
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 2928
    .local v1, "maxVolume":I
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 2929
    .local v5, "currentVolume":I
    if-eq v1, v5, :cond_5c

    .line 2930
    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2935
    .end local v1  # "maxVolume":I
    .end local v5  # "currentVolume":I
    :cond_5c
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2936
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_138

    .line 2938
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v1, v5, :cond_89

    .line 2939
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2940
    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 2941
    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 2942
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 2944
    .local v1, "audioAttributes":Landroid/media/AudioAttributes;
    :try_start_7e
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7e .. :try_end_83} :catch_84

    .line 2947
    goto :goto_88

    .line 2945
    :catch_84
    move-exception v4

    .line 2946
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 2948
    .end local v1  # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v4  # "e":Ljava/lang/IllegalArgumentException;
    :goto_88
    goto :goto_8e

    .line 2950
    :cond_89
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2952
    :goto_8e
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 2954
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "zh_CN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 2955
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0xa0f0007

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .local v1, "file":Landroid/content/res/AssetFileDescriptor;
    goto :goto_c1

    .line 2957
    .end local v1  # "file":Landroid/content/res/AssetFileDescriptor;
    :cond_b4
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0xa0f0008

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 2960
    .restart local v1  # "file":Landroid/content/res/AssetFileDescriptor;
    :goto_c1
    :try_start_c1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 2961
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 2962
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/server/usb/UsbDeviceManager$8;

    invoke-direct {v5, p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager$8;-><init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/content/res/AssetFileDescriptor;Landroid/media/AudioManager;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2982
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/server/usb/UsbDeviceManager$9;

    invoke-direct {v5, p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager$9;-><init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/content/res/AssetFileDescriptor;Landroid/media/AudioManager;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 3004
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 3005
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v5, "Play set usb mode sound"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_f7} :catch_fa
    .catchall {:try_start_c1 .. :try_end_f7} :catchall_f8

    goto :goto_136

    .line 3023
    :catchall_f8
    move-exception v2

    goto :goto_137

    .line 3006
    :catch_fa
    move-exception v4

    .line 3007
    .local v4, "e":Ljava/io/IOException;
    :try_start_fb
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Play set usb mode sound error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_11d

    .line 3009
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 3010
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_11d
    .catchall {:try_start_fb .. :try_end_11d} :catchall_f8

    .line 3013
    :cond_11d
    if-eqz v1, :cond_128

    .line 3014
    :try_start_11f
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_123
    .catchall {:try_start_11f .. :try_end_122} :catchall_f8

    goto :goto_128

    .line 3016
    :catch_123
    move-exception v5

    .line 3017
    .local v5, "e1":Ljava/io/IOException;
    :try_start_124
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_129

    .line 3018
    .end local v5  # "e1":Ljava/io/IOException;
    :cond_128
    :goto_128
    nop

    .line 3020
    :goto_129
    iget v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mMaxSmsVolume:I

    shr-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSmsVolume:I

    if-ge v5, v6, :cond_136

    .line 3021
    iget v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSmsVolume:I

    invoke-virtual {v0, v3, v5, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_136
    .catchall {:try_start_124 .. :try_end_136} :catchall_f8

    .line 3024
    .end local v4  # "e":Ljava/io/IOException;
    :cond_136
    :goto_136
    goto :goto_138

    .line 3023
    :goto_137
    throw v2

    .line 3026
    .end local v1  # "file":Landroid/content/res/AssetFileDescriptor;
    :cond_138
    :goto_138
    return-void
.end method

.method private static removeSpaceAndDivider(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "address"  # Ljava/lang/String;

    .line 2881
    const-string v0, ""

    const-string v1, "-"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startAccessoryMode()V
    .registers 9

    .line 479
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    if-nez v0, :cond_5

    return-void

    .line 481
    :cond_5
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAccessoryStrings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    .line 482
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAudioMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    .line 484
    .local v0, "enableAudio":Z
    :goto_16
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    if-eqz v3, :cond_23

    aget-object v4, v3, v1

    if-eqz v4, :cond_23

    aget-object v3, v3, v2

    if-eqz v3, :cond_23

    move v1, v2

    .line 488
    .local v1, "enableAccessory":Z
    :cond_23
    const-wide/16 v2, 0x0

    .line 489
    .local v2, "functions":J
    if-eqz v1, :cond_2a

    .line 490
    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    .line 492
    :cond_2a
    if-eqz v0, :cond_2f

    .line 493
    const-wide/16 v4, 0x40

    or-long/2addr v2, v4

    .line 496
    :cond_2f
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_45

    .line 497
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 499
    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 501
    :cond_45
    return-void
.end method


# virtual methods
.method public bootCompleted()V
    .registers 5

    .line 447
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "boot completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 451
    const-string/jumbo v0, "persist.sys.mtp.open.config"

    const-string/jumbo v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 452
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->getContactSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 453
    .local v0, "contactPrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "phone_unlock_pwd"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "password":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 456
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/android/server/usb/UsbDeviceManager;->checkPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 457
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "boot completed check password OK, unlock and start mtp again"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-wide/16 v2, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    goto :goto_51

    .line 460
    :cond_4a
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "boot completed check password failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0  # "contactPrefs":Landroid/content/SharedPreferences;
    .end local v1  # "password":Ljava/lang/String;
    :cond_51
    :goto_51
    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 11
    .param p1, "dump"  # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"  # Ljava/lang/String;
    .param p3, "id"  # J

    .line 2481
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2483
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz v2, :cond_12

    .line 2484
    const-wide v3, 0x10b00000001L

    const-string v5, "handler"

    invoke-virtual {v2, p1, v5, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 2487
    :cond_12
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 2488
    return-void
.end method

.method getAccessoryStrings()[Ljava/lang/String;
    .registers 3

    .line 433
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 435
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "usbFunction"  # J

    .line 2418
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    .line 2419
    .local v0, "fd":Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 2420
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "getControlFd fd is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    return-object v1

    .line 2424
    :cond_17
    :try_start_17
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object v1

    .line 2425
    :catch_1c
    move-exception v2

    .line 2426
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not dup fd for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    return-object v1
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 2

    .line 2385
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFunctions()J
    .registers 3

    .line 2411
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getEnabledFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    monitor-exit v0

    return-object v1

    .line 429
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getScreenUnlockedFunctions()J
    .registers 3

    .line 2432
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public onAwakeStateChanged(Z)V
    .registers 2
    .param p1, "isAwake"  # Z

    .line 302
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 7
    .param p1, "isShowing"  # Z

    .line 288
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 289
    .local v0, "userHandle":I
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 290
    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    .line 292
    .local v1, "secure":Z
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyguardStateChanged: isShowing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " secure:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz p1, :cond_41

    if-eqz v1, :cond_41

    const/4 v3, 0x1

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    const/16 v4, 0xd

    invoke-virtual {v2, v4, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 297
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"  # I

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->onKeyguardStateChanged(Z)V

    .line 307
    return-void
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserSettingsManager;I)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "accessory"  # Landroid/hardware/usb/UsbAccessory;
    .param p2, "settings"  # Lcom/android/server/usb/UsbUserSettingsManager;
    .param p3, "uid"  # I

    .line 2396
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 2397
    .local v0, "currentAccessory":Landroid/hardware/usb/UsbAccessory;
    if-eqz v0, :cond_34

    .line 2400
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2406
    invoke-virtual {p2, p1, p3}, Lcom/android/server/usb/UsbUserSettingsManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 2407
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    .line 2401
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match current accessory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2404
    .local v1, "error":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2398
    .end local v1  # "error":Ljava/lang/String;
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "no accessory attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCurrentFunctions(J)V
    .registers 6
    .param p1, "functions"  # J

    .line 2442
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentFunctions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2e

    .line 2445
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fb

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_73

    .line 2446
    :cond_2e
    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_3c

    .line 2447
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fc

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_73

    .line 2448
    :cond_3c
    const-wide/16 v0, 0x10

    cmp-long v0, p1, v0

    if-nez v0, :cond_4a

    .line 2449
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fd

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_73

    .line 2450
    :cond_4a
    const-wide/16 v0, 0x8

    cmp-long v0, p1, v0

    if-nez v0, :cond_58

    .line 2451
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4ff

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_73

    .line 2452
    :cond_58
    const-wide/16 v0, 0x20

    cmp-long v0, p1, v0

    if-nez v0, :cond_66

    .line 2453
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fe

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_73

    .line 2454
    :cond_66
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_73

    .line 2455
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x500

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 2457
    :cond_73
    :goto_73
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 2458
    return-void
.end method

.method public setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .registers 7
    .param p1, "newCurrentUserId"  # I
    .param p2, "settings"  # Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 468
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_3
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 470
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 471
    monitor-exit v0

    .line 472
    return-void

    .line 471
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setScreenUnlockedFunctions(J)V
    .registers 6
    .param p1, "functions"  # J

    .line 2467
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenUnlockedFunctions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2468
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2467
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 2471
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 439
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 443
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 444
    return-void
.end method

.method public updateUserRestrictions()V
    .registers 3

    .line 475
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 476
    return-void
.end method
