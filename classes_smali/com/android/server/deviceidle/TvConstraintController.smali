.class public Lcom/android/server/deviceidle/TvConstraintController;
.super Ljava/lang/Object;
.source "TvConstraintController.java"

# interfaces
.implements Lcom/android/server/deviceidle/ConstraintController;


# instance fields
.field private final mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/deviceidle/TvConstraintController;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/server/deviceidle/TvConstraintController;->mHandler:Landroid/os/Handler;

    .line 44
    const-class p2, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object p2, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 47
    const-string p2, "android.hardware.bluetooth"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 48
    new-instance p1, Lcom/android/server/deviceidle/BluetoothConstraint;

    iget-object p2, p0, Lcom/android/server/deviceidle/TvConstraintController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/server/deviceidle/BluetoothConstraint;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/DeviceIdleController$LocalService;)V

    goto :goto_2a

    .line 49
    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput-object p1, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 50
    return-void
.end method


# virtual methods
.method public start()V
    .registers 5

    .line 54
    iget-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    if-eqz v0, :cond_c

    .line 55
    iget-object v1, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    const/4 v2, 0x1

    const-string v3, "bluetooth"

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/DeviceIdleController$LocalService;->registerDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    .line 58
    :cond_c
    return-void
.end method

.method public stop()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/android/server/deviceidle/TvConstraintController;->mBluetoothConstraint:Lcom/android/server/deviceidle/BluetoothConstraint;

    if-eqz v0, :cond_9

    .line 63
    iget-object v1, p0, Lcom/android/server/deviceidle/TvConstraintController;->mDeviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$LocalService;->unregisterDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    .line 65
    :cond_9
    return-void
.end method
