.class Lcom/android/systemui/keyguard/KeyguardViewMediator$5;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


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

    .line 1737
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1740
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    const-string p1, "seq"

    .line 1741
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1742
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mDelayedShowingSequence = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1743
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardViewMediator"

    .line 1742
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 1745
    :try_start_3a
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result p2

    if-ne p2, p1, :cond_48

    .line 1746
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1748
    :cond_48
    monitor-exit v1

    goto :goto_7c

    :catchall_4a
    move-exception p0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_4a

    throw p0

    .line 1749
    :cond_4d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7c

    const-string p1, "seq"

    .line 1750
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.intent.extra.USER_ID"

    .line 1751
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_7c

    .line 1753
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 1754
    :try_start_6a
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v1

    if-ne v1, p1, :cond_77

    .line 1755
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3700(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)V

    .line 1757
    :cond_77
    monitor-exit v0

    goto :goto_7c

    :catchall_79
    move-exception p0

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_6a .. :try_end_7b} :catchall_79

    throw p0

    :cond_7c
    :goto_7c
    return-void
.end method
