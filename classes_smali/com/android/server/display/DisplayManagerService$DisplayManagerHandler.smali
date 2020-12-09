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

    .line 1616
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 1617
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1618
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1622
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_8e

    goto/16 :goto_8c

    .line 1657
    :pswitch_7  #0x6
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->access$1000(Lcom/android/server/display/DisplayManagerService;)V

    goto/16 :goto_8c

    .line 1641
    :pswitch_e  #0x5
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 1642
    :try_start_15
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1643
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_56

    .line 1644
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1645
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    .line 1646
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/display/DisplayViewport;->makeCopy()Landroid/hardware/display/DisplayViewport;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    goto :goto_3c

    .line 1649
    :cond_56
    monitor-exit p1
    :try_end_57
    .catchall {:try_start_15 .. :try_end_57} :catchall_69

    .line 1650
    if-eqz v0, :cond_8c

    .line 1651
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->access$900(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManagerInternal;->setDisplayViewports(Ljava/util/List;)V

    goto :goto_8c

    .line 1649
    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit p1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0

    .line 1636
    :pswitch_6c  #0x4
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->access$500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerInternal;->requestTraversalFromDisplayManager()V

    .line 1637
    goto :goto_8c

    .line 1632
    :pswitch_76  #0x3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/android/server/display/DisplayManagerService;->access$400(Lcom/android/server/display/DisplayManagerService;II)V

    .line 1633
    goto :goto_8c

    .line 1628
    :pswitch_80  #0x2
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->access$300(Lcom/android/server/display/DisplayManagerService;)V

    .line 1629
    goto :goto_8c

    .line 1624
    :pswitch_86  #0x1
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->access$200(Lcom/android/server/display/DisplayManagerService;)V

    .line 1625
    nop

    .line 1660
    :cond_8c
    :goto_8c
    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_86  #00000001
        :pswitch_80  #00000002
        :pswitch_76  #00000003
        :pswitch_6c  #00000004
        :pswitch_e  #00000005
        :pswitch_7  #00000006
    .end packed-switch
.end method
