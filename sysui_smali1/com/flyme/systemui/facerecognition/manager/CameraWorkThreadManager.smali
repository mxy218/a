.class public Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;
.super Ljava/lang/Object;
.source "CameraWorkThreadManager.java"


# static fields
.field private static TAG:Ljava/lang/String; = "CameraWorkThreadManager"


# instance fields
.field mCurrentHandler:Landroid/os/Handler;

.field mCurrentThread:Landroid/os/HandlerThread;

.field private mStartCamerePerviewRunnable:Ljava/lang/Runnable;

.field private mStopCamerePerviewRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->mStopCamerePerviewRunnable:Ljava/lang/Runnable;

    .line 25
    iput-object p2, p0, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->mStartCamerePerviewRunnable:Ljava/lang/Runnable;

    .line 26
    new-instance p1, Landroid/os/HandlerThread;

    sget-object p2, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->mCurrentThread:Landroid/os/HandlerThread;

    .line 27
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->mCurrentThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 28
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->mCurrentThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->mCurrentHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public declared-synchronized startCamera()V
    .registers 3

    monitor-enter p0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 38
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->mCurrentHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->mStartCamerePerviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 40
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopCamera()V
    .registers 3

    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 44
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->mCurrentHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->mStopCamerePerviewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 46
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
