.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;
.super Landroid/content/BroadcastReceiver;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .registers 2

    .line 474
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .line 485
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, 0x0

    const/16 v4, -0x2710

    if-eqz v0, :cond_e3

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$502(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_35
    const/4 v0, -0x1

    .line 491
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 493
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v3

    :goto_4d
    if-ge v5, v2, :cond_a0

    .line 495
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 496
    iget-object v7, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v7, :cond_60

    goto :goto_9e

    .line 497
    :cond_60
    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, p2, :cond_66

    move v7, v1

    goto :goto_67

    :cond_66
    move v7, v3

    .line 498
    :goto_67
    iget-boolean v8, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eq v8, v7, :cond_78

    .line 499
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->copyWithIsCurrent(Z)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_78
    if-eqz v7, :cond_87

    .line 501
    iget-boolean v7, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-nez v7, :cond_87

    .line 502
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v8, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$602(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    :cond_87
    if-eqz v0, :cond_8f

    .line 504
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v7

    if-nez v7, :cond_9e

    :cond_8f
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v6, :cond_9e

    .line 506
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    :cond_9e
    :goto_9e
    add-int/2addr v5, v1

    goto :goto_4d

    .line 510
    :cond_a0
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 513
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$700(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result p2

    if-eq p2, v4, :cond_c5

    .line 514
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$800(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;

    move-result-object p2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 515
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$700(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 514
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 516
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p2, v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$702(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    :cond_c5
    if-eqz v0, :cond_e1

    .line 520
    iget p2, v0, Landroid/content/pm/UserInfo;->id:I

    if-eqz p2, :cond_e1

    .line 521
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$800(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;

    move-result-object p2

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    .line 522
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 521
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 523
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget p2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$702(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    :cond_e1
    move v3, v1

    goto :goto_107

    .line 526
    :cond_e3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f4

    .line 527
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    goto :goto_107

    .line 529
    :cond_f4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_107

    .line 531
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_107

    return-void

    .line 536
    :cond_107
    :goto_107
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p1, v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    if-eqz v3, :cond_117

    .line 538
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$900(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_117
    return-void
.end method
