.class Lcom/android/server/usb/UsbSerialReader;
.super Landroid/hardware/usb/IUsbSerialReader$Stub;
.source "UsbSerialReader.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDevice:Ljava/lang/Object;

.field private final mSerialNumber:Ljava/lang/String;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbSettingsManager;Ljava/lang/String;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Landroid/hardware/usb/IUsbSerialReader$Stub;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/server/usb/UsbSerialReader;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 58
    iput-object p3, p0, Lcom/android/server/usb/UsbSerialReader;->mSerialNumber:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private enforcePackageBelongsToUid(ILjava/lang/String;)V
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 116
    return-void

    .line 114
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does to belong to the "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getSerial(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 73
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 75
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_79

    .line 76
    invoke-direct {p0, v1, p1}, Lcom/android/server/usb/UsbSerialReader;->enforcePackageBelongsToUid(ILjava/lang/String;)V

    .line 79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 83
    :try_start_13
    iget-object v4, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1e} :catch_57
    .catchall {:try_start_13 .. :try_end_1e} :catchall_55

    .line 86
    nop

    .line 87
    :try_start_1f
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 89
    const/16 v5, 0x1d

    if-lt v4, v5, :cond_51

    .line 90
    iget-object v4, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_USB"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_51

    .line 92
    iget-object v4, p0, Lcom/android/server/usb/UsbSerialReader;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 93
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 92
    invoke-virtual {v4, v5}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    .line 95
    iget-object v5, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    instance-of v5, v5, Landroid/hardware/usb/UsbDevice;

    if-eqz v5, :cond_4a

    .line 96
    iget-object v5, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v5, p1, v0, v1}, Lcom/android/server/usb/UsbUserSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V

    goto :goto_51

    .line 98
    :cond_4a
    iget-object p1, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v4, p1, v1}, Lcom/android/server/usb/UsbUserSettingsManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;I)V
    :try_end_51
    .catchall {:try_start_1f .. :try_end_51} :catchall_55

    .line 103
    :cond_51
    :goto_51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    goto :goto_79

    .line 103
    :catchall_55
    move-exception p1

    goto :goto_75

    .line 84
    :catch_57
    move-exception v0

    .line 85
    :try_start_58
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_75
    .catchall {:try_start_58 .. :try_end_75} :catchall_55

    .line 103
    :goto_75
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 107
    :cond_79
    :goto_79
    iget-object p1, p0, Lcom/android/server/usb/UsbSerialReader;->mSerialNumber:Ljava/lang/String;

    return-object p1
.end method

.method public setDevice(Ljava/lang/Object;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    .line 68
    return-void
.end method
