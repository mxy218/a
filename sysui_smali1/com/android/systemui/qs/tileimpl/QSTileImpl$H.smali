.class public final Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
.super Landroid/os/Handler;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 465
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 466
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v0, 0x0

    .line 473
    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    const-string v0, "handleAddCallback"

    .line 475
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$000(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto/16 :goto_14b

    .line 476
    :cond_13
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_22

    const-string v0, "handleRemoveCallbacks"

    .line 478
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$100(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V

    goto/16 :goto_14b

    .line 479
    :cond_22
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xc

    if-ne v1, v3, :cond_35

    const-string v0, "handleRemoveCallback"

    .line 481
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$200(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto/16 :goto_14b

    .line 482
    :cond_35
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_67

    const-string v0, "handleClick"

    .line 490
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz p1, :cond_60

    .line 491
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 492
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$300(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 491
    invoke-static {p1, v1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p1

    .line 493
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, p1, v4}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto/16 :goto_14b

    .line 496
    :cond_60
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick()V

    goto/16 :goto_14b

    .line 498
    :cond_67
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_75

    const-string v0, "handleSecondaryClick"

    .line 500
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSecondaryClick()V

    goto/16 :goto_14b

    .line 501
    :cond_75
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_83

    const-string v0, "handleLongClick"

    .line 503
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    goto/16 :goto_14b

    .line 504
    :cond_83
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_93

    const-string v0, "handleRefreshState"

    .line 506
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    goto/16 :goto_14b

    .line 507
    :cond_93
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_a7

    const-string v0, "handleShowDetail"

    .line 509
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_a1

    goto :goto_a2

    :cond_a1
    move v2, v4

    :goto_a2
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$400(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_14b

    .line 510
    :cond_a7
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_b7

    const-string v0, "handleUserSwitch"

    .line 512
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    goto/16 :goto_14b

    .line 513
    :cond_b7
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_cc

    const-string v0, "handleToggleStateChanged"

    .line 515
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_c6

    goto :goto_c7

    :cond_c6
    move v2, v4

    :goto_c7
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$500(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_14b

    .line 516
    :cond_cc
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_e0

    const-string v0, "handleScanStateChanged"

    .line 518
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_db

    goto :goto_dc

    :cond_db
    move v2, v4

    :goto_dc
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$600(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto :goto_14b

    .line 519
    :cond_e0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_ee

    const-string v0, "handleDestroy"

    .line 521
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    goto :goto_14b

    .line 522
    :cond_ee
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xd

    if-ne v1, v3, :cond_104

    const-string v0, "handleSetListeningInternal"

    .line 524
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_ff

    goto :goto_100

    :cond_ff
    move v2, v4

    :goto_100
    invoke-static {v1, v3, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$700(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Ljava/lang/Object;Z)V

    goto :goto_14b

    .line 525
    :cond_104
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_112

    const-string v0, "handleStale"

    .line 527
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStale()V

    goto :goto_14b

    .line 529
    :cond_112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_12b
    .catchall {:try_start_1 .. :try_end_12b} :catchall_12b

    :catchall_12b
    move-exception p1

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/qs/QSHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14b
    return-void
.end method
