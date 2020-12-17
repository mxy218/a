.class final Lcom/android/systemui/volume/VolumeUI$VolumeController;
.super Landroid/media/IVolumeController$Stub;
.source "VolumeUI.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Landroid/media/IVolumeController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V
    .registers 3

    .line 111
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI$VolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeUI;->access$300(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postDismiss(J)V

    return-void
.end method

.method public dismissNow()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$300(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 164
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeUI;->access$300(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postDismiss(J)V

    :cond_13
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public displaySafeVolumeWarning(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeUI;->access$300(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public masterMuteChanged(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeUI;->access$300(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->postMasterMuteChanged(I)V

    return-void
.end method

.method public setA11yMode(I)V
    .registers 2

    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeUI;->access$300(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->postLayoutDirection(I)V

    return-void
.end method

.method public volumeChanged(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeUI;->access$300(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    return-void
.end method
