.class Lcom/android/systemui/keyguard/KeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .registers 2

    .line 611
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeCustomMessage()Ljava/lang/CharSequence;
    .registers 3

    .line 746
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 747
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3202(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBouncerPromptReason()I
    .registers 6

    .line 722
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 723
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/app/trust/TrustManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/trust/TrustManager;->isTrustUsuallyManaged(I)Z

    move-result v1

    .line 724
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricsPossible(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_21

    if-eqz v2, :cond_1f

    goto :goto_21

    :cond_1f
    move v2, v3

    goto :goto_22

    :cond_21
    :goto_21
    move v2, v4

    .line 726
    :goto_22
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 727
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p0

    .line 728
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    if-eqz v2, :cond_39

    .line 730
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result p0

    if-nez p0, :cond_39

    return v4

    :cond_39
    if-eqz v2, :cond_41

    and-int/lit8 p0, v0, 0x10

    if-eqz p0, :cond_41

    const/4 p0, 0x2

    return p0

    :cond_41
    if-eqz v2, :cond_49

    and-int/lit8 p0, v0, 0x2

    if-eqz p0, :cond_49

    const/4 p0, 0x3

    return p0

    :cond_49
    if-eqz v1, :cond_51

    and-int/lit8 p0, v0, 0x4

    if-eqz p0, :cond_51

    const/4 p0, 0x4

    return p0

    :cond_51
    if-eqz v2, :cond_59

    and-int/lit8 p0, v0, 0x8

    if-eqz p0, :cond_59

    const/4 p0, 0x5

    return p0

    :cond_59
    return v3
.end method

.method public isScreenOn()Z
    .registers 1

    .line 717
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result p0

    return p0
.end method

.method public keyguardDone(ZI)V
    .registers 4

    .line 620
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p2, v0, :cond_7

    return-void

    .line 624
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    if-eqz p1, :cond_19

    .line 627
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulStrongAuthUnlockAttempt()V

    :cond_19
    return-void
.end method

.method public keyguardDoneDrawing()V
    .registers 2

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDoneDrawing"

    .line 634
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 635
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 636
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public keyguardDonePending(ZI)V
    .registers 5

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDonePending"

    .line 646
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 647
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 648
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 652
    :cond_f
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 654
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p2, p2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateKeyguardDonePending(Z)V

    if-eqz p1, :cond_33

    .line 656
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulStrongAuthUnlockAttempt()V

    .line 659
    :cond_33
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1802(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 660
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1902(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 661
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 662
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xd

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 664
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public keyguardGone()V
    .registers 3

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardGone"

    .line 669
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    .line 672
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 673
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 674
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2402(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 675
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setReceiveVoiceAction(Z)V

    .line 676
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2502(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 677
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2602(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 678
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/content/Intent;)Landroid/content/Intent;

    .line 680
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onBouncerVisiblityChanged(Z)V
    .registers 3

    .line 705
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 706
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 707
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onCancelClicked()V
    .registers 1

    .line 700
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onCancelClicked()V

    return-void
.end method

.method public playTrustedSound()V
    .registers 1

    .line 712
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public readyForKeyguardDone()V
    .registers 3

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#readyForKeyguardDone"

    .line 685
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 687
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 688
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 690
    :cond_18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public resetKeyguard()V
    .registers 1

    .line 695
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public resetVoiceReceiveState()V
    .registers 2

    .line 754
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2402(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    return-void
.end method

.method public setNeedsInput(Z)V
    .registers 2

    .line 641
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNeedsInput(Z)V

    return-void
.end method

.method public userActivity()V
    .registers 1

    .line 615
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    return-void
.end method
