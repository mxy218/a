.class Lcom/android/systemui/recents/OverviewProxyService$3;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 4

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding died of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\', try reconnecting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$302(Lcom/android/systemui/recents/OverviewProxyService;I)I

    .line 429
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1500(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 4

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null binding of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\', try reconnecting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$302(Lcom/android/systemui/recents/OverviewProxyService;I)I

    .line 422
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1500(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string p1, "OverviewProxyService"

    .line 384
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1102(Lcom/android/systemui/recents/OverviewProxyService;I)I

    .line 385
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$1200(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 387
    :try_start_17
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1300(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_86

    .line 397
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1600(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$302(Lcom/android/systemui/recents/OverviewProxyService;I)I

    .line 398
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/systemui/recents/OverviewProxyService;->access$1702(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/shared/recents/IOverviewProxy;)Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 400
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1800(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "extra_sysui_proxy"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 402
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1900(Lcom/android/systemui/recents/OverviewProxyService;)F

    move-result v0

    const-string v1, "extra_window_corner_radius"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2000(Lcom/android/systemui/recents/OverviewProxyService;)Z

    move-result v0

    const-string v1, "extra_supports_window_corners"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    :try_start_60
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1700(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onInitialize(Landroid/os/Bundle;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_69} :catch_6a

    goto :goto_76

    :catch_6a
    move-exception p2

    .line 407
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$302(Lcom/android/systemui/recents/OverviewProxyService;I)I

    const-string v0, "Failed to call onInitialize()"

    .line 408
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    :goto_76
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$2100(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 413
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$2200(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 415
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2300(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void

    :catch_86
    move-exception p2

    const-string v0, "Lost connection to launcher service"

    .line 391
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1400(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 393
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1500(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 435
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$302(Lcom/android/systemui/recents/OverviewProxyService;I)I

    return-void
.end method
