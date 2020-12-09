.class Lcom/android/server/DeviceIdleController$7;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 805
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$7;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    .line 808
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$7;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 809
    :try_start_3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$7;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, p1}, Lcom/android/server/DeviceIdleController;->receivedGenericLocationLocked(Landroid/location/Location;)V

    .line 810
    monitor-exit v0

    .line 811
    return-void

    .line 810
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .line 823
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .line 819
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 815
    return-void
.end method
