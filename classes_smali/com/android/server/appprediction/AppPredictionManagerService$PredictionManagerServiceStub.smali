.class Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;
.super Landroid/app/prediction/IPredictionManager$Stub;
.source "AppPredictionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appprediction/AppPredictionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PredictionManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appprediction/AppPredictionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-direct {p0}, Landroid/app/prediction/IPredictionManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;Lcom/android/server/appprediction/AppPredictionManagerService$1;)V
    .registers 3

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V

    return-void
.end method

.method static synthetic lambda$createPredictionSession$0(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .registers 3

    .line 112
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$notifyAppTargetEvent$1(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .registers 3

    .line 119
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->notifyAppTargetEventLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    return-void
.end method

.method static synthetic lambda$notifyLaunchLocationShown$2(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .registers 4

    .line 126
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->notifyLaunchLocationShownLocked(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method static synthetic lambda$onDestroyPredictionSession$7(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .registers 2

    .line 159
    invoke-virtual {p1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$registerPredictionUpdates$4(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .registers 3

    .line 141
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method static synthetic lambda$requestPredictionUpdate$6(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .registers 2

    .line 153
    invoke-virtual {p1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->requestPredictionUpdateLocked(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$sortAppTargets$3(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .registers 4

    .line 134
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->sortAppTargetsLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method static synthetic lambda$unregisterPredictionUpdates$5(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .registers 3

    .line 147
    invoke-virtual {p2, p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->unregisterPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method private runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/appprediction/AppPredictionPerUserService;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v1}, Lcom/android/server/appprediction/AppPredictionManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 175
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 176
    invoke-static {v1}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$100(Lcom/android/server/appprediction/AppPredictionManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v1

    if-nez v1, :cond_6a

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 177
    invoke-static {v1}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$200(Lcom/android/server/appprediction/AppPredictionManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_6a

    .line 179
    :cond_2f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " expected caller to hold PACKAGE_USAGE_STATS permission"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$300()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 187
    :cond_6a
    :goto_6a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 189
    :try_start_6e
    iget-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-static {p1}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$400(Lcom/android/server/appprediction/AppPredictionManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_89

    .line 190
    :try_start_75
    iget-object v3, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-static {v3, v0}, Lcom/android/server/appprediction/AppPredictionManagerService;->access$500(Lcom/android/server/appprediction/AppPredictionManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 191
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 192
    monitor-exit p1
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_86

    .line 194
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    nop

    .line 196
    return-void

    .line 192
    :catchall_86
    move-exception p2

    :try_start_87
    monitor-exit p1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    :try_start_88
    throw p2
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_89

    .line 194
    :catchall_89
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method


# virtual methods
.method public createPredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 4

    .line 111
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$NmwmTMZXXS4S7viVNKzU2genXA8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$NmwmTMZXXS4S7viVNKzU2genXA8;-><init>(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    const-string p1, "createPredictionSession"

    invoke-direct {p0, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 113
    return-void
.end method

.method public notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .registers 4

    .line 118
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$4yDhFef-19aMlJ-Y7O6RdjSAvnk;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$4yDhFef-19aMlJ-Y7O6RdjSAvnk;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    const-string/jumbo p1, "notifyAppTargetEvent"

    invoke-direct {p0, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 120
    return-void
.end method

.method public notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 5

    .line 125
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vWB3PdxOOvPr7p0_NmoqXeH8Ros;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vWB3PdxOOvPr7p0_NmoqXeH8Ros;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    const-string/jumbo p1, "notifyLaunchLocationShown"

    invoke-direct {p0, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 127
    return-void
.end method

.method public onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 3

    .line 158
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$gV-NT40YbIbIqIJKiNGjlZGVJjc;

    invoke-direct {v0, p1}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$gV-NT40YbIbIqIJKiNGjlZGVJjc;-><init>(Landroid/app/prediction/AppPredictionSessionId;)V

    const-string/jumbo p1, "onDestroyPredictionSession"

    invoke-direct {p0, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 160
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 166
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V

    .line 167
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 168
    return-void
.end method

.method public registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 4

    .line 140
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$40EK4qcr-rG55ENTthOaXAXWDA4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$40EK4qcr-rG55ENTthOaXAXWDA4;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    const-string/jumbo p1, "registerPredictionUpdates"

    invoke-direct {p0, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 142
    return-void
.end method

.method public requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 3

    .line 152
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vSY20eQq5y5FXrxhhqOTcEmezTs;

    invoke-direct {v0, p1}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vSY20eQq5y5FXrxhhqOTcEmezTs;-><init>(Landroid/app/prediction/AppPredictionSessionId;)V

    const-string/jumbo p1, "requestPredictionUpdate"

    invoke-direct {p0, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 154
    return-void
.end method

.method public sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .registers 5

    .line 133
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$3-HMCieo6-UZfG43p_6ip1hrL0k;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$3-HMCieo6-UZfG43p_6ip1hrL0k;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    const-string/jumbo p1, "sortAppTargets"

    invoke-direct {p0, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 135
    return-void
.end method

.method public unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 4

    .line 146
    new-instance v0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$s2vrDOHz5x1TW_6jMihxp1iCAvg;

    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$s2vrDOHz5x1TW_6jMihxp1iCAvg;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    const-string/jumbo p1, "unregisterPredictionUpdates"

    invoke-direct {p0, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 148
    return-void
.end method
