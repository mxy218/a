.class Landroid/net/ip/IpServer$InitialState;
.super Lcom/android/internal/util/State;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpServer;


# direct methods
.method constructor <init>(Landroid/net/ip/IpServer;)V
    .registers 2
    .param p1, "this$0"  # Landroid/net/ip/IpServer;

    .line 710
    iput-object p1, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 713
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$800(Landroid/net/ip/IpServer;I)V

    .line 714
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"  # Landroid/os/Message;

    .line 718
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v1}, Landroid/net/ip/IpServer;->access$900(Landroid/net/ip/IpServer;Lcom/android/internal/util/State;I)V

    .line 719
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x50066

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2e

    const v1, 0x50068

    if-eq v0, v1, :cond_24

    const v1, 0x50071

    if-eq v0, v1, :cond_1a

    .line 740
    return v2

    .line 737
    :cond_1a
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$1300(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    .line 738
    goto :goto_5b

    .line 734
    :cond_24
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1200(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 735
    goto :goto_5b

    .line 721
    :cond_2e
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0, v2}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 722
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_51

    const/4 v1, 0x3

    if-eq v0, v1, :cond_47

    .line 730
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "Invalid tethering interface serving state specified."

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 732
    goto :goto_5b

    .line 724
    :cond_47
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1000(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 725
    goto :goto_5b

    .line 727
    :cond_51
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 728
    nop

    .line 742
    :goto_5b
    const/4 v0, 0x1

    return v0
.end method
