.class public Lcom/android/keyguard/KeyguardUpdateMonitor$FindPhoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FindPhoneReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2983
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 2986
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3000()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 2987
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3000()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/findphone/FindPhoneAbstract;->isFindphoneLocked()Z

    move-result p0

    .line 2988
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6100()Z

    move-result v0

    if-eq v0, p0, :cond_20

    .line 2989
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6102(Z)Z

    .line 2990
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6100()Z

    move-result p0

    if-eqz p0, :cond_20

    .line 2991
    invoke-static {p1}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectFlymeLock(Landroid/content/Context;)V

    .line 2995
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FindPhoneReceiver onReceive mFindPhoneLocked = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6100()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FindPhone"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6200()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    if-nez p0, :cond_4b

    const-string p0, "User = -2"

    .line 2997
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "KeyguardUpdateMonitor is null and return"

    .line 2998
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3001
    :cond_4b
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6200()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    if-nez p0, :cond_5b

    const-string p0, "handler is null and return"

    .line 3003
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3006
    :cond_5b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "meizu.intent.action.FLYME_FINDPHONE_LOCK"

    .line 3007
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 3008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive ACTION_SECURITY_LOCK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "LockType"

    .line 3009
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "keyguard"

    .line 3010
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 3011
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "flyme_lock_reason"

    .line 3012
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3013
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 p1, 0x202

    .line 3014
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3015
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_be

    :cond_a5
    const-string p1, "meizu.intent.action.FLYME_FINDPHONE_UNLOCK"

    .line 3016
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_be

    const-string p1, "receive ACTION_SECURITY_UNLOCK"

    .line 3017
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x203

    .line 3018
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3019
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_be
    :goto_be
    return-void
.end method
