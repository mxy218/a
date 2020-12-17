.class Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
.super Landroid/os/Handler;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppStandbyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/usage/AppStandbyController;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 1703
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 1704
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1705
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"  # Landroid/os/Message;

    .line 1709
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_f8

    .line 1780
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_f7

    .line 1776
    :pswitch_c  #0xe
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->updateChargingStableState()V

    .line 1777
    goto/16 :goto_f7

    .line 1772
    :pswitch_13  #0xd
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncStart(Ljava/lang/String;I)V

    .line 1773
    goto/16 :goto_f7

    .line 1763
    :pswitch_20  #0xc
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    move v0, v1

    .line 1764
    .local v0, "exempted":Z
    if-eqz v0, :cond_36

    .line 1765
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncScheduled(Ljava/lang/String;I)V

    goto/16 :goto_f7

    .line 1767
    :cond_36
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/AppStandbyController;->reportUnexemptedSyncScheduled(Ljava/lang/String;I)V

    .line 1769
    goto/16 :goto_f7

    .line 1758
    .end local v0  # "exempted":Z
    :pswitch_43  #0xb
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1759
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v8

    .line 1758
    invoke-static/range {v4 .. v9}, Lcom/android/server/usage/AppStandbyController;->access$400(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIJ)V

    .line 1760
    goto/16 :goto_f7

    .line 1730
    :pswitch_5b  #0xa
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$200(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 1731
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$300(Lcom/android/server/usage/AppStandbyController;)V

    .line 1732
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    .line 1733
    goto/16 :goto_f7

    .line 1755
    :pswitch_73  #0x9
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->informParoleStateChanged()V

    .line 1756
    goto/16 :goto_f7

    .line 1745
    :pswitch_7a  #0x8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1746
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 1748
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1746
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/usage/AppStandbyController;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1749
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1750
    goto :goto_f7

    .line 1741
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_97  #0x7
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, v2}, Lcom/android/server/usage/AppStandbyController;->setAppIdleParoled(Z)V

    .line 1742
    goto :goto_f7

    .line 1736
    :pswitch_9d  #0x6
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->checkParoleTimeout()V

    .line 1737
    goto :goto_f7

    .line 1722
    :pswitch_a3  #0x5
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    move-result v0

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-boolean v0, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_f7

    .line 1723
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$200(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->access$200(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v1

    const/4 v3, 0x5

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-wide v2, v2, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_f7

    .line 1718
    :pswitch_ce  #0x4
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v1, :cond_db

    goto :goto_dc

    :cond_db
    move v1, v2

    :goto_dc
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/usage/AppStandbyController;->forceIdleState(Ljava/lang/String;IZ)V

    .line 1719
    goto :goto_f7

    .line 1711
    :pswitch_e0  #0x3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    .line 1712
    .local v0, "r":Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    iget v4, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    iget v5, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    iget-boolean v6, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->informListeners(Ljava/lang/String;IIIZ)V

    .line 1714
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->recycle()V

    .line 1715
    nop

    .line 1784
    .end local v0  # "r":Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    :cond_f7
    :goto_f7
    return-void

    :pswitch_data_f8
    .packed-switch 0x3
        :pswitch_e0  #00000003
        :pswitch_ce  #00000004
        :pswitch_a3  #00000005
        :pswitch_9d  #00000006
        :pswitch_97  #00000007
        :pswitch_7a  #00000008
        :pswitch_73  #00000009
        :pswitch_5b  #0000000a
        :pswitch_43  #0000000b
        :pswitch_20  #0000000c
        :pswitch_13  #0000000d
        :pswitch_c  #0000000e
    .end packed-switch
.end method
