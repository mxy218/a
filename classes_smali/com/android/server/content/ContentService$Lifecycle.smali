.class public Lcom/android/server/content/ContentService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/content/ContentService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-virtual {v0, p1}, Lcom/android/server/content/ContentService;->onBootPhase(I)V

    .line 110
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-static {v0}, Lcom/android/server/content/ContentService;->access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 131
    :try_start_7
    iget-object v1, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-static {v1}, Lcom/android/server/content/ContentService;->access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public onStart()V
    .registers 4

    .line 102
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 103
    :goto_9
    new-instance v0, Lcom/android/server/content/ContentService;

    invoke-virtual {p0}, Lcom/android/server/content/ContentService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/server/content/ContentService;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    .line 104
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    const-string v1, "content"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/content/ContentService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 105
    return-void
.end method

.method public onStartUser(I)V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-virtual {v0, p1}, Lcom/android/server/content/ContentService;->onStartUser(I)V

    .line 116
    return-void
.end method

.method public onStopUser(I)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-virtual {v0, p1}, Lcom/android/server/content/ContentService;->onStopUser(I)V

    .line 126
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-virtual {v0, p1}, Lcom/android/server/content/ContentService;->onUnlockUser(I)V

    .line 121
    return-void
.end method
