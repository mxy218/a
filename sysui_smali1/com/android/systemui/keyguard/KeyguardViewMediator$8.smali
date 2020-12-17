.class Lcom/android/systemui/keyguard/KeyguardViewMediator$8;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 2202
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(I)V
    .registers 3

    .line 2238
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->keyguardGoingAway(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "Error while calling WindowManager"

    .line 2240
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "KeyguardViewMediator.mKeyGuardGoingAwayRunnable"

    .line 2205
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator"

    const-string v1, "keyguardGoingAway"

    .line 2206
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->keyguardGoingAway()V

    .line 2210
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDisableWindowAnimationsForUnlock()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2211
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_34

    :cond_32
    const/4 v0, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v0, 0x2

    .line 2215
    :goto_35
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isGoingToNotificationShade()Z

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2216
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v1

    if-eqz v1, :cond_53

    :cond_51
    or-int/lit8 v0, v0, 0x1

    .line 2219
    :cond_53
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isUnlockWithWallpaper()Z

    move-result v1

    if-eqz v1, :cond_61

    or-int/lit8 v0, v0, 0x4

    .line 2222
    :cond_61
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldSubtleWindowAnimationsForUnlock()Z

    move-result v1

    if-eqz v1, :cond_6f

    or-int/lit8 v0, v0, 0x8

    .line 2227
    :cond_6f
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 2228
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardGoingAway(Z)V

    .line 2236
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$6800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/UiOffloadThread;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$8$EipbLSbtoADObSuaQlvdBFH2GzM;

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$8$EipbLSbtoADObSuaQlvdBFH2GzM;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2243
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
