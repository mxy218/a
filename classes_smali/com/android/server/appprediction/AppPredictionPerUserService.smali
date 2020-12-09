.class public Lcom/android/server/appprediction/AppPredictionPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "AppPredictionPerUserService.java"

# interfaces
.implements Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/appprediction/AppPredictionPerUserService;",
        "Lcom/android/server/appprediction/AppPredictionManagerService;",
        ">;",
        "Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mSessionInfos:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mZombie:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-class v0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;Ljava/lang/Object;I)V
    .registers 4

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 62
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 69
    return-void
.end method

.method private destroyAndRebindRemoteService()V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    if-nez v0, :cond_5

    .line 270
    return-void

    .line 273
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 274
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying the old remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_12
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {v0}, Lcom/android/server/appprediction/RemoteAppPredictionService;->destroy()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 279
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 280
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    if-eqz v0, :cond_36

    .line 281
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 282
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Rebinding to the new remote service."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_31
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {v0}, Lcom/android/server/appprediction/RemoteAppPredictionService;->reconnect()V

    .line 286
    :cond_36
    return-void
.end method

.method private getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    if-nez v0, :cond_3e

    .line 317
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 318
    if-nez v0, :cond_1b

    .line 319
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/appprediction/AppPredictionManagerService;

    iget-boolean v0, v0, Lcom/android/server/appprediction/AppPredictionManagerService;->verbose:Z

    if-eqz v0, :cond_19

    .line 320
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "getRemoteServiceLocked(): not set"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_19
    const/4 v0, 0x0

    return-object v0

    .line 324
    :cond_1b
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 326
    new-instance v0, Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v5, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mUserId:I

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 328
    invoke-virtual {v1}, Lcom/android/server/appprediction/AppPredictionManagerService;->isBindInstantServiceAllowed()Z

    move-result v7

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/appprediction/AppPredictionManagerService;

    iget-boolean v8, v1, Lcom/android/server/appprediction/AppPredictionManagerService;->verbose:Z

    const-string v3, "android.service.appprediction.AppPredictionService"

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/appprediction/RemoteAppPredictionService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;ZZ)V

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 331
    :cond_3e
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    return-object v0
.end method

.method public static synthetic lambda$ot809pjFOVEJ6shAJalMZ9_QhCo(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->removeAppPredictionSessionInfo(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method private removeAppPredictionSessionInfo(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 5

    .line 305
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 306
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAppPredictionSessionInfo(): sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1d
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_20
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    monitor-exit v0

    .line 311
    return-void

    .line 310
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw p1
.end method

.method private resurrectSessionsLocked()V
    .registers 5

    .line 293
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 294
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 295
    sget-object v1, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sessions."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_31
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 300
    invoke-virtual {v1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->resurrectSessionLocked(Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    .line 301
    goto :goto_3b

    .line 302
    :cond_4b
    return-void
.end method


# virtual methods
.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 77
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    iget v2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    .line 81
    nop

    .line 85
    return-object p1

    .line 79
    :catch_e
    move-exception v0

    .line 80
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyAppTargetEventLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_9

    .line 126
    invoke-virtual {v0, p1, p2}, Lcom/android/server/appprediction/RemoteAppPredictionService;->notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    .line 128
    :cond_9
    return-void
.end method

.method public notifyLaunchLocationShownLocked(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_9

    .line 138
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/appprediction/RemoteAppPredictionService;->notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 140
    :cond_9
    return-void
.end method

.method public onConnectedStateChanged(Z)V
    .registers 5

    .line 225
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 226
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectedStateChanged(): connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1d
    if-eqz p1, :cond_3e

    .line 229
    iget-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 230
    :try_start_22
    iget-boolean v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    if-eqz v0, :cond_39

    .line 232
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    if-nez v0, :cond_33

    .line 233
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Cannot resurrect sessions because remote service is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    monitor-exit p1

    return-void

    .line 236
    :cond_33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    .line 237
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resurrectSessionsLocked()V

    .line 239
    :cond_39
    monitor-exit p1

    goto :goto_3e

    :catchall_3b
    move-exception v0

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_3b

    throw v0

    .line 241
    :cond_3e
    :goto_3e
    return-void
.end method

.method public onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_20

    .line 109
    invoke-virtual {v0, p1, p2}, Lcom/android/server/appprediction/RemoteAppPredictionService;->onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 112
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    new-instance v2, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$ot809pjFOVEJ6shAJalMZ9_QhCo;

    invoke-direct {v2, p0}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$ot809pjFOVEJ6shAJalMZ9_QhCo;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    invoke-direct {v1, p2, p1, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_20
    return-void
.end method

.method public onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_16

    .line 206
    invoke-virtual {v0, p1}, Lcom/android/server/appprediction/RemoteAppPredictionService;->onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 209
    if-eqz p1, :cond_16

    .line 210
    invoke-virtual {p1}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->destroy()V

    .line 213
    :cond_16
    return-void
.end method

.method public onFailureOrTimeout(Z)V
    .registers 5

    .line 217
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 218
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFailureOrTimeout(): timed out="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1d
    return-void
.end method

.method onPackageRestartedLocked()V
    .registers 3

    .line 262
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 263
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageRestartedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_e
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->destroyAndRebindRemoteService()V

    .line 266
    return-void
.end method

.method onPackageUpdatedLocked()V
    .registers 3

    .line 255
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 256
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPackageUpdatedLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_e
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->destroyAndRebindRemoteService()V

    .line 259
    return-void
.end method

.method public onServiceDied(Lcom/android/server/appprediction/RemoteAppPredictionService;)V
    .registers 5

    .line 245
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 246
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDied(): service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1d
    iget-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 249
    const/4 v0, 0x1

    :try_start_21
    iput-boolean v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    .line 250
    monitor-exit p1

    .line 252
    return-void

    .line 250
    :catchall_25
    move-exception v0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 45
    check-cast p1, Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onServiceDied(Lcom/android/server/appprediction/RemoteAppPredictionService;)V

    return-void
.end method

.method public registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_16

    .line 162
    invoke-virtual {v0, p1, p2}, Lcom/android/server/appprediction/RemoteAppPredictionService;->registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 165
    if-eqz p1, :cond_16

    .line 166
    invoke-virtual {p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->addCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V

    .line 169
    :cond_16
    return-void
.end method

.method public requestPredictionUpdateLocked(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_9

    .line 195
    invoke-virtual {v0, p1}, Lcom/android/server/appprediction/RemoteAppPredictionService;->requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 197
    :cond_9
    return-void
.end method

.method public sortAppTargetsLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_9

    .line 150
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/appprediction/RemoteAppPredictionService;->sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    .line 152
    :cond_9
    return-void
.end method

.method public unregisterPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_16

    .line 179
    invoke-virtual {v0, p1, p2}, Lcom/android/server/appprediction/RemoteAppPredictionService;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 181
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 182
    if-eqz p1, :cond_16

    .line 183
    invoke-virtual {p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->removeCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V

    .line 186
    :cond_16
    return-void
.end method

.method protected updateLocked(Z)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 91
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    .line 92
    if-eqz p1, :cond_f

    .line 93
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_f

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 98
    :cond_f
    return p1
.end method
