.class Landroid/net/ip/IpServer$LocalHotspotState;
.super Landroid/net/ip/IpServer$BaseServingState;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalHotspotState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpServer;


# direct methods
.method constructor <init>(Landroid/net/ip/IpServer;)V
    .registers 2
    .param p1, "this$0"  # Landroid/net/ip/IpServer;

    .line 838
    iput-object p1, p0, Landroid/net/ip/IpServer$LocalHotspotState;->this$0:Landroid/net/ip/IpServer;

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer$BaseServingState;-><init>(Landroid/net/ip/IpServer;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 841
    invoke-super {p0}, Landroid/net/ip/IpServer$BaseServingState;->enter()V

    .line 842
    iget-object v0, p0, Landroid/net/ip/IpServer$LocalHotspotState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$000(Landroid/net/ip/IpServer;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 843
    iget-object v0, p0, Landroid/net/ip/IpServer$LocalHotspotState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 847
    :cond_14
    iget-object v0, p0, Landroid/net/ip/IpServer$LocalHotspotState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$800(Landroid/net/ip/IpServer;I)V

    .line 848
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"  # Landroid/os/Message;

    .line 852
    invoke-super {p0, p1}, Landroid/net/ip/IpServer$BaseServingState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 854
    :cond_8
    iget-object v0, p0, Landroid/net/ip/IpServer$LocalHotspotState;->this$0:Landroid/net/ip/IpServer;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v2}, Landroid/net/ip/IpServer;->access$900(Landroid/net/ip/IpServer;Lcom/android/internal/util/State;I)V

    .line 855
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x50066

    if-eq v0, v2, :cond_1e

    const v2, 0x50070

    if-eq v0, v2, :cond_1d

    .line 863
    const/4 v0, 0x0

    return v0

    .line 861
    :cond_1d
    goto :goto_2a

    .line 857
    :cond_1e
    iget-object v0, p0, Landroid/net/ip/IpServer$LocalHotspotState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v2, "CMD_TETHER_REQUESTED while in local-only hotspot mode."

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 858
    nop

    .line 865
    :goto_2a
    return v1
.end method
