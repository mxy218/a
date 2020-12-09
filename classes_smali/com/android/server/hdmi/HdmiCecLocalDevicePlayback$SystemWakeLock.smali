.class Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevicePlayback.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemWakeLock"
.end annotation


# instance fields
.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V
    .registers 4

    .line 379
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getPowerManager()Landroid/os/PowerManager;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "HdmiCecLocalDevicePlayback"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 381
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 382
    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 4

    .line 386
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 387
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-boolean v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSource:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "active source: %b. Wake lock acquired"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public isHeld()Z
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 3

    .line 392
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$SystemWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 393
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Wake lock released"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    return-void
.end method
