.class Lcom/android/server/policy/FlymeConfirmPasswordView$7;
.super Landroid/os/CountDownTimer;
.source "FlymeConfirmPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/FlymeConfirmPasswordView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/FlymeConfirmPasswordView;JJ)V
    .registers 6
    .param p1, "this$0"  # Lcom/android/server/policy/FlymeConfirmPasswordView;
    .param p2, "x0"  # J
    .param p4, "x1"  # J

    .line 533
    iput-object p1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$7;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 8

    .line 553
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$7;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$1102(Lcom/android/server/policy/FlymeConfirmPasswordView;Z)Z

    .line 554
    iget-object v0, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$7;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v0}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$400(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/meizu/findphone/FindPhoneAbstract;->processLeftTimes(Z)I

    move-result v0

    .line 555
    .local v0, "leftTimes":I
    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_4c

    iget-object v3, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$7;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v3}, Lcom/android/server/policy/FlymeConfirmPasswordView;->hasFlymeAccount()Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$7;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v3}, Lcom/android/server/policy/FlymeConfirmPasswordView;->isFindPhoneEnabled()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 556
    iget-object v3, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$7;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v3}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0xa10007e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$7;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v4}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$100(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/widget/ShutdownLockView;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    if-gez v0, :cond_3d

    move v6, v1

    goto :goto_3e

    :cond_3d
    move v6, v0

    :goto_3e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/meizu/widget/ShutdownLockView;->setTip(Ljava/lang/String;)V

    .line 558
    .end local v3  # "text":Ljava/lang/String;
    goto :goto_62

    .line 559
    :cond_4c
    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$7;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$100(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/widget/ShutdownLockView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$7;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-virtual {v3}, Lcom/android/server/policy/FlymeConfirmPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xa10002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/widget/ShutdownLockView;->setTip(Ljava/lang/String;)V

    .line 561
    :goto_62
    iget-object v1, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$7;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v1}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$100(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/widget/ShutdownLockView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/meizu/widget/ShutdownLockView;->setEable(Z)V

    .line 562
    return-void
.end method

.method public onTick(J)V
    .registers 12
    .param p1, "millisUntilFinished"  # J

    .line 537
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 538
    .local v0, "secondsRemaining":I
    if-lez v0, :cond_41

    .line 539
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x3c

    if-le v0, v3, :cond_2d

    .line 540
    div-int/lit8 v3, v0, 0x3c

    .line 541
    .local v3, "minute":I
    rem-int/lit8 v4, v0, 0x3c

    .line 542
    .local v4, "second":I
    iget-object v5, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$7;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v5}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$100(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/widget/ShutdownLockView;

    move-result-object v5

    const v6, 0xa100078

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 543
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    .line 542
    invoke-virtual {v5, v6, v7}, Lcom/meizu/widget/ShutdownLockView;->setTip(I[Ljava/lang/Object;)V

    .line 544
    .end local v3  # "minute":I
    .end local v4  # "second":I
    goto :goto_41

    .line 545
    :cond_2d
    iget-object v3, p0, Lcom/android/server/policy/FlymeConfirmPasswordView$7;->this$0:Lcom/android/server/policy/FlymeConfirmPasswordView;

    invoke-static {v3}, Lcom/android/server/policy/FlymeConfirmPasswordView;->access$100(Lcom/android/server/policy/FlymeConfirmPasswordView;)Lcom/meizu/widget/ShutdownLockView;

    move-result-object v3

    const v4, 0xa100077

    new-array v2, v2, [Ljava/lang/Object;

    .line 546
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    .line 545
    invoke-virtual {v3, v4, v2}, Lcom/meizu/widget/ShutdownLockView;->setTip(I[Ljava/lang/Object;)V

    .line 549
    :cond_41
    :goto_41
    return-void
.end method
