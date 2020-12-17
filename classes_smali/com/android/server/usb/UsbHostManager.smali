.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LINUX_FOUNDATION_VID:I = 0x1d6b

.field private static final MAX_CONNECT_RECORDS:I = 0x20

.field private static final TAG:Ljava/lang/String;

.field static final sFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mConnected:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbHostManager$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/usb/UsbHostManager$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation
.end field

.field private final mDevices:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerLock:Ljava/lang/Object;

.field private final mHostBlacklist:[Ljava/lang/String;

.field private mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

.field private final mLock:Ljava/lang/Object;

.field private mNumConnects:I

.field private mSettingsLock:Ljava/lang/Object;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private mUsbDeviceConnectionHandler:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHandlerLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    const-class v0, Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->sFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "alsaManager"  # Lcom/android/server/usb/UsbAlsaManager;
    .param p3, "settingsManager"  # Lcom/android/server/usb/UsbSettingsManager;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    .line 236
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    .line 240
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 241
    iput-object p3, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "deviceConnectionHandler":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 245
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 248
    :cond_58
    return-void
.end method

.method private addConnectionRecord(Ljava/lang/String;I[B)V
    .registers 6
    .param p1, "deviceAddress"  # Ljava/lang/String;
    .param p2, "mode"  # I
    .param p3, "rawDescriptors"  # [B

    .line 296
    iget v0, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    .line 297
    :goto_6
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_16

    .line 298
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_6

    .line 300
    :cond_16
    new-instance v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;-><init>(Lcom/android/server/usb/UsbHostManager;Ljava/lang/String;I[B)V

    .line 302
    .local v0, "rec":Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 303
    const/4 v1, -0x1

    if-eq p2, v1, :cond_25

    .line 304
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 306
    :cond_25
    if-nez p2, :cond_2d

    .line 307
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 308
    :cond_2d
    if-ne p2, v1, :cond_34

    .line 309
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_34
    :goto_34
    return-void
.end method

.method private checkUsbInterfacesBlackListed(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Z
    .registers 8
    .param p1, "parser"  # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, "shouldIgnoreDevice":Z
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptors()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 559
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-nez v3, :cond_1a

    .line 560
    goto :goto_9

    .line 562
    :cond_1a
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 563
    .local v3, "iface":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(II)Z

    move-result v0

    .line 564
    if-nez v0, :cond_2c

    .line 565
    goto :goto_2d

    .line 567
    .end local v2  # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    .end local v3  # "iface":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    :cond_2c
    goto :goto_9

    .line 568
    :cond_2d
    :goto_2d
    if-eqz v0, :cond_31

    .line 572
    const/4 v1, 0x0

    return v1

    .line 574
    :cond_31
    const/4 v1, 0x1

    return v1
.end method

.method private getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    monitor-exit v0

    return-object v1

    .line 259
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getUsbDeviceConnectionHandler()Landroid/content/ComponentName;
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    monitor-exit v0

    return-object v1

    .line 271
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private isBlackListed(II)Z
    .registers 5
    .param p1, "clazz"  # I
    .param p2, "subClass"  # I

    .line 287
    const/4 v0, 0x1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_6

    return v0

    .line 290
    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_c

    if-ne p2, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isBlackListed(Ljava/lang/String;)Z
    .registers 5
    .param p1, "deviceAddress"  # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v0

    .line 276
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 277
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 278
    const/4 v2, 0x1

    return v2

    .line 276
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 281
    .end local v1  # "i":I
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method public static synthetic lambda$XT3F5aQci4H6VWSBYBQQNSzpnvs(Lcom/android/server/usb/UsbHostManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    return-void
.end method

.method private logUsbDevice(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .registers 20
    .param p1, "descriptorParser"  # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 314
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 315
    .local v1, "vid":I
    const/4 v2, 0x0

    .line 316
    .local v2, "pid":I
    const-string v3, "<unknown>"

    .line 317
    .local v3, "mfg":Ljava/lang/String;
    const-string v4, "<unknown>"

    .line 318
    .local v4, "product":Ljava/lang/String;
    const-string v5, "<unknown>"

    .line 319
    .local v5, "version":Ljava/lang/String;
    const-string v6, "<unknown>"

    .line 321
    .local v6, "serial":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    move-result-object v7

    .line 322
    .local v7, "deviceDescriptor":Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
    if-eqz v7, :cond_2a

    .line 323
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getVendorID()I

    move-result v1

    .line 324
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductID()I

    move-result v2

    .line 325
    invoke-virtual {v7, v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getMfgString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-virtual {v7, v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v4

    .line 327
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceReleaseString()Ljava/lang/String;

    move-result-object v5

    .line 328
    invoke-virtual {v7, v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSerialString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v6

    .line 331
    :cond_2a
    const/16 v8, 0x1d6b

    if-ne v1, v8, :cond_2f

    .line 332
    return-void

    .line 334
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioInterface()Z

    move-result v8

    .line 335
    .local v8, "hasAudio":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v9

    .line 336
    .local v9, "hasHid":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasStorageInterface()Z

    move-result v10

    .line 338
    .local v10, "hasStorage":Z
    const-string v11, "USB device attached: "

    .line 339
    .local v11, "attachedString":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v14, v17

    const-string/jumbo v15, "vidpid %04x:%04x"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 340
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v3, v14, v16

    aput-object v4, v14, v17

    aput-object v5, v14, v13

    const/4 v15, 0x3

    aput-object v6, v14, v15

    const-string v13, " mfg/product/ver/serial %s/%s/%s/%s"

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 342
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v13, v15, [Ljava/lang/Object;

    .line 343
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v16

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v17

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 342
    const-string v14, " hasAudio/HID/Storage: %b/%b/%b"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 344
    sget-object v12, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private usbDeviceAdded(Ljava/lang/String;II[B)Z
    .registers 27
    .param p1, "deviceAddress"  # Ljava/lang/String;
    .param p2, "deviceClass"  # I
    .param p3, "deviceSubclass"  # I
    .param p4, "descriptors"  # [B

    .line 358
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    .line 362
    return v4

    .line 365
    :cond_e
    move/from16 v5, p3

    invoke-direct {v1, v3, v5}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(II)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 369
    return v4

    .line 372
    :cond_17
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    move-object/from16 v6, p4

    invoke-direct {v0, v2, v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    move-object v7, v0

    .line 373
    .local v7, "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    if-nez v3, :cond_28

    .line 374
    invoke-direct {v1, v7}, Lcom/android/server/usb/UsbHostManager;->checkUsbInterfacesBlackListed(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 375
    return v4

    .line 379
    :cond_28
    invoke-direct {v1, v7}, Lcom/android/server/usb/UsbHostManager;->logUsbDevice(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 381
    iget-object v8, v1, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 382
    :try_start_2e
    iget-object v0, v1, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 383
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "device already on mDevices list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    monitor-exit v8

    return v4

    .line 389
    :cond_4e
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->toAndroidUsbDevice()Landroid/hardware/usb/UsbDevice$Builder;

    move-result-object v0

    .line 390
    .local v0, "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    if-nez v0, :cond_64

    .line 391
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v9, "Couldn\'t create UsbDevice object."

    invoke-static {v4, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v4, 0x2

    .line 394
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors()[B

    move-result-object v9

    .line 393
    invoke-direct {v1, v2, v4, v9}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    goto :goto_d0

    .line 396
    :cond_64
    new-instance v9, Lcom/android/server/usb/UsbSerialReader;

    iget-object v10, v1, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget-object v12, v0, Landroid/hardware/usb/UsbDevice$Builder;->serialNumber:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v12}, Lcom/android/server/usb/UsbSerialReader;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbSettingsManager;Ljava/lang/String;)V

    .line 398
    .local v9, "serialNumberReader":Lcom/android/server/usb/UsbSerialReader;
    invoke-virtual {v0, v9}, Landroid/hardware/usb/UsbDevice$Builder;->build(Landroid/hardware/usb/IUsbSerialReader;)Landroid/hardware/usb/UsbDevice;

    move-result-object v10

    .line 399
    .local v10, "newDevice":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v9, v10}, Lcom/android/server/usb/UsbSerialReader;->setDevice(Ljava/lang/Object;)V

    .line 401
    iget-object v11, v1, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v11, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v11, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Added device "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getUsbDeviceConnectionHandler()Landroid/content/ComponentName;

    move-result-object v11

    .line 407
    .local v11, "usbDeviceConnectionHandler":Landroid/content/ComponentName;
    if-nez v11, :cond_9f

    .line 408
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_a6

    .line 410
    :cond_9f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttachedForFixedHandler(Landroid/hardware/usb/UsbDevice;Landroid/content/ComponentName;)V

    .line 414
    :goto_a6
    iget-object v12, v1, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v12, v2, v10, v7}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceAdded(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 417
    nop

    .line 418
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors()[B

    move-result-object v12

    .line 417
    invoke-direct {v1, v2, v4, v12}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    .line 421
    const/16 v13, 0x4d

    invoke-virtual {v10}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v14

    .line 422
    invoke-virtual {v10}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v15

    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioInterface()Z

    move-result v16

    .line 423
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v17

    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasStorageInterface()Z

    move-result v18

    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    .line 421
    invoke-static/range {v13 .. v21}, Landroid/util/StatsLog;->write(IIIZZZIJ)I

    .line 426
    .end local v0  # "newDeviceBuilder":Landroid/hardware/usb/UsbDevice$Builder;
    .end local v9  # "serialNumberReader":Lcom/android/server/usb/UsbSerialReader;
    .end local v10  # "newDevice":Landroid/hardware/usb/UsbDevice;
    .end local v11  # "usbDeviceConnectionHandler":Landroid/content/ComponentName;
    :goto_d0
    monitor-exit v8

    .line 432
    const/4 v0, 0x1

    return v0

    .line 426
    :catchall_d3
    move-exception v0

    monitor-exit v8
    :try_end_d5
    .catchall {:try_start_2e .. :try_end_d5} :catchall_d3

    throw v0
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .registers 18
    .param p1, "deviceAddress"  # Ljava/lang/String;

    .line 442
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 443
    :try_start_7
    iget-object v0, v1, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 444
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_7e

    .line 445
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed device at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v4, v1, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v4, v2}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceRemoved(Ljava/lang/String;)V

    .line 447
    iget-object v4, v1, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v4, v0}, Lcom/android/server/usb/UsbSettingsManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    .line 449
    iget-object v4, v1, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 451
    .local v4, "current":Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {v1, v2, v5, v6}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    .line 453
    if-eqz v4, :cond_7d

    .line 454
    new-instance v5, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    iget-object v6, v4, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    invoke-direct {v5, v2, v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 457
    .local v5, "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v7

    .line 458
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v8

    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioInterface()Z

    move-result v9

    .line 459
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v10

    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasStorageInterface()Z

    move-result v11

    const/4 v12, 0x0

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move v15, v7

    iget-wide v6, v4, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mTimestamp:J

    sub-long/2addr v13, v6

    .line 457
    const/16 v6, 0x4d

    move v7, v15

    invoke-static/range {v6 .. v14}, Landroid/util/StatsLog;->write(IIIZZZIJ)I

    .line 463
    .end local v4  # "current":Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
    .end local v5  # "parser":Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    :cond_7d
    goto :goto_99

    .line 464
    :cond_7e
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed device at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " was already gone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v0  # "device":Landroid/hardware/usb/UsbDevice;
    :goto_99
    monitor-exit v3

    .line 467
    return-void

    .line 466
    :catchall_9b
    move-exception v0

    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_7 .. :try_end_9d} :catchall_9b

    throw v0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 14
    .param p1, "dump"  # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"  # Ljava/lang/String;
    .param p3, "id"  # J

    .line 510
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 512
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 513
    :try_start_7
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    if-eqz v3, :cond_17

    .line 514
    const-string v3, "default_usb_host_connection_handler"

    const-wide v4, 0x10b00000001L

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    invoke-static {p1, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 518
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_76

    .line 519
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 520
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 521
    .local v4, "name":Ljava/lang/String;
    const-string v5, "devices"

    const-wide v6, 0x20b00000002L

    iget-object v8, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/UsbDevice;

    invoke-static {p1, v5, v6, v7, v8}, Lcom/android/internal/usb/DumpUtils;->writeDevice(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbDevice;)V

    .line 522
    .end local v4  # "name":Ljava/lang/String;
    goto :goto_25

    .line 524
    :cond_44
    const-string/jumbo v2, "num_connects"

    const-wide v4, 0x10500000003L

    iget v6, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    invoke-virtual {p1, v2, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 526
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 527
    .local v4, "rec":Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
    const-string v5, "connections"

    const-wide v6, 0x20b00000004L

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 528
    .end local v4  # "rec":Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
    goto :goto_57

    .line 529
    :cond_6e
    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_1b .. :try_end_6f} :catchall_73

    .line 531
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 532
    return-void

    .line 529
    :catchall_73
    move-exception v2

    :try_start_74
    monitor-exit v3
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v2

    .line 518
    :catchall_76
    move-exception v3

    :try_start_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v3
.end method

.method public dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "args"  # [Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    if-eqz v0, :cond_4e

    .line 539
    const-string v0, "Last Connected USB Device:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 540
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_48

    aget-object v0, p2, v1

    const-string v2, "-dump-short"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_48

    .line 542
    :cond_18
    aget-object v0, p2, v1

    const-string v2, "-dump-tree"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 543
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpTree(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 544
    :cond_28
    aget-object v0, p2, v1

    const-string v2, "-dump-list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 545
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpList(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 546
    :cond_38
    aget-object v0, p2, v1

    const-string v1, "-dump-raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 547
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpRaw(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 541
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpShort(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 550
    :cond_4e
    const-string v0, "No USB Devices have been connected."

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 552
    :cond_53
    :goto_53
    return-void
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "devices"  # Landroid/os/Bundle;

    .line 480
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 482
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 483
    .end local v2  # "name":Ljava/lang/String;
    goto :goto_d

    .line 484
    :cond_25
    monitor-exit v0

    .line 485
    return-void

    .line 484
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserSettingsManager;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "deviceAddress"  # Ljava/lang/String;
    .param p2, "settings"  # Lcom/android/server/usb/UsbUserSettingsManager;
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "uid"  # I

    .line 490
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 494
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 495
    .local v1, "device":Landroid/hardware/usb/UsbDevice;
    if-eqz v1, :cond_1c

    .line 501
    invoke-virtual {p2, v1, p3, p4}, Lcom/android/server/usb/UsbUserSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 502
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 497
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist or is restricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/usb/UsbHostManager;
    .end local p1  # "deviceAddress":Ljava/lang/String;
    .end local p2  # "settings":Lcom/android/server/usb/UsbUserSettingsManager;
    .end local p3  # "packageName":Ljava/lang/String;
    .end local p4  # "uid":I
    throw v2

    .line 492
    .end local v1  # "device":Landroid/hardware/usb/UsbDevice;
    .restart local p0  # "this":Lcom/android/server/usb/UsbHostManager;
    .restart local p1  # "deviceAddress":Ljava/lang/String;
    .restart local p2  # "settings":Lcom/android/server/usb/UsbUserSettingsManager;
    .restart local p3  # "packageName":Ljava/lang/String;
    .restart local p4  # "uid":I
    :cond_38
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "USB device is on a restricted bus"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/usb/UsbHostManager;
    .end local p1  # "deviceAddress":Ljava/lang/String;
    .end local p2  # "settings":Lcom/android/server/usb/UsbUserSettingsManager;
    .end local p3  # "packageName":Ljava/lang/String;
    .end local p4  # "uid":I
    throw v1

    .line 503
    .restart local p0  # "this":Lcom/android/server/usb/UsbHostManager;
    .restart local p1  # "deviceAddress":Ljava/lang/String;
    .restart local p2  # "settings":Lcom/android/server/usb/UsbUserSettingsManager;
    .restart local p3  # "packageName":Ljava/lang/String;
    .restart local p4  # "uid":I
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .registers 4
    .param p1, "settings"  # Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 251
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_3
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 253
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "usbDeviceConnectionHandler"  # Landroid/content/ComponentName;

    .line 263
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_3
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    .line 265
    monitor-exit v0

    .line 266
    return-void

    .line 265
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public systemReady()V
    .registers 6

    .line 470
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_3
    new-instance v1, Lcom/android/server/usb/-$$Lambda$UsbHostManager$XT3F5aQci4H6VWSBYBQQNSzpnvs;

    invoke-direct {v1, p0}, Lcom/android/server/usb/-$$Lambda$UsbHostManager$XT3F5aQci4H6VWSBYBQQNSzpnvs;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    .line 474
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "UsbService host thread"

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 475
    .end local v1  # "runnable":Ljava/lang/Runnable;
    monitor-exit v0

    .line 476
    return-void

    .line 475
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method
