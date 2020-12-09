.class public final Lcom/android/server/systemcaptions/SystemCaptionsManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "SystemCaptionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/systemcaptions/SystemCaptionsManagerService;",
        "Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 32
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040165

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 3

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->newServiceLocked(IZ)Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;

    move-result-object p1

    return-object p1
.end method

.method protected newServiceLocked(IZ)Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;
    .registers 5

    .line 48
    new-instance v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;

    iget-object v1, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;-><init>(Lcom/android/server/systemcaptions/SystemCaptionsManagerService;Ljava/lang/Object;ZI)V

    .line 50
    invoke-virtual {v0}, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->initializeLocked()V

    .line 51
    return-object v0
.end method

.method protected bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3

    .line 27
    check-cast p1, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->onServiceRemoved(Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;I)V

    return-void
.end method

.method protected onServiceRemoved(Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;I)V
    .registers 3

    .line 57
    iget-object p2, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 58
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->destroyLocked()V

    .line 59
    monitor-exit p2

    .line 60
    return-void

    .line 59
    :catchall_8
    move-exception p1

    monitor-exit p2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public onStart()V
    .registers 1

    .line 43
    return-void
.end method
