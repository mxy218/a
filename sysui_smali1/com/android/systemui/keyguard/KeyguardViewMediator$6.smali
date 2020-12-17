.class Lcom/android/systemui/keyguard/KeyguardViewMediator$6;
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

    .line 1763
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 1767
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1769
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 1770
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 1771
    :try_start_14
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3802(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 1772
    monitor-exit v0

    goto/16 :goto_2ce

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1c

    throw p0

    :cond_1f
    const-string v0, "com.meizu.keyguard.dismissfingerprint"

    .line 1775
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4a

    .line 1776
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCanSetFingerprintState()Z

    move-result p1

    if-eqz p1, :cond_2ce

    const-string p1, "KeyguardViewMediator"

    const-string p2, "receive dismissfingerprint broadcast"

    .line 1777
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    goto/16 :goto_2ce

    :cond_4a
    const-string v0, "com.meizu.keyguard.showfingerprint"

    .line 1781
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1782
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCanSetFingerprintState()Z

    move-result p1

    if-eqz p1, :cond_2ce

    const-string p1, "KeyguardViewMediator"

    const-string p2, "receive showfingerprint broadcast"

    .line 1783
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    goto/16 :goto_2ce

    :cond_74
    const-string v0, "com.meizu.keyguard.shutdown_or_reboot"

    .line 1786
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1787
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setShutdownOrRebootState(Z)V

    goto/16 :goto_2ce

    :cond_89
    const-string v0, "com.flyme.systemui.fp_move"

    .line 1788
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1789
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->notifyFPIconMove()V

    .line 1790
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->updateContentPosition()V

    .line 1791
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->updateFPAnimationPosition()V

    goto/16 :goto_2ce

    :cond_b4
    const-string v0, "com.flyme.aod.action.fingerprint_icon_visible_change"

    .line 1792
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const-string p1, "fingerprint_icon_visible"

    .line 1793
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_dc

    .line 1795
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->stopFPIconMove()V

    .line 1796
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    goto/16 :goto_2ce

    :cond_dc
    if-ne p1, v1, :cond_2ce

    .line 1798
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->notifyFPIconMove()V

    .line 1799
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    goto/16 :goto_2ce

    :cond_f6
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 1801
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_188

    .line 1802
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3902(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 1803
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1804
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_123

    .line 1808
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result p1

    if-eqz p1, :cond_123

    .line 1809
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p2, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1813
    :cond_123
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBootCompleteTime()I

    move-result p1

    .line 1814
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p2, p2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldFaceRecognitionRun()Z

    move-result p2

    .line 1815
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    .line 1816
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v2

    .line 1817
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v3, v3, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasLockPassword()Z

    move-result v3

    if-eqz v3, :cond_177

    if-nez p2, :cond_169

    if-eqz v0, :cond_177

    :cond_169
    const/4 v3, 0x3

    if-ge p1, v3, :cond_177

    if-nez v2, :cond_177

    .line 1820
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setIndicateVisible(Z)V

    :cond_177
    if-nez p2, :cond_17b

    if-eqz v0, :cond_2ce

    .line 1823
    :cond_17b
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->recordBootComplete()V

    goto/16 :goto_2ce

    :cond_188
    const-string v0, "com.meizu.voiceassistant.keyguard.openapp"

    .line 1826
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1f9

    const-string p1, "pending_intent"

    .line 1827
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    const-string v0, "pending_intent_list"

    .line 1828
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: pendingIntent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",intents="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "KeyguardViewMediator"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2402(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    if-eqz v0, :cond_1cf

    .line 1832
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2602(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1833
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2502(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    goto :goto_1db

    :cond_1cf
    if-eqz p1, :cond_1db

    .line 1835
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2502(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 1836
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2602(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1838
    :cond_1db
    :goto_1db
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const-string v0, "extra_intent_param"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1839
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setReceiveVoiceAction(Z)V

    goto/16 :goto_2ce

    :cond_1f9
    const-string v0, "com.meizu.action.PASSWORD_HAVE_CLEARD"

    .line 1840
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_220

    .line 1841
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result p1

    if-nez p1, :cond_20a

    return-void

    :cond_20a
    const-string p1, "demoMode"

    const-string p2, "receive DEMO_MODE_ACTION_CLEAR_LOCK and reset "

    .line 1843
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2ce

    .line 1846
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_2ce

    :cond_220
    const-string v0, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_PLAYVIDEO"

    .line 1848
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28d

    .line 1849
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result p1

    if-nez p1, :cond_231

    return-void

    .line 1851
    :cond_231
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1852
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result p2

    if-eqz p2, :cond_267

    .line 1853
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->wakeUp()V

    const-string p2, "android.intent.action.VIEW"

    .line 1854
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.meizu.media.video"

    const-string v0, "com.meizu.media.video.experience.ExperienceVideoActivity"

    .line 1855
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0xb

    const-string v0, "playSource"

    .line 1856
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1857
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result p2

    if-nez p2, :cond_26e

    .line 1858
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const-string/jumbo v0, "video"

    invoke-static {p2, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4602(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_26e

    :cond_267
    const-string p2, "com.meizu.demo.startover"

    const-string v0, "com.meizu.demo.startover.demo"

    .line 1861
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_26e
    :goto_26e
    const/high16 p2, 0x10000000

    .line 1863
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1864
    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p2, p2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v2, v2}, Lcom/meizu/keyguard/MzGestureHelper;->launchFastActivity(Landroid/content/Context;Landroid/content/Intent;ZZ)Z

    .line 1865
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    const-wide/16 p1, 0x1388

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-string p0, "demoMode"

    const-string p1, "receive DELAYED_PLAYVIDEO_ACTION and start playIntent"

    .line 1866
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ce

    :cond_28d
    const-string v0, "meizu.intent.action.ACTION_SHOW_LOCK"

    .line 1867
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2ce

    .line 1868
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const-string v0, "lock_reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4602(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;

    .line 1869
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "lock reason : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardViewMediator"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result p1

    if-eqz p1, :cond_2c9

    .line 1871
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1873
    :cond_2c9
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :cond_2ce
    :goto_2ce
    return-void
.end method
