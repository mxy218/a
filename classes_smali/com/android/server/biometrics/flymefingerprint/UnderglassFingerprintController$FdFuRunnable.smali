.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;
.super Ljava/lang/Object;
.source "UnderglassFingerprintController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FdFuRunnable"
.end annotation


# instance fields
.field final fd:Z

.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V
    .registers 3
    .param p2, "down"  # Z

    .line 1140
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    iput-boolean p2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->fd:Z

    .line 1142
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1146
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1147
    :try_start_7
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_2f

    iget-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->fd:Z

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1148
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "reject FD when fingerprint is authenticating."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    monitor-exit v0

    return-void

    .line 1152
    :cond_2f
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    iget-boolean v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->fd:Z

    invoke-static {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$502(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)Z

    .line 1153
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->removeMessages(I)V

    .line 1154
    iget-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->fd:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_f9

    .line 1155
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V

    .line 1156
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v1, :cond_6b

    .line 1157
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v5}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v5, 0x7d0

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1160
    :cond_6b
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3700(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Landroid/scene/Scene;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 1161
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/HBMController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->boostFP()V

    .line 1162
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    const/16 v2, 0x647

    invoke-static {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;I)V

    .line 1163
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->updateFingerprintView(Z)V

    .line 1164
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setRefreshViewEnable(Z)V

    .line 1165
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3900(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v2

    if-nez v2, :cond_b3

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$4000(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v2

    if-eqz v2, :cond_b1

    goto :goto_b3

    :cond_b1
    move v2, v4

    goto :goto_b4

    :cond_b3
    :goto_b3
    move v2, v3

    :goto_b4
    invoke-static {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1502(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)Z

    .line 1166
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 1168
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$4100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V

    .line 1169
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2000(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-nez v1, :cond_dc

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$4200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-nez v1, :cond_dc

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$4300(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 1170
    :cond_dc
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$4400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V

    .line 1173
    :cond_e1
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2000(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 1174
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1, v3, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;II)I

    .line 1176
    :cond_ee
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/HBMController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->startWaitForCaptureFingerprintRunnable()V

    goto/16 :goto_1b7

    .line 1178
    :cond_f9
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3900(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-eqz v1, :cond_10e

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 1180
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-virtual {v1, v4, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setAuthenticated(ZZ)V

    .line 1182
    :cond_10e
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setRefreshViewEnable(Z)V

    .line 1183
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->updateFingerprintView(Z)V

    .line 1184
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$4500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 1185
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    move-result-object v1

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-virtual {v1, v2, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->animateImageAlpha(FI)V

    .line 1187
    :cond_13b
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$4600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    .line 1188
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$4100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V

    .line 1189
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V

    .line 1190
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-eqz v1, :cond_15f

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-nez v1, :cond_15f

    .line 1191
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1, v4, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1700(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;IZ)V

    .line 1193
    :cond_15f
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2000(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-eqz v1, :cond_16d

    .line 1194
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    const/4 v2, 0x2

    invoke-static {v1, v2, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;II)I

    .line 1197
    :cond_16d
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-nez v1, :cond_17d

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3900(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 1198
    :cond_17d
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$4200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-nez v1, :cond_1b2

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$4300(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-nez v1, :cond_1b2

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2000(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-eqz v1, :cond_196

    goto :goto_1b2

    .line 1200
    :cond_196
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$4700(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-nez v1, :cond_1a6

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$4800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 1201
    :cond_1a6
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/HBMController;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->opAod(Ljava/lang/String;)V

    goto :goto_1b7

    .line 1199
    :cond_1b2
    :goto_1b2
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FdFuRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1, v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$4400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V

    .line 1206
    :cond_1b7
    :goto_1b7
    monitor-exit v0

    .line 1207
    return-void

    .line 1206
    :catchall_1b9
    move-exception v1

    monitor-exit v0
    :try_end_1bb
    .catchall {:try_start_7 .. :try_end_1bb} :catchall_1b9

    throw v1
.end method
