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
    .param p1, "this$1"  # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1573
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method notify(I)V
    .registers 4
    .param p1, "msgType"  # I

    .line 1595
    iput p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->mErrorNotification:I

    .line 1596
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

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

    .line 1597
    .local v1, "ipServer":Landroid/net/ip/IpServer;
    invoke-virtual {v1, p1}, Landroid/net/ip/IpServer;->sendMessage(I)V

    .line 1598
    .end local v1  # "ipServer":Landroid/net/ip/IpServer;
    goto :goto_c

    .line 1599
    :cond_1c
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"  # Landroid/os/Message;

    .line 1578
    const/4 v0, 0x1

    .line 1579
    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x50001

    if-eq v1, v2, :cond_1c

    const v2, 0x50006

    if-eq v1, v2, :cond_f

    .line 1589
    const/4 v0, 0x0

    goto :goto_26

    .line 1585
    :cond_f
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->mErrorNotification:I

    .line 1586
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1587
    goto :goto_26

    .line 1581
    :cond_1c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ip/IpServer;

    .line 1582
    .local v1, "who":Landroid/net/ip/IpServer;
    iget v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;->mErrorNotification:I

    invoke-virtual {v1, v2}, Landroid/net/ip/IpServer;->sendMessage(I)V

    .line 1583
    nop

    .line 1591
    .end local v1  # "who":Landroid/net/ip/IpServer;
    :goto_26
    return v0
.end method
