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

    .line 1292
    iput-object p1, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1293
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 1294
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V
    .registers 4

    .line 1288
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService$MockLocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/LocationManagerService$MockLocationProvider;)Lcom/android/internal/location/ProviderRequest;
    .registers 1

    .line 1288
    iget-object p0, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mCurrentRequest:Lcom/android/internal/location/ProviderRequest;

    return-object p0
.end method


# virtual methods
.method public attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V
    .registers 3

    .line 1298
    instance-of v0, p1, Lcom/android/server/location/MockProvider;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1299
    invoke-super {p0, p1}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 1300
    return-void
.end method

.method public isMock()Z
    .registers 2

    .line 1303
    const/4 v0, 0x1

    return v0
.end method

.method public setEnabledLocked(Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1308
    iget-object v0, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_18

    .line 1309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1311
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    check-cast v2, Lcom/android/server/location/MockProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/location/MockProvider;->setEnabled(Z)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    .line 1313
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1314
    goto :goto_18

    .line 1313
    :catchall_13
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1316
    :cond_18
    :goto_18
    return-void
.end method

.method public setLocationLocked(Landroid/location/Location;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_18

    .line 1321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1323
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    check-cast v2, Lcom/android/server/location/MockProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    .line 1325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1326
    goto :goto_18

    .line 1325
    :catchall_13
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1328
    :cond_18
    :goto_18
    return-void
.end method

.method public setRequestLocked(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1333
    invoke-super {p0, p1, p2}, Lcom/android/server/LocationManagerService$LocationProvider;->setRequestLocked(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 1334
    iput-object p1, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mCurrentRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1335
    return-void
.end method

.method public setStatusLocked(ILandroid/os/Bundle;J)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1339
    iget-object v0, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_18

    .line 1340
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1342
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService$MockLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    check-cast v2, Lcom/android/server/location/MockProvider;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    .line 1344
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1345
    goto :goto_18

    .line 1344
    :catchall_13
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1347
    :cond_18
    :goto_18
    return-void
.end method
