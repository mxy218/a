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

    .line 1703
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 1704
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1705
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 1709
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_f8

    .line 1780
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_f6

    .line 1776
    :pswitch_c  #0xe
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController;->updateChargingStableState()V

    .line 1777
    goto/16 :goto_f6

    .line 1772
    :pswitch_13  #0xd
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncStart(Ljava/lang/String;I)V

    .line 1773
    goto/16 :goto_f6

    .line 1763
    :pswitch_20  #0xc
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    .line 1764
    :goto_26
    if-eqz v1, :cond_35

    .line 1765
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncScheduled(Ljava/lang/String;I)V

    goto/16 :goto_f6

    .line 1767
    :cond_35
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppStandbyController;->reportUnexemptedSyncScheduled(Ljava/lang/String;I)V

    .line 1769
    goto/16 :goto_f6

    .line 1758
    :pswitch_42  #0xb
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object p1, p1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1759
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    .line 1758
    invoke-static/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyController;->access$400(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIJ)V

    .line 1760
    goto/16 :goto_f6

    .line 1730
    :pswitch_5a  #0xa
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {p1}, Lcom/android/server/usage/AppStandbyController;->access$200(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 1731
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {p1}, Lcom/android/server/usage/AppStandbyController;->access$300(Lcom/android/server/usage/AppStandbyController;)V

    .line 1732
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    .line 1733
    goto/16 :goto_f6

    .line 1755
    :pswitch_72  #0x9
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController;->informParoleStateChanged()V

    .line 1756
    goto/16 :goto_f6

    .line 1745
    :pswitch_79  #0x8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1746
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 1748
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1746
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/AppStandbyController;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1749
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1750
    goto :goto_f6

    .line 1741
    :pswitch_96  #0x7
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p1, v2}, Lcom/android/server/usage/AppStandbyController;->setAppIdleParoled(Z)V

    .line 1742
    goto :goto_f6

    .line 1736
    :pswitch_9c  #0x6
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController;->checkParoleTimeout()V

    .line 1737
    goto :goto_f6

    .line 1722
    :pswitch_a2  #0x5
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    move-result v0

    if-eqz v0, :cond_f6

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-boolean v0, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_f6

    .line 1723
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$200(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->access$200(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v1

    const/4 v3, 0x5

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-wide v1, v1, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_f6

    .line 1718
    :pswitch_cd  #0x4
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_da

    goto :goto_db

    :cond_da
    move v1, v2

    :goto_db
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/usage/AppStandbyController;->forceIdleState(Ljava/lang/String;IZ)V

    .line 1719
    goto :goto_f6

    .line 1711
    :pswitch_df  #0x3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    .line 1712
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    iget v3, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    iget v4, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    iget-boolean v5, p1, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->informListeners(Ljava/lang/String;IIIZ)V

    .line 1714
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->recycle()V

    .line 1715
    nop

    .line 1784
    :cond_f6
    :goto_f6
    return-void

    nop

    :pswitch_data_f8
    .packed-switch 0x3
        :pswitch_df  #00000003
        :pswitch_cd  #00000004
        :pswitch_a2  #00000005
        :pswitch_9c  #00000006
        :pswitch_96  #00000007
        :pswitch_79  #00000008
        :pswitch_72  #00000009
        :pswitch_5a  #0000000a
        :pswitch_42  #0000000b
        :pswitch_20  #0000000c
        :pswitch_13  #0000000d
        :pswitch_c  #0000000e
    .end packed-switch
.end method
