.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorState"
.end annotation


# instance fields
.field private mErrorNotification:I

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 2

    .line 1533
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method notify(I)V
    .registers 4

    .line 1555
    iput p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->mErrorNotification:I

    .line 1556
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ip/IpServer;

    .line 1557
    invoke-virtual {v1, p1}, Landroid/net/ip/IpServer;->sendMessage(I)V

    .line 1558
    goto :goto_c

    .line 1559
    :cond_1c
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 1538
    nop

    .line 1539
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x50001

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1b

    const p1, 0x50006

    if-eq v0, p1, :cond_f

    .line 1549
    goto :goto_26

    .line 1545
    :cond_f
    iput v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->mErrorNotification:I

    .line 1546
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1547
    goto :goto_25

    .line 1541
    :cond_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/ip/IpServer;

    .line 1542
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->mErrorNotification:I

    invoke-virtual {p1, v0}, Landroid/net/ip/IpServer;->sendMessage(I)V

    .line 1543
    nop

    .line 1551
    :goto_25
    const/4 v2, 0x1

    :goto_26
    return v2
.end method
