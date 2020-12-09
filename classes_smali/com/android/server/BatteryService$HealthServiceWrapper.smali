.class final Lcom/android/server/BatteryService$HealthServiceWrapper;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HealthServiceWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;,
        Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;,
        Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;,
        Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;
    }
.end annotation


# static fields
.field public static final INSTANCE_HEALTHD:Ljava/lang/String; = "backup"

.field public static final INSTANCE_VENDOR:Ljava/lang/String; = "default"

.field private static final TAG:Ljava/lang/String; = "HealthServiceWrapper"

.field private static final sAllInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallback:Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHealthSupplier:Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;

.field private mInstanceName:Ljava/lang/String;

.field private final mLastService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/hardware/health/V2_0/IHealth;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1348
    const-string v0, "default"

    const-string v1, "backup"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1349
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService$HealthServiceWrapper;->sAllInstances:Ljava/util/List;

    .line 1348
    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1351
    new-instance v0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;-><init>(Lcom/android/server/BatteryService$HealthServiceWrapper;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 1352
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HealthServiceRefresh"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1359
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1366
    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;
    .registers 1

    .line 1343
    iget-object p0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/server/BatteryService$HealthServiceWrapper;)Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;
    .registers 1

    .line 1343
    iget-object p0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHealthSupplier:Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 1343
    iget-object p0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/BatteryService$HealthServiceWrapper;)Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;
    .registers 1

    .line 1343
    iget-object p0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mCallback:Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/server/BatteryService$HealthServiceWrapper;)Landroid/os/HandlerThread;
    .registers 1

    .line 1343
    iget-object p0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method


# virtual methods
.method getHandlerThread()Landroid/os/HandlerThread;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1439
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method getLastService()Landroid/hardware/health/V2_0/IHealth;
    .registers 2

    .line 1369
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/health/V2_0/IHealth;

    return-object v0
.end method

.method init(Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1392
    if-eqz p1, :cond_a9

    if-eqz p2, :cond_a9

    if-eqz p3, :cond_a9

    .line 1397
    iput-object p1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mCallback:Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;

    .line 1398
    iput-object p3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHealthSupplier:Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;

    .line 1401
    nop

    .line 1402
    sget-object p1, Lcom/android/server/BatteryService$HealthServiceWrapper;->sAllInstances:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HealthInitGetService_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1500(Ljava/lang/String;)V

    .line 1405
    :try_start_33
    invoke-interface {p3, v2}, Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;->get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;

    move-result-object v1
    :try_end_37
    .catch Ljava/util/NoSuchElementException; {:try_start_33 .. :try_end_37} :catch_40
    .catchall {:try_start_33 .. :try_end_37} :catchall_3b

    .line 1409
    :goto_37
    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()V

    .line 1410
    goto :goto_42

    .line 1409
    :catchall_3b
    move-exception p1

    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()V

    throw p1

    .line 1406
    :catch_40
    move-exception v3

    goto :goto_37

    .line 1411
    :goto_42
    if-eqz v1, :cond_4c

    .line 1412
    iput-object v2, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    .line 1413
    iget-object p1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1414
    goto :goto_4d

    .line 1416
    :cond_4c
    goto :goto_13

    .line 1418
    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    if-eqz p1, :cond_91

    if-eqz v1, :cond_91

    .line 1423
    iget-object p3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mCallback:Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;

    invoke-interface {p3, v0, v1, p1}, Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;->onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V

    .line 1426
    const-string p1, "HealthInitRegisterNotification"

    invoke-static {p1}, Lcom/android/server/BatteryService;->access$1500(Ljava/lang/String;)V

    .line 1427
    iget-object p1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 1429
    :try_start_62
    invoke-interface {p2}, Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;->get()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p1

    const-string p2, "android.hardware.health@2.0::IHealth"

    iget-object p3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {p1, p2, p3, v0}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_8c

    .line 1432
    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()V

    .line 1433
    nop

    .line 1434
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "health: HealthServiceWrapper listening to instance "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HealthServiceWrapper"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    return-void

    .line 1432
    :catchall_8c
    move-exception p1

    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()V

    throw p1

    .line 1419
    :cond_91
    new-instance p1, Ljava/util/NoSuchElementException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    sget-object v0, Lcom/android/server/BatteryService$HealthServiceWrapper;->sAllInstances:Ljava/util/List;

    .line 1421
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    .line 1419
    const-string p3, "No IHealth service instance among %s is available. Perhaps no permission?"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1393
    :cond_a9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
