.class Lcom/android/server/DeviceIdleController$Injector;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field private mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field private final mContext:Landroid/content/Context;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1853
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 1854
    return-void
.end method


# virtual methods
.method getAlarmManager()Landroid/app/AlarmManager;
    .registers 3

    .line 1857
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method getAnyMotionDetector(Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)Lcom/android/server/AnyMotionDetector;
    .registers 12

    .line 1862
    new-instance v6, Lcom/android/server/AnyMotionDetector;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V

    return-object v6
.end method

.method getAppStateTracker(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/AppStateTracker;
    .registers 4

    .line 1866
    new-instance v0, Lcom/android/server/AppStateTracker;

    invoke-direct {v0, p1, p2}, Lcom/android/server/AppStateTracker;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object v0
.end method

.method getConnectivityService()Lcom/android/server/ConnectivityService;
    .registers 2

    .line 1870
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityService:Lcom/android/server/ConnectivityService;

    if-nez v0, :cond_e

    .line 1871
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityService:Lcom/android/server/ConnectivityService;

    .line 1874
    :cond_e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method getConstants(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)Lcom/android/server/DeviceIdleController$Constants;
    .registers 5

    .line 1879
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    if-nez v0, :cond_e

    .line 1880
    new-instance v0, Lcom/android/server/DeviceIdleController$Constants;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/DeviceIdleController$Constants;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 1882
    :cond_e
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object p1
.end method

.method getConstraintController(Landroid/os/Handler;Lcom/android/server/DeviceIdleController$LocalService;)Lcom/android/server/deviceidle/ConstraintController;
    .registers 4

    .line 1931
    iget-object p2, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 1932
    const-string v0, "android.software.leanback_only"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 1933
    new-instance p2, Lcom/android/server/deviceidle/TvConstraintController;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/android/server/deviceidle/TvConstraintController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object p2

    .line 1935
    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method getElapsedRealtime()J
    .registers 3

    .line 1887
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method getHandler(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MyHandler;
    .registers 4

    .line 1898
    new-instance v0, Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/DeviceIdleController$MyHandler;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V

    return-object v0
.end method

.method getLocationManager()Landroid/location/LocationManager;
    .registers 3

    .line 1891
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_10

    .line 1892
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 1894
    :cond_10
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method getMotionSensor()Landroid/hardware/Sensor;
    .registers 6

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Injector;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    .line 1903
    nop

    .line 1904
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1906
    const/4 v2, 0x1

    if-lez v1, :cond_1a

    .line 1907
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    goto :goto_1b

    .line 1906
    :cond_1a
    const/4 v1, 0x0

    .line 1909
    :goto_1b
    if-nez v1, :cond_32

    iget-object v3, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1911
    const/16 v1, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1914
    :cond_32
    if-nez v1, :cond_3a

    .line 1916
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1919
    :cond_3a
    return-object v1
.end method

.method getPowerManager()Landroid/os/PowerManager;
    .registers 3

    .line 1923
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    return-object v0
.end method

.method getSensorManager()Landroid/hardware/SensorManager;
    .registers 3

    .line 1927
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    return-object v0
.end method

.method useMotionSensor()Z
    .registers 3

    .line 1939
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
