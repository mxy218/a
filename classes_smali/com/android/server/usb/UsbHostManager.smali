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

    const v1, 0x1070078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    .line 240
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 241
    iput-object p3, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1040139

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_58

    .line 245
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 248
    :cond_58
    return-void
.end method

.method private addConnectionRecord(Ljava/lang/String;I[B)V
    .registers 6

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
    iget-object p3, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 303
    const/4 p3, -0x1

    if-eq p2, p3, :cond_25

    .line 304
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 306
    :cond_25
    if-nez p2, :cond_2d

    .line 307
    iget-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 308
    :cond_2d
    if-ne p2, p3, :cond_34

    .line 309
    iget-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_34
    :goto_34
    return-void
.end method

.method private checkUsbInterfacesBlackListed(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Z
    .registers 6

    .line 557
    nop

    .line 558
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptors()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 559
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-nez v3, :cond_1c

    .line 560
    goto :goto_b

    .line 562
    :cond_1c
    check-cast v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 563
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(II)Z

    move-result v1

    .line 564
    if-nez v1, :cond_2d

    .line 565
    goto :goto_2e

    .line 567
    :cond_2d
    goto :goto_b

    .line 568
    :cond_2e
    :goto_2e
    if-eqz v1, :cond_31

    .line 572
    return v0

    .line 574
    :cond_31
    const/4 p1, 0x1

    return p1
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
    .registers 6

    .line 275
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v0

    .line 276
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_16

    .line 277
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 278
    const/4 p1, 0x1

    return p1

    .line 276
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 281
    :cond_16
    return v1
.end method

.method public static synthetic lambda$XT3F5aQci4H6VWSBYBQQNSzpnvs(Lcom/android/server/usb/UsbHostManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    return-void
.end method

.method private logUsbDevice(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .registers 14

    .line 314
    nop

    .line 315
    nop

    .line 316
    nop

    .line 317
    nop

    .line 318
    nop

    .line 319
    nop

    .line 321
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    move-result-object v0

    .line 322
    const-string v1, "<unknown>"

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 323
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getVendorID()I

    move-result v1

    .line 324
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductID()I

    move-result v3

    .line 325
    invoke-virtual {v0, p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getMfgString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v4

    .line 326
    invoke-virtual {v0, p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v5

    .line 327
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceReleaseString()Ljava/lang/String;

    move-result-object v6

    .line 328
    invoke-virtual {v0, p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSerialString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 322
    :cond_28
    move-object v0, v1

    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    move v1, v2

    move v3, v1

    .line 331
    :goto_2e
    const/16 v7, 0x1d6b

    if-ne v1, v7, :cond_33

    .line 332
    return-void

    .line 334
    :cond_33
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioInterface()Z

    move-result v7

    .line 335
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v8

    .line 336
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasStorageInterface()Z

    move-result p1

    .line 338
    nop

    .line 339
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USB device attached: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v11, v3

    const-string/jumbo v1, "vidpid %04x:%04x"

    invoke-static {v1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    aput-object v5, v1, v3

    aput-object v6, v1, v10

    const/4 v4, 0x3

    aput-object v0, v1, v4

    const-string v0, " mfg/product/ver/serial %s/%s/%s/%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v4, [Ljava/lang/Object;

    .line 343
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v10

    .line 342
    const-string p1, " hasAudio/HID/Storage: %b/%b/%b"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 344
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private usbDeviceAdded(Ljava/lang/String;II[B)Z
    .registers 16

    .line 358
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 362
    return v1

    .line 365
    :cond_8
    invoke-direct {p0, p2, p3}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(II)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 369
    return v1

    .line 372
    :cond_f
    new-instance p3, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-direct {p3, p1, p4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 373
    if-nez p2, :cond_1d

    .line 374
    invoke-direct {p0, p3}, Lcom/android/server/usb/UsbHostManager;->checkUsbInterfacesBlackListed(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Z

    move-result p2

    if-nez p2, :cond_1d

    .line 375
    return v1

    .line 379
    :cond_1d
    invoke-direct {p0, p3}, Lcom/android/server/usb/UsbHostManager;->logUsbDevice(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 381
    iget-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 382
    :try_start_23
    iget-object p4, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_43

    .line 383
    sget-object p3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "device already on mDevices list: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    monitor-exit p2

    return v1

    .line 389
    :cond_43
    invoke-virtual {p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->toAndroidUsbDevice()Landroid/hardware/usb/UsbDevice$Builder;

    move-result-object p4

    .line 390
    if-nez p4, :cond_59

    .line 391
    sget-object p4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v0, "Couldn\'t create UsbDevice object."

    invoke-static {p4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 p4, 0x2

    .line 394
    invoke-virtual {p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors()[B

    move-result-object p3

    .line 393
    invoke-direct {p0, p1, p4, p3}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    goto :goto_c4

    .line 396
    :cond_59
    new-instance v0, Lcom/android/server/usb/UsbSerialReader;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget-object v4, p4, Landroid/hardware/usb/UsbDevice$Builder;->serialNumber:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/usb/UsbSerialReader;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbSettingsManager;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p4, v0}, Landroid/hardware/usb/UsbDevice$Builder;->build(Landroid/hardware/usb/IUsbSerialReader;)Landroid/hardware/usb/UsbDevice;

    move-result-object p4

    .line 399
    invoke-virtual {v0, p4}, Lcom/android/server/usb/UsbSerialReader;->setDevice(Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getUsbDeviceConnectionHandler()Landroid/content/ComponentName;

    move-result-object v0

    .line 407
    if-nez v0, :cond_94

    .line 408
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_9b

    .line 410
    :cond_94
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v2

    invoke-virtual {v2, p4, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttachedForFixedHandler(Landroid/hardware/usb/UsbDevice;Landroid/content/ComponentName;)V

    .line 414
    :goto_9b
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0, p1, p4, p3}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceAdded(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 417
    nop

    .line 418
    invoke-virtual {p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors()[B

    move-result-object v0

    .line 417
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    .line 421
    const/16 v2, 0x4d

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    .line 422
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    invoke-virtual {p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioInterface()Z

    move-result v5

    .line 423
    invoke-virtual {p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v6

    invoke-virtual {p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasStorageInterface()Z

    move-result v7

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    .line 421
    invoke-static/range {v2 .. v10}, Landroid/util/StatsLog;->write(IIIZZZIJ)I

    .line 426
    :goto_c4
    monitor-exit p2

    .line 432
    const/4 p1, 0x1

    return p1

    .line 426
    :catchall_c7
    move-exception p1

    monitor-exit p2
    :try_end_c9
    .catchall {:try_start_23 .. :try_end_c9} :catchall_c7

    throw p1
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .registers 16

    .line 442
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 444
    if-eqz v1, :cond_79

    .line 445
    sget-object v2, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed device at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceRemoved(Ljava/lang/String;)V

    .line 447
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbSettingsManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    .line 448
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    .line 449
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 451
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    .line 453
    if-eqz v2, :cond_78

    .line 454
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    iget-object v4, v2, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    invoke-direct {v3, p1, v4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 457
    const/16 v5, 0x4d

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v6

    .line 458
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioInterface()Z

    move-result v8

    .line 459
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v9

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasStorageInterface()Z

    move-result v10

    const/4 v11, 0x0

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v1, v2, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mTimestamp:J

    sub-long v12, v3, v1

    .line 457
    invoke-static/range {v5 .. v13}, Landroid/util/StatsLog;->write(IIIZZZIJ)I

    .line 463
    :cond_78
    goto :goto_94

    .line 464
    :cond_79
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed device at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was already gone"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_94
    monitor-exit v0

    .line 467
    return-void

    .line 466
    :catchall_96
    move-exception p1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_3 .. :try_end_98} :catchall_96

    throw p1
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 11

    .line 510
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 512
    iget-object p4, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter p4

    .line 513
    :try_start_7
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    if-eqz v0, :cond_17

    .line 514
    const-string v0, "default_usb_host_connection_handler"

    const-wide v1, 0x10b00000001L

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 518
    :cond_17
    monitor-exit p4
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_76

    .line 519
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_1b
    iget-object p4, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_25
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 521
    const-string v2, "devices"

    const-wide v3, 0x20b00000002L

    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    invoke-static {p1, v2, v3, v4, v1}, Lcom/android/internal/usb/DumpUtils;->writeDevice(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbDevice;)V

    .line 522
    goto :goto_25

    .line 524
    :cond_44
    const-string/jumbo p4, "num_connects"

    const-wide v1, 0x10500000003L

    iget v3, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    invoke-virtual {p1, p4, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 526
    iget-object p4, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {p4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_57
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 527
    const-string v2, "connections"

    const-wide v3, 0x20b00000004L

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 528
    goto :goto_57

    .line 529
    :cond_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_1b .. :try_end_6f} :catchall_73

    .line 531
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 532
    return-void

    .line 529
    :catchall_73
    move-exception p1

    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw p1

    .line 518
    :catchall_76
    move-exception p1

    :try_start_77
    monitor-exit p4
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw p1
.end method

.method public dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 6

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
    iget-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {p2, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpTree(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 544
    :cond_28
    aget-object v0, p2, v1

    const-string v2, "-dump-list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 545
    iget-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {p2, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpList(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 546
    :cond_38
    aget-object p2, p2, v1

    const-string v0, "-dump-raw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_53

    .line 547
    iget-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {p2, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpRaw(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 541
    :cond_48
    :goto_48
    iget-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {p2, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpShort(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 550
    :cond_4e
    const-string p2, "No USB Devices have been connected."

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 552
    :cond_53
    :goto_53
    return-void
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 6

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
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 483
    goto :goto_d

    .line 484
    :cond_25
    monitor-exit v0

    .line 485
    return-void

    .line 484
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserSettingsManager;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .registers 8

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
    if-eqz v1, :cond_1c

    .line 501
    invoke-virtual {p2, v1, p3, p4, p5}, Lcom/android/server/usb/UsbUserSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V

    .line 502
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 497
    :cond_1c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "device "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist or is restricted"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 492
    :cond_38
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "USB device is on a restricted bus"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 503
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .registers 3

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
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .registers 3

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
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
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
    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "UsbService host thread"

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 475
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
