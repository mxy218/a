.class public Lcom/android/server/usb/UsbDeviceManager;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private static final DEBUG:Z = false

.field private static final FUNCTIONS_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/functions"

.field private static final MIDI_ALSA_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_midi/alsa"

.field private static final MSG_ACCESSORY_MODE_ENTER_TIMEOUT:I = 0x8

.field private static final MSG_BOOT_COMPLETED:I = 0x4

.field private static final MSG_ENABLE_ADB:I = 0x1

.field private static final MSG_FUNCTION_SWITCH_TIMEOUT:I = 0x11

.field private static final MSG_GADGET_HAL_REGISTERED:I = 0x12

.field private static final MSG_GET_CURRENT_USB_FUNCTIONS:I = 0x10

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

.field private static final NORMAL_BOOT:Ljava/lang/String; = "normal"

.field private static final RNDIS_ETH_ADDR_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_rndis/ethaddr"

.field private static final STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field private static final TAG:Ljava/lang/String;

.field static final UNLOCKED_CONFIG_PREF:Ljava/lang/String; = "usb-screen-unlocked-config-%d"

.field private static final UPDATE_DELAY:I = 0x3e8

.field private static final USB_PREFS_XML:Ljava/lang/String; = "UsbDeviceManagerPrefs.xml"

.field private static final USB_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/android_usb/android0"

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

.field private mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field private final mHasUsbAccessory:Z

.field private final mLock:Ljava/lang/Object;

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 115
    const-class v0, Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    .line 201
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 12

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 258
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 260
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 261
    const-string v1, "android.hardware.usb.accessory"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    .line 262
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->initRndisAddress()V

    .line 264
    nop

    .line 266
    const/4 v1, 0x1

    const/4 v7, 0x0

    :try_start_26
    invoke-static {v1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService(Z)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_35
    .catch Ljava/util/NoSuchElementException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 272
    :goto_29
    goto :goto_3f

    .line 269
    :catch_2a
    move-exception v0

    move-object v2, v0

    .line 270
    nop

    .line 271
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "USB GADGET HAL not present in the device"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 267
    :catch_35
    move-exception v0

    move-object v1, v0

    .line 268
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "USB GADGET HAL present but exception thrown"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 274
    :goto_3f
    move v1, v7

    :goto_40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    .line 275
    const-string/jumbo v0, "mtp"

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 276
    if-nez v0, :cond_57

    .line 277
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to open control for mtp"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_57
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    const-wide/16 v3, 0x4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string/jumbo v0, "ptp"

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 281
    if-nez v0, :cond_72

    .line 282
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to open control for ptp"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_72
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    const-wide/16 v3, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    if-eqz v1, :cond_95

    .line 290
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    move-object v1, v0

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    goto :goto_aa

    .line 296
    :cond_95
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    move-object v1, v0

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 300
    :goto_aa
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeIsStartRequested()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 302
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    .line 305
    :cond_b3
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbDeviceManager$1;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 315
    new-instance v1, Lcom/android/server/usb/UsbDeviceManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDeviceManager$2;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 324
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$3;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbDeviceManager$3;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 337
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$4;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$4;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 344
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 346
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 351
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 354
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbDeviceManager$5;-><init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Handler;)V

    .line 364
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 365
    const-string v3, "adb_notify"

    invoke-static {v3}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 364
    invoke-virtual {v2, v3, v7, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 367
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 368
    const-string v3, "adb_port"

    invoke-static {v3}, Llineageos/providers/LineageSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 367
    invoke-virtual {v2, v3, v7, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 372
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbDeviceManager$1;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    .line 373
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/misc/usb_accessory"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 113
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Set;
    .registers 1

    .line 113
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method private static initRndisAddress()V
    .registers 10

    .line 442
    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 444
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 446
    const-string/jumbo v4, "ro.serialno"

    const-string v5, "1234567890ABCDEF"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 447
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 449
    move v6, v3

    :goto_15
    const/4 v7, 0x1

    if-ge v6, v5, :cond_27

    .line 450
    rem-int/lit8 v8, v6, 0x5

    add-int/2addr v8, v7

    aget v7, v1, v8

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    xor-int/2addr v7, v9

    aput v7, v1, v8

    .line 449
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 452
    :cond_27
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    aget v5, v1, v3

    .line 453
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    aget v3, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 452
    const-string v1, "%02X:%02X:%02X:%02X:%02X:%02X"

    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 455
    :try_start_64
    const-string v1, "/sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v1, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_69} :catch_6a

    .line 458
    goto :goto_72

    .line 456
    :catch_6a
    move-exception v0

    .line 457
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "failed to write to /sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_72
    return-void
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

.method private onAdbEnabled(Z)V
    .registers 4

    .line 2088
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 2089
    return-void
.end method

.method private startAccessoryMode()V
    .registers 7

    .line 414
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    if-nez v0, :cond_5

    return-void

    .line 416
    :cond_5
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAccessoryStrings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    .line 417
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAudioMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    .line 419
    :goto_16
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    if-eqz v3, :cond_23

    aget-object v4, v3, v1

    if-eqz v4, :cond_23

    aget-object v3, v3, v2

    if-eqz v3, :cond_23

    move v1, v2

    .line 423
    :cond_23
    nop

    .line 424
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2b

    .line 425
    const-wide/16 v4, 0x2

    goto :goto_2c

    .line 424
    :cond_2b
    move-wide v4, v2

    .line 427
    :goto_2c
    if-eqz v0, :cond_31

    .line 428
    const-wide/16 v0, 0x40

    or-long/2addr v4, v0

    .line 431
    :cond_31
    cmp-long v0, v4, v2

    if-eqz v0, :cond_45

    .line 432
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 434
    invoke-virtual {p0, v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 436
    :cond_45
    return-void
.end method


# virtual methods
.method public bootCompleted()V
    .registers 3

    .line 399
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 400
    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 8

    .line 2095
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 2097
    iget-object p4, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz p4, :cond_12

    .line 2098
    const-wide v0, 0x10b00000001L

    const-string v2, "handler"

    invoke-virtual {p4, p1, v2, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 2101
    :cond_12
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 2102
    return-void
.end method

.method getAccessoryStrings()[Ljava/lang/String;
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 386
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .registers 7

    .line 2033
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    .line 2034
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 2035
    return-object v1

    .line 2038
    :cond_10
    :try_start_10
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_15

    return-object p1

    .line 2039
    :catch_15
    move-exception v0

    .line 2040
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dup fd for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    return-object v1
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 2

    .line 2000
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFunctions()J
    .registers 3

    .line 2026
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getEnabledFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .registers 3

    .line 378
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    monitor-exit v0

    return-object v1

    .line 380
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getScreenUnlockedFunctions()J
    .registers 3

    .line 2046
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public onAwakeStateChanged(Z)V
    .registers 2

    .line 249
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 5

    .line 235
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 237
    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz p1, :cond_1a

    if-eqz v0, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    const/16 v0, 0xd

    invoke-virtual {v1, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 244
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    .line 253
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->onKeyguardStateChanged(Z)V

    .line 254
    return-void
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserSettingsManager;I)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 2011
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 2012
    if-eqz v0, :cond_34

    .line 2015
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2021
    invoke-virtual {p2, p1, p3}, Lcom/android/server/usb/UsbUserSettingsManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 2022
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 2016
    :cond_16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match current accessory "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2019
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2013
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "no accessory attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrentFunctions(J)V
    .registers 5

    .line 2058
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_e

    .line 2059
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fb

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_53

    .line 2060
    :cond_e
    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_1c

    .line 2061
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fc

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_53

    .line 2062
    :cond_1c
    const-wide/16 v0, 0x10

    cmp-long v0, p1, v0

    if-nez v0, :cond_2a

    .line 2063
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fd

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_53

    .line 2064
    :cond_2a
    const-wide/16 v0, 0x8

    cmp-long v0, p1, v0

    if-nez v0, :cond_38

    .line 2065
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4ff

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_53

    .line 2066
    :cond_38
    const-wide/16 v0, 0x20

    cmp-long v0, p1, v0

    if-nez v0, :cond_46

    .line 2067
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fe

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_53

    .line 2068
    :cond_46
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_53

    .line 2069
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x500

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 2071
    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 2072
    return-void
.end method

.method public setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .registers 6

    .line 403
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_3
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 405
    iget-object p2, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 406
    monitor-exit v0

    .line 407
    return-void

    .line 406
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public setScreenUnlockedFunctions(J)V
    .registers 4

    .line 2084
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {v0, p2, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 2085
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 392
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 394
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 395
    return-void
.end method

.method public updateUserRestrictions()V
    .registers 3

    .line 410
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 411
    return-void
.end method
