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

    .line 688
    iput-object p1, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 691
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$800(Landroid/net/ip/IpServer;I)V

    .line 692
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 696
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v1}, Landroid/net/ip/IpServer;->access$900(Landroid/net/ip/IpServer;Lcom/android/internal/util/State;I)V

    .line 697
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x50066

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2e

    const v1, 0x50068

    if-eq v0, v1, :cond_24

    const v1, 0x50071

    if-eq v0, v1, :cond_1a

    .line 718
    return v2

    .line 715
    :cond_1a
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/LinkProperties;

    invoke-static {v0, p1}, Landroid/net/ip/IpServer;->access$1300(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    .line 716
    goto :goto_5b

    .line 712
    :cond_24
    iget-object p1, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p1}, Landroid/net/ip/IpServer;->access$1200(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 713
    goto :goto_5b

    .line 699
    :cond_2e
    iget-object v0, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0, v2}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 700
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_51

    const/4 v0, 0x3

    if-eq p1, v0, :cond_47

    .line 708
    iget-object p1, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p1}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object p1

    const-string v0, "Invalid tethering interface serving state specified."

    invoke-virtual {p1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 710
    goto :goto_5b

    .line 702
    :cond_47
    iget-object p1, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p1}, Landroid/net/ip/IpServer;->access$1000(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 703
    goto :goto_5b

    .line 705
    :cond_51
    iget-object p1, p0, Landroid/net/ip/IpServer$InitialState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p1}, Landroid/net/ip/IpServer;->access$1100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 706
    nop

    .line 720
    :goto_5b
    const/4 p1, 0x1

    return p1
.end method
