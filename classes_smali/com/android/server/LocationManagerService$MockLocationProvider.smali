.class Lcom/android/server/LocationManagerService$MockLocationProvider;
.super Lcom/android/server/LocationManagerService$LocationProvider;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MockLocationProvider"
.end annotation


# instance fields
.field private mCurrentRequest:Lcom/android/internal/location/ProviderRequest;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V
    .registers 4
    .param p2, "name"  # Ljava/lang/String;

    .line 1426
    iput-object p1, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1427
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 1428
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V
    .registers 4
    .param p1, "x0"  # Lcom/android/server/LocationManagerService;
    .param p2, "x1"  # Ljava/lang/String;
    .param p3, "x2"  # Lcom/android/server/LocationManagerService$1;

    .line 1422
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService$MockLocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/LocationManagerService$MockLocationProvider;)Lcom/android/internal/location/ProviderRequest;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService$MockLocationProvider;

    .line 1422
    iget-object v0, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mCurrentRequest:Lcom/android/internal/location/ProviderRequest;

    return-object v0
.end method


# virtual methods
.method public attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V
    .registers 3
    .param p1, "provider"  # Lcom/android/server/location/AbstractLocationProvider;

    .line 1432
    instance-of v0, p1, Lcom/android/server/location/MockProvider;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1433
    invoke-super {p0, p1}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 1434
    return-void
.end method

.method public isMock()Z
    .registers 2

    .line 1437
    const/4 v0, 0x1

    return v0
.end method

.method public setEnabledLocked(Z)V
    .registers 5
    .param p1, "enabled"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1442
    iget-object v0, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_18

    .line 1443
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1445
    .local v0, "identity":J
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    check-cast v2, Lcom/android/server/location/MockProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/location/MockProvider;->setEnabled(Z)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    .line 1447
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1448
    goto :goto_18

    .line 1447
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1450
    .end local v0  # "identity":J
    :cond_18
    :goto_18
    return-void
.end method

.method public setLocationLocked(Landroid/location/Location;)V
    .registers 5
    .param p1, "location"  # Landroid/location/Location;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1454
    iget-object v0, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_18

    .line 1455
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1457
    .local v0, "identity":J
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    check-cast v2, Lcom/android/server/location/MockProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    .line 1459
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1460
    goto :goto_18

    .line 1459
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1462
    .end local v0  # "identity":J
    :cond_18
    :goto_18
    return-void
.end method

.method public setRequestLocked(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "request"  # Lcom/android/internal/location/ProviderRequest;
    .param p2, "workSource"  # Landroid/os/WorkSource;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1467
    invoke-super {p0, p1, p2}, Lcom/android/server/LocationManagerService$LocationProvider;->setRequestLocked(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 1468
    iput-object p1, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mCurrentRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1469
    return-void
.end method

.method public setStatusLocked(ILandroid/os/Bundle;J)V
    .registers 8
    .param p1, "status"  # I
    .param p2, "extras"  # Landroid/os/Bundle;
    .param p3, "updateTime"  # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1473
    iget-object v0, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_18

    .line 1474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1476
    .local v0, "identity":J
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    check-cast v2, Lcom/android/server/location/MockProvider;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    .line 1478
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1479
    goto :goto_18

    .line 1478
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1481
    .end local v0  # "identity":J
    :cond_18
    :goto_18
    return-void
.end method
