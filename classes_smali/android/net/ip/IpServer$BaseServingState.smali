.class Landroid/net/ip/IpServer$BaseServingState;
.super Lcom/android/internal/util/State;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseServingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpServer;


# direct methods
.method constructor <init>(Landroid/net/ip/IpServer;)V
    .registers 2

    .line 724
    iput-object p1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 727
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1400(Landroid/net/ip/IpServer;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 728
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 729
    return-void

    .line 733
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_35

    .line 738
    nop

    .line 740
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 741
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "Failed to startIPv6"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 743
    return-void

    .line 745
    :cond_34
    return-void

    .line 734
    :catch_35
    move-exception v0

    .line 735
    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Tethering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 737
    return-void
.end method

.method public exit()V
    .registers 5

    .line 752
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1800(Landroid/net/ip/IpServer;)V

    .line 755
    :try_start_5
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_15

    .line 759
    goto :goto_36

    .line 756
    :catch_15
    move-exception v0

    .line 757
    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 758
    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to untether interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 761
    :goto_36
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1900(Landroid/net/ip/IpServer;)V

    .line 763
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2000(Landroid/net/ip/IpServer;)V

    .line 764
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4

    .line 768
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v1}, Landroid/net/ip/IpServer;->access$900(Landroid/net/ip/IpServer;Lcom/android/internal/util/State;I)V

    .line 769
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    .line 791
    :pswitch_c  #0x50069, 0x5006a, 0x50070
    const/4 p1, 0x0

    return p1

    .line 779
    :pswitch_e  #0x50071
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/LinkProperties;

    invoke-static {v0, p1}, Landroid/net/ip/IpServer;->access$1300(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    .line 780
    iget-object p1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p1}, Landroid/net/ip/IpServer;->access$2100(Landroid/net/ip/IpServer;)V

    .line 781
    goto :goto_41

    .line 787
    :pswitch_1d  #0x5006b, 0x5006c, 0x5006d, 0x5006e, 0x5006f
    iget-object p1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 788
    iget-object p1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p1}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 789
    goto :goto_41

    .line 775
    :pswitch_2d  #0x50068
    iget-object p1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p1}, Landroid/net/ip/IpServer;->access$1200(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 777
    goto :goto_41

    .line 771
    :pswitch_37  #0x50067
    iget-object p1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p1}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 773
    nop

    .line 793
    :goto_41
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_44
    .packed-switch 0x50067
        :pswitch_37  #00050067
        :pswitch_2d  #00050068
        :pswitch_c  #00050069
        :pswitch_c  #0005006a
        :pswitch_1d  #0005006b
        :pswitch_1d  #0005006c
        :pswitch_1d  #0005006d
        :pswitch_1d  #0005006e
        :pswitch_1d  #0005006f
        :pswitch_c  #00050070
        :pswitch_e  #00050071
    .end packed-switch
.end method
