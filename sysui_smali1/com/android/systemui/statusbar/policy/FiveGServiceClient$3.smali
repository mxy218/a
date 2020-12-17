.class Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;
.super Lorg/codeaurora/internal/NetworkCallbackBase;
.source "FiveGServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .registers 2

    .line 420
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-direct {p0}, Lorg/codeaurora/internal/NetworkCallbackBase;-><init>()V

    return-void
.end method


# virtual methods
.method public on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on5gConfigInfo: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " status"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " NrConfigType = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_47

    .line 444
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p2

    .line 445
    invoke-virtual {p4}, Lorg/codeaurora/internal/NrConfigType;->get()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$1502(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    .line 446
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)V

    :cond_47
    return-void
.end method

.method public onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrIconType: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " status"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " NrIconType = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_4c

    .line 457
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p2

    .line 458
    invoke-virtual {p4}, Lorg/codeaurora/internal/NrIconType;->get()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$102(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    .line 459
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p3, p2, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->update5GIcon(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)V

    .line 460
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)V

    :cond_4c
    return-void
.end method

.method public onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    invoke-static {}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalStrength: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " status="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " signalStrength="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGServiceClient"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_34
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_51

    if-eqz p4, :cond_51

    .line 431
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p2

    .line 432
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-virtual {p4}, Lorg/codeaurora/internal/SignalStrength;->getRsrp()I

    move-result p4

    invoke-static {p3, p4, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;ILcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V

    .line 433
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$1400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)V

    :cond_51
    return-void
.end method
