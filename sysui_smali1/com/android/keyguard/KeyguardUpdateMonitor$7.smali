.class Lcom/android/keyguard/KeyguardUpdateMonitor$7;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .registers 2

    .line 1207
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 1212
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1213
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x12d

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_b4

    :cond_19
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    .line 1214
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 1215
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x13d

    .line 1216
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 1215
    invoke-virtual {v0, v2, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b4

    :cond_42
    const-string p2, "com.android.facelock.FACE_UNLOCK_STARTED"

    .line 1217
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x147

    if-eqz p2, :cond_6d

    const-string p1, "KeyguardUpdateMonitor.mBroadcastAllReceiver#onReceive ACTION_FACE_UNLOCK_STARTED"

    .line 1218
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1219
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p2

    const/4 v1, 0x1

    .line 1220
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    .line 1219
    invoke-virtual {p2, v0, v1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1221
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_b4

    :cond_6d
    const-string p2, "com.android.facelock.FACE_UNLOCK_STOPPED"

    .line 1222
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8d

    .line 1223
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p2

    .line 1224
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    .line 1223
    invoke-virtual {p2, v0, v1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b4

    :cond_8d
    const-string p2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 1226
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a1

    .line 1227
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x135

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b4

    :cond_a1
    const-string p2, "android.intent.action.USER_UNLOCKED"

    .line 1228
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 1229
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$7;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x14e

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b4
    :goto_b4
    return-void
.end method
