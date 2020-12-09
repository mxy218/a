.class final Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RecordingActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecorderDeathHandler"
.end annotation


# static fields
.field static sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;


# instance fields
.field private final mRecorderToken:Landroid/os/IBinder;

.field final mRiid:I


# direct methods
.method constructor <init>(ILandroid/os/IBinder;)V
    .registers 3

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRiid:I

    .line 506
    iput-object p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRecorderToken:Landroid/os/IBinder;

    .line 507
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 510
    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRiid:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->releaseRecorder(I)V

    .line 511
    return-void
.end method

.method init()Z
    .registers 5

    .line 515
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->mRecorderToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    .line 516
    const/4 v0, 0x1

    return v0

    .line 517
    :catch_8
    move-exception v1

    .line 518
    const-string v2, "AudioService.RecordingActivityMonitor"

    const-string v3, "Could not link to recorder death"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    return v0
.end method
