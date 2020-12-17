.class Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;


# direct methods
.method constructor <init>(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;)V
    .registers 2
    .param p1, "this$1"  # Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    .line 1162
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1166
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1167
    :try_start_9
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->access$402(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;Z)Z

    .line 1168
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    invoke-virtual {v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I

    move-result v1

    .line 1169
    .local v1, "newRotation":I
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_20

    .line 1170
    if-ltz v1, :cond_1f

    .line 1171
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    iget-object v0, v0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 1173
    :cond_1f
    return-void

    .line 1169
    .end local v1  # "newRotation":I
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method
