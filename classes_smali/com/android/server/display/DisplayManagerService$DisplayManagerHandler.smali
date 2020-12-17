.class final Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
.super Landroid/os/Handler;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"  # Landroid/os/Looper;

    .line 1639
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 1640
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1641
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"  # Landroid/os/Message;

    .line 1645
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_8e

    goto/16 :goto_8d

    .line 1680
    :pswitch_7  #0x6
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$1000(Lcom/android/server/display/DisplayManagerService;)V

    goto/16 :goto_8d

    .line 1664
    :pswitch_e  #0x5
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 1665
    :try_start_15
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1666
    .local v1, "changed":Z
    if-eqz v1, :cond_57

    .line 1667
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1668
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayViewport;

    .line 1669
    .local v3, "d":Landroid/hardware/display/DisplayViewport;
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/display/DisplayViewport;->makeCopy()Landroid/hardware/display/DisplayViewport;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    nop

    .end local v3  # "d":Landroid/hardware/display/DisplayViewport;
    goto :goto_3c

    .line 1672
    :cond_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_15 .. :try_end_58} :catchall_6a

    .line 1673
    if-eqz v1, :cond_8d

    .line 1674
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$900(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManagerInternal;->setDisplayViewports(Ljava/util/List;)V

    goto :goto_8d

    .line 1672
    .end local v1  # "changed":Z
    :catchall_6a
    move-exception v1

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v1

    .line 1659
    :pswitch_6d  #0x4
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->requestTraversalFromDisplayManager()V

    .line 1660
    goto :goto_8d

    .line 1655
    :pswitch_77  #0x3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->access$400(Lcom/android/server/display/DisplayManagerService;II)V

    .line 1656
    goto :goto_8d

    .line 1651
    :pswitch_81  #0x2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$300(Lcom/android/server/display/DisplayManagerService;)V

    .line 1652
    goto :goto_8d

    .line 1647
    :pswitch_87  #0x1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$200(Lcom/android/server/display/DisplayManagerService;)V

    .line 1648
    nop

    .line 1683
    :cond_8d
    :goto_8d
    return-void

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_87  #00000001
        :pswitch_81  #00000002
        :pswitch_77  #00000003
        :pswitch_6d  #00000004
        :pswitch_e  #00000005
        :pswitch_7  #00000006
    .end packed-switch
.end method
