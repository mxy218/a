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
    .param p1, "this$0"  # Landroid/net/ip/IpServer;

    .line 746
    iput-object p1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 7

    .line 750
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$1402(Landroid/net/ip/IpServer;Z)Z

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v2}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] BaseServingState enter mLastError = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v2}, Landroid/net/ip/IpServer;->access$000(Landroid/net/ip/IpServer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IpServer"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 754
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 755
    return-void

    .line 759
    :cond_40
    :try_start_40
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v3, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v3}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4f} :catch_65

    .line 765
    nop

    .line 767
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1800(Landroid/net/ip/IpServer;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 768
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "Failed to startIPv6"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 770
    return-void

    .line 772
    :cond_64
    return-void

    .line 760
    :catch_65
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v3}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Tethering: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 762
    iget-object v3, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Error Tethering: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return-void
.end method

.method public exit()V
    .registers 5

    .line 777
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$1402(Landroid/net/ip/IpServer;Z)Z

    .line 782
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1900(Landroid/net/ip/IpServer;)V

    .line 786
    const-string v0, "IpServer"

    const-string/jumbo v1, "untetherInterface before stopIPv6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :try_start_13
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_23

    .line 793
    goto :goto_44

    .line 790
    :catch_23
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 792
    iget-object v1, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to untether interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 795
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_44
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1900(Landroid/net/ip/IpServer;)V

    .line 797
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2000(Landroid/net/ip/IpServer;)V

    .line 799
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2100(Landroid/net/ip/IpServer;)V

    .line 800
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"  # Landroid/os/Message;

    .line 804
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v1}, Landroid/net/ip/IpServer;->access$900(Landroid/net/ip/IpServer;Lcom/android/internal/util/State;I)V

    .line 805
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    .line 827
    :pswitch_c  #0x50069, 0x5006a, 0x50070
    const/4 v0, 0x0

    return v0

    .line 815
    :pswitch_e  #0x50071
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$1300(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    .line 816
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2200(Landroid/net/ip/IpServer;)V

    .line 817
    goto :goto_41

    .line 823
    :pswitch_1d  #0x5006b, 0x5006c, 0x5006d, 0x5006e, 0x5006f
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 824
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 825
    goto :goto_41

    .line 811
    :pswitch_2d  #0x50068
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1200(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 813
    goto :goto_41

    .line 807
    :pswitch_37  #0x50067
    iget-object v0, p0, Landroid/net/ip/IpServer$BaseServingState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 809
    nop

    .line 829
    :goto_41
    const/4 v0, 0x1

    return v0

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
