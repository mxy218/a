.class final Lcom/android/server/contentcapture/RemoteContentCaptureService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "RemoteContentCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/contentcapture/RemoteContentCaptureService$ContentCaptureServiceCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "Lcom/android/server/contentcapture/RemoteContentCaptureService;",
        "Landroid/service/contentcapture/IContentCaptureService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIdleUnbindTimeoutMs:I

.field private final mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

.field private final mServerCallback:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/contentcapture/IContentCaptureServiceCallback;ILcom/android/server/contentcapture/ContentCapturePerUserService;ZZI)V
    .registers 21

    .line 53
    move-object v10, p0

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    .line 55
    if-eqz p7, :cond_a

    const/high16 v0, 0x400000

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move v7, v0

    const/4 v9, 0x2

    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    .line 57
    move-object/from16 v0, p6

    iput-object v0, v10, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 58
    invoke-interface {p4}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mServerCallback:Landroid/os/IBinder;

    .line 59
    move/from16 v0, p9

    iput v0, v10, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mIdleUnbindTimeoutMs:I

    .line 62
    invoke-virtual {p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->ensureBoundLocked()V

    .line 63
    return-void
.end method

.method static synthetic lambda$onActivityLifecycleEvent$4(Landroid/service/contentcapture/ActivityEvent;Landroid/service/contentcapture/IContentCaptureService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentCaptureService;->onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    return-void
.end method

.method static synthetic lambda$onActivitySnapshotRequest$2(ILandroid/service/contentcapture/SnapshotData;Landroid/service/contentcapture/IContentCaptureService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-interface {p2, p0, p1}, Landroid/service/contentcapture/IContentCaptureService;->onActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V

    return-void
.end method

.method static synthetic lambda$onDataRemovalRequest$3(Landroid/view/contentcapture/DataRemovalRequest;Landroid/service/contentcapture/IContentCaptureService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentCaptureService;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    return-void
.end method

.method static synthetic lambda$onSessionFinished$1(ILandroid/service/contentcapture/IContentCaptureService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentCaptureService;->onSessionFinished(I)V

    return-void
.end method

.method static synthetic lambda$onSessionStarted$0(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;ILandroid/service/contentcapture/IContentCaptureService;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    move-object v0, p5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/service/contentcapture/IContentCaptureService;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method


# virtual methods
.method public ensureBoundLocked()V
    .registers 1

    .line 102
    invoke-virtual {p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleBind()V

    .line 103
    return-void
.end method

.method protected bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureService;

    move-result-object p1

    return-object p1
.end method

.method protected getServiceInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureService;
    .registers 2

    .line 67
    invoke-static {p1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureService;

    move-result-object p1

    return-object p1
.end method

.method protected getTimeoutIdleBindMillis()J
    .registers 3

    .line 72
    iget v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mIdleUnbindTimeoutMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected handleOnConnectedStateChanged(Z)V
    .registers 6

    .line 77
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->getTimeoutIdleBindMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 78
    invoke-virtual {p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleUnbind()V

    .line 81
    :cond_f
    if-eqz p1, :cond_32

    .line 83
    :try_start_11
    iget-object v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mService:Landroid/os/IInterface;

    check-cast v0, Landroid/service/contentcapture/IContentCaptureService;

    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mServerCallback:Landroid/os/IBinder;

    sget-boolean v2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    invoke-interface {v0, v1, v2, v3}, Landroid/service/contentcapture/IContentCaptureService;->onConnected(Landroid/os/IBinder;ZZ)V

    .line 84
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_2b

    .line 89
    :try_start_24
    iget-object v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onConnected()V

    .line 90
    nop

    .line 89
    goto :goto_3f

    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onConnected()V

    throw v0

    .line 92
    :cond_32
    iget-object v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mService:Landroid/os/IInterface;

    check-cast v0, Landroid/service/contentcapture/IContentCaptureService;

    invoke-interface {v0}, Landroid/service/contentcapture/IContentCaptureService;->onDisconnected()V

    .line 93
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3f} :catch_40

    .line 98
    :goto_3f
    goto :goto_5f

    .line 96
    :catch_40
    move-exception v0

    .line 97
    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception calling onConnectedStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_5f
    return-void
.end method

.method public onActivityLifecycleEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .registers 3

    .line 152
    new-instance v0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$yRaGuMutdbjMq9h32e3TC2_1a_A;

    invoke-direct {v0, p1}, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$yRaGuMutdbjMq9h32e3TC2_1a_A;-><init>(Landroid/service/contentcapture/ActivityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 153
    return-void
.end method

.method public onActivitySnapshotRequest(ILandroid/service/contentcapture/SnapshotData;)V
    .registers 4

    .line 136
    new-instance v0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$WZi4-GWL57wurriOS0cLTQHXrS8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$WZi4-GWL57wurriOS0cLTQHXrS8;-><init>(ILandroid/service/contentcapture/SnapshotData;)V

    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 137
    return-void
.end method

.method public onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 3

    .line 143
    new-instance v0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$haMfPWsaVUWwKcAPgM3AadAkvOQ;

    invoke-direct {v0, p1}, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$haMfPWsaVUWwKcAPgM3AadAkvOQ;-><init>(Landroid/view/contentcapture/DataRemovalRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 144
    iget-object p1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mComponentName:Landroid/content/ComponentName;

    const/4 v0, 0x5

    invoke-static {v0, p1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    .line 146
    return-void
.end method

.method public onSessionFinished(I)V
    .registers 9

    .line 124
    new-instance v0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$QbbzaxOFnxJI34vQptxzLE9Vvog;

    invoke-direct {v0, p1}, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$QbbzaxOFnxJI34vQptxzLE9Vvog;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 126
    nop

    .line 128
    invoke-virtual {p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 126
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 130
    return-void
.end method

.method public onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .registers 13

    .line 111
    new-instance v6, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$PMsA3CmwChlM0Qy__Uy6Yr5CFzk;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$PMsA3CmwChlM0Qy__Uy6Yr5CFzk;-><init>(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    invoke-virtual {p0, v6}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 114
    nop

    .line 116
    invoke-virtual {p0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureContext;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 114
    const/4 v1, 0x1

    const/4 v5, 0x0

    move v0, p2

    move v2, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 117
    return-void
.end method
