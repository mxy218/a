.class Lcom/android/server/usb/UsbUserSettingsManager;
.super Ljava/lang/Object;
.source "UsbUserSettingsManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 315
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 58
    const-class v0, Lcom/android/server/usb/UsbUserSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/usb/UsbPermissionManager;)V
    .registers 6

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    .line 74
    :try_start_a
    const-string v0, "android"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_13} :catch_21

    .line 77
    nop

    .line 79
    iget-object p1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 81
    iput-object p2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 82
    iput-object p3, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 83
    return-void

    .line 75
    :catch_21
    move-exception p1

    .line 76
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Missing android package"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private canBeDefault(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)Z
    .registers 12

    .line 334
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;

    move-result-object p2

    .line 335
    const/4 v0, 0x0

    if-eqz p2, :cond_71

    .line 336
    array-length v1, p2

    .line 337
    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_71

    .line 338
    aget-object v3, p2, v2

    .line 340
    :try_start_d
    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    const/4 v5, 0x0

    .line 342
    if-nez v4, :cond_1e

    .line 357
    if-eqz v4, :cond_6e

    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_53

    goto :goto_6e

    .line 346
    :cond_1e
    :try_start_1e
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 347
    :goto_21
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_48

    .line 348
    const-string/jumbo v6, "usb-accessory"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 349
    invoke-static {v4}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v6

    .line 350
    invoke-virtual {v6, p1}, Landroid/hardware/usb/AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v6
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_4c

    if-eqz v6, :cond_44

    .line 351
    nop

    .line 357
    :try_start_40
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_53

    .line 351
    return v7

    .line 355
    :cond_44
    :try_start_44
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4c

    goto :goto_21

    .line 357
    :cond_48
    :try_start_48
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_53

    .line 359
    goto :goto_6e

    .line 340
    :catchall_4c
    move-exception v5

    :try_start_4d
    throw v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 357
    :catchall_4e
    move-exception v6

    :try_start_4f
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_53

    :catch_53
    move-exception v4

    .line 358
    sget-object v5, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    :cond_6e
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 363
    :cond_71
    return v0
.end method

.method private canBeDefault(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .registers 12

    .line 292
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;

    move-result-object p2

    .line 293
    const/4 v0, 0x0

    if-eqz p2, :cond_71

    .line 294
    array-length v1, p2

    .line 295
    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_71

    .line 296
    aget-object v3, p2, v2

    .line 298
    :try_start_d
    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    const/4 v5, 0x0

    .line 300
    if-nez v4, :cond_1e

    .line 315
    if-eqz v4, :cond_6e

    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_53

    goto :goto_6e

    .line 304
    :cond_1e
    :try_start_1e
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 305
    :goto_21
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_48

    .line 306
    const-string/jumbo v6, "usb-device"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 307
    invoke-static {v4}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v6

    .line 308
    invoke-virtual {v6, p1}, Landroid/hardware/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v6
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_4c

    if-eqz v6, :cond_44

    .line 309
    nop

    .line 315
    :try_start_40
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_53

    .line 309
    return v7

    .line 313
    :cond_44
    :try_start_44
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4c

    goto :goto_21

    .line 315
    :cond_48
    :try_start_48
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_53

    .line 317
    goto :goto_6e

    .line 298
    :catchall_4c
    move-exception v5

    :try_start_4d
    throw v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 315
    :catchall_4e
    move-exception v6

    :try_start_4f
    invoke-static {v5, v4}, Lcom/android/server/usb/UsbUserSettingsManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_53

    :catch_53
    move-exception v4

    .line 316
    sget-object v5, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    :cond_6e
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 321
    :cond_71
    return v0
.end method

.method private getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;
    .registers 4

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x81

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 370
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 371
    :catch_b
    move-exception p1

    .line 374
    const/4 p1, 0x0

    return-object p1
.end method

.method private isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z
    .registers 7

    .line 112
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    .line 113
    return v2

    .line 116
    :cond_a
    const/4 v0, 0x0

    move v3, v0

    :goto_c
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v4

    if-ge v3, v4, :cond_20

    .line 117
    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    .line 118
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    if-ne v4, v1, :cond_1d

    .line 119
    return v2

    .line 116
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 123
    :cond_20
    return v0
.end method

.method private isCameraPermissionGranted(Ljava/lang/String;II)Z
    .registers 7

    .line 136
    nop

    .line 138
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 140
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, p3, :cond_2b

    .line 141
    sget-object p2, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match caller\'s uid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v0

    .line 144
    :cond_2b
    iget p1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2d} :catch_47

    .line 148
    nop

    .line 150
    const/16 v1, 0x1c

    if-lt p1, v1, :cond_45

    .line 151
    iget-object p1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p1, v1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    .line 153
    const/4 p2, -0x1

    if-ne p2, p1, :cond_45

    .line 154
    sget-object p1, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    const-string p2, "Camera permission required for USB video class devices"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v0

    .line 159
    :cond_45
    const/4 p1, 0x1

    return p1

    .line 145
    :catch_47
    move-exception p1

    .line 146
    sget-object p1, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    const-string p2, "Package not found, likely due to invalid package name!"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v0
.end method

.method private requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 15

    .line 198
    const-string/jumbo v1, "package "

    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 199
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_c} :catch_3b

    if-ne v2, p6, :cond_1e

    .line 205
    nop

    .line 207
    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    iget-object v6, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    move-object v0, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p6

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usb/UsbPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V

    .line 209
    return-void

    .line 200
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not match caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_3b} :catch_3b

    .line 203
    :catch_3b
    move-exception v0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 188
    return-void

    .line 185
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " permission to accessory "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V
    .registers 7

    .line 177
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 181
    return-void

    .line 178
    :cond_7
    new-instance p3, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User has not given "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " permission to access device "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 22

    .line 378
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v2

    .line 380
    iget-object v4, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 381
    :try_start_b
    const-string/jumbo v5, "user_id"

    const-wide v6, 0x10500000001L

    iget-object v8, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 383
    iget-object v5, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v5, v1}, Lcom/android/server/usb/UsbPermissionManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 385
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v5

    .line 387
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 388
    const/4 v8, 0x0

    :goto_31
    const-wide v11, 0x10b00000001L

    if-ge v8, v6, :cond_85

    .line 389
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 391
    const-string v14, "device_attached_activities"

    move/from16 p3, v8

    const-wide v7, 0x20b00000004L

    invoke-virtual {v1, v14, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    .line 394
    const-string v14, "activity"

    new-instance v15, Landroid/content/ComponentName;

    iget-object v9, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v15, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v14, v11, v12, v15}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 398
    iget-object v9, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v9, v13}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v9

    .line 400
    if-eqz v9, :cond_7f

    .line 401
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 402
    const/4 v11, 0x0

    :goto_6a
    if-ge v11, v10, :cond_7f

    .line 403
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/usb/DeviceFilter;

    const-string v13, "filters"

    const-wide v14, 0x20b00000002L

    invoke-virtual {v12, v1, v13, v14, v15}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 402
    add-int/lit8 v11, v11, 0x1

    goto :goto_6a

    .line 408
    :cond_7f
    invoke-virtual {v1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 388
    add-int/lit8 v8, p3, 0x1

    goto :goto_31

    .line 411
    :cond_85
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0, v5}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v5

    .line 413
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 414
    const/4 v7, 0x0

    :goto_95
    if-ge v7, v6, :cond_10c

    .line 415
    nop

    .line 416
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 418
    const-string v9, "accessory_attached_activities"

    const-wide v13, 0x20b00000005L

    invoke-virtual {v1, v9, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v9

    .line 421
    const-string v13, "activity"

    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v15, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v11, 0x10b00000001L

    invoke-static {v1, v13, v11, v12, v14}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 425
    iget-object v13, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v13, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v8

    .line 427
    if-eqz v8, :cond_f6

    .line 428
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 429
    const/4 v14, 0x0

    :goto_cd
    if-ge v14, v13, :cond_ed

    .line 430
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/usb/AccessoryFilter;

    const-string v11, "filters"

    move-object v12, v5

    move/from16 v16, v6

    const-wide v5, 0x20b00000002L

    invoke-virtual {v15, v1, v11, v5, v6}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 429
    add-int/lit8 v14, v14, 0x1

    move-object v5, v12

    move/from16 v6, v16

    const-wide v11, 0x10b00000001L

    goto :goto_cd

    :cond_ed
    move-object v12, v5

    move/from16 v16, v6

    const-wide v5, 0x20b00000002L

    goto :goto_fe

    .line 427
    :cond_f6
    move-object v12, v5

    move/from16 v16, v6

    const-wide v5, 0x20b00000002L

    .line 435
    :goto_fe
    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 414
    add-int/lit8 v7, v7, 0x1

    move-object v5, v12

    move/from16 v6, v16

    const-wide v11, 0x10b00000001L

    goto :goto_95

    .line 437
    :cond_10c
    monitor-exit v4
    :try_end_10d
    .catchall {:try_start_b .. :try_end_10d} :catchall_111

    .line 439
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 440
    return-void

    .line 437
    :catchall_111
    move-exception v0

    :try_start_112
    monitor-exit v4
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbPermissionManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 268
    return-void
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 4

    .line 263
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbPermissionManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 264
    return-void
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result p1

    return p1
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z
    .registers 6

    .line 163
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 164
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/usb/UsbUserSettingsManager;->isCameraPermissionGranted(Ljava/lang/String;II)Z

    move-result p2

    if-nez p2, :cond_e

    .line 165
    const/4 p1, 0x0

    return p1

    .line 169
    :cond_e
    iget-object p2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {p2, p1, p4}, Lcom/android/server/usb/UsbPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;I)Z

    move-result p1

    return p1
.end method

.method queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 279
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 278
    const/16 v2, 0x80

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbPermissionManager;->removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V

    .line 101
    return-void
.end method

.method removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUsbPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbPermissionManager;->removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V

    .line 92
    return-void
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 12

    .line 246
    invoke-virtual {p0, p1, p4}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 247
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 248
    const-string p4, "accessory"

    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 249
    const/4 p1, 0x1

    const-string/jumbo p4, "permission"

    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    :try_start_17
    iget-object p1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_17 .. :try_end_1d} :catch_1e

    .line 254
    goto :goto_1f

    .line 252
    :catch_1e
    move-exception p1

    .line 255
    :goto_1f
    return-void

    .line 258
    :cond_20
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)Z

    move-result v3

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    .line 260
    return-void
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    .registers 13

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v1

    const-string/jumbo v2, "permission"

    const-string v3, "device"

    const/4 v4, 0x0

    if-eqz v1, :cond_20

    .line 217
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    const/4 p1, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    :try_start_18
    iget-object p1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-virtual {p3, p1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 223
    goto :goto_1f

    .line 221
    :catch_1e
    move-exception p1

    .line 224
    :goto_1f
    return-void

    .line 226
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 227
    invoke-direct {p0, p2, p4, p5}, Lcom/android/server/usb/UsbUserSettingsManager;->isCameraPermissionGranted(Ljava/lang/String;II)Z

    move-result p4

    if-nez p4, :cond_3a

    .line 228
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    :try_start_32
    iget-object p1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-virtual {p3, p1, v4, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_37
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_32 .. :try_end_37} :catch_38

    .line 234
    goto :goto_39

    .line 232
    :catch_38
    move-exception p1

    .line 235
    :goto_39
    return-void

    .line 239
    :cond_3a
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->canBeDefault(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    .line 241
    return-void
.end method
