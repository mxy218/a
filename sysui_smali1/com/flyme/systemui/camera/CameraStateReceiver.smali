.class public Lcom/flyme/systemui/camera/CameraStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraStateReceiver.java"


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private mClientPkg:Ljava/lang/String;

.field private mOpened:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meizu.intent.action.CAMERA_OPEN"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "cameraId"

    const-string v5, "clientName"

    if-eqz v1, :cond_21

    .line 24
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/camera/CameraStateReceiver;->mClientPkg:Ljava/lang/String;

    .line 25
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/flyme/systemui/camera/CameraStateReceiver;->mCameraId:Ljava/lang/String;

    .line 26
    iput-boolean v3, p0, Lcom/flyme/systemui/camera/CameraStateReceiver;->mOpened:Z

    goto :goto_37

    :cond_21
    const-string v1, "meizu.intent.action.CAMERA_CLOSE"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 28
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/camera/CameraStateReceiver;->mClientPkg:Ljava/lang/String;

    .line 29
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/flyme/systemui/camera/CameraStateReceiver;->mCameraId:Ljava/lang/String;

    .line 30
    iput-boolean v2, p0, Lcom/flyme/systemui/camera/CameraStateReceiver;->mOpened:Z

    .line 33
    :cond_37
    :goto_37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mClientPkg "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateReceiver;->mClientPkg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateReceiver;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraStateReceiver"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p1}, Lcom/flyme/systemui/camera/CameraStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/camera/CameraStateController;

    move-result-object p1

    iget-boolean p2, p0, Lcom/flyme/systemui/camera/CameraStateReceiver;->mOpened:Z

    if-eqz p2, :cond_74

    iget-object p2, p0, Lcom/flyme/systemui/camera/CameraStateReceiver;->mCameraId:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_74

    move v2, v3

    :cond_74
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateReceiver;->mClientPkg:Ljava/lang/String;

    invoke-virtual {p1, v2, p0}, Lcom/flyme/systemui/camera/CameraStateController;->updateIsFrontCamera(ZLjava/lang/String;)V

    return-void
.end method
