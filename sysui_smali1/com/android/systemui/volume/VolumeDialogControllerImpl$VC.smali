.class final Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;
.super Landroid/media/IVolumeController$Stub;
.source "VolumeDialogControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VC"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .registers 3

    .line 701
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0}, Landroid/media/IVolumeController$Stub;-><init>()V

    .line 702
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".VC"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;)V
    .registers 3

    .line 701
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    const-string v1, "dismiss requested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 736
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 737
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 738
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public displaySafeVolumeWarning(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displaySafeVolumeWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-static {p1}, Lcom/android/settingslib/volume/Util;->audioManagerFlagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 706
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_27

    return-void

    .line 709
    :cond_27
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object p0

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public masterMuteChanged(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    const-string p1, "masterMuteChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public setA11yMode(I)V
    .registers 5

    .line 743
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setA11yMode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_23

    return-void

    :cond_23
    if-eqz p1, :cond_45

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3f

    .line 754
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid accessibility mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 751
    :cond_3f
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$602(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Z)Z

    goto :goto_4b

    .line 748
    :cond_45
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$602(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Z)Z

    .line 757
    :goto_4b
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object p1

    const/16 v0, 0xf

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$600(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 727
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    const-string v1, "setLayoutDirection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 729
    :cond_14
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object p0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public volumeChanged(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 714
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volumeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-static {p2}, Lcom/android/settingslib/volume/Util;->audioManagerFlagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 714
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_2b
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_34

    return-void

    .line 717
    :cond_34
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$500(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
