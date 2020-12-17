.class final Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;
.super Landroid/os/IDumpstateListener$Stub;
.source "BugreportManagerServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/BugreportManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DumpstateListener"
.end annotation


# instance fields
.field private mDone:Z

.field private final mDs:Landroid/os/IDumpstate;

.field private final mListener:Landroid/os/IDumpstateListener;

.field final synthetic this$0:Lcom/android/server/os/BugreportManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;)V
    .registers 6
    .param p2, "listener"  # Landroid/os/IDumpstateListener;
    .param p3, "ds"  # Landroid/os/IDumpstate;

    .line 254
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-direct {p0}, Landroid/os/IDumpstateListener$Stub;-><init>()V

    .line 252
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    .line 255
    iput-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    .line 256
    iput-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDs:Landroid/os/IDumpstate;

    .line 258
    :try_start_c
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDs:Landroid/os/IDumpstate;

    invoke-interface {v0}, Landroid/os/IDumpstate;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    .line 261
    goto :goto_1e

    .line 259
    :catch_16
    move-exception p1

    .line 260
    .local p1, "e":Landroid/os/RemoteException;
    const-string v0, "BugreportManagerService"

    const-string v1, "Unable to register Death Recipient for IDumpstate"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .end local p1  # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 287
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->access$000(Lcom/android/server/os/BugreportManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 288
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    if-nez v1, :cond_1a

    .line 290
    const-string v1, "BugreportManagerService"

    const-string v2, "IDumpstate likely crashed. Notifying listener"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_26

    .line 292
    :try_start_12
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/os/IDumpstateListener;->onError(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_19
    .catchall {:try_start_12 .. :try_end_18} :catchall_26

    .line 295
    goto :goto_1a

    .line 293
    :catch_19
    move-exception v1

    .line 297
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_26

    .line 298
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDs:Landroid/os/IDumpstate;

    invoke-interface {v0}, Landroid/os/IDumpstate;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 299
    return-void

    .line 297
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public onError(I)V
    .registers 4
    .param p1, "errorCode"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->access$000(Lcom/android/server/os/BugreportManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 272
    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    .line 273
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    .line 274
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {v0, p1}, Landroid/os/IDumpstateListener;->onError(I)V

    .line 275
    return-void

    .line 273
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public onFinished()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->access$000(Lcom/android/server/os/BugreportManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 280
    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    .line 281
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    .line 282
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {v0}, Landroid/os/IDumpstateListener;->onFinished()V

    .line 283
    return-void

    .line 281
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public onMaxProgressUpdated(I)V
    .registers 2
    .param p1, "maxProgress"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    return-void
.end method

.method public onProgress(I)V
    .registers 3
    .param p1, "progress"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {v0, p1}, Landroid/os/IDumpstateListener;->onProgress(I)V

    .line 267
    return-void
.end method

.method public onProgressUpdated(I)V
    .registers 2
    .param p1, "progress"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    return-void
.end method

.method public onSectionComplete(Ljava/lang/String;III)V
    .registers 5
    .param p1, "title"  # Ljava/lang/String;
    .param p2, "status"  # I
    .param p3, "size"  # I
    .param p4, "durationMs"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    return-void
.end method
