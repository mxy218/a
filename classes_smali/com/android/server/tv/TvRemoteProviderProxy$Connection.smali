.class final Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
.super Ljava/lang/Object;
.source "TvRemoteProviderProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Connection"
.end annotation


# instance fields
.field private final mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

.field private final mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

.field final synthetic this$0:Lcom/android/server/tv/TvRemoteProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/media/tv/ITvRemoteProvider;)V
    .registers 3

    .line 276
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    .line 278
    new-instance p1, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    invoke-direct {p1, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    .line 279
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$200(Lcom/android/server/tv/TvRemoteProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$2;

    invoke-direct {v1, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$2;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method

.method clearInputBridge(Landroid/os/IBinder;)V
    .registers 7

    .line 378
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 379
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_5b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_5b

    .line 380
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 381
    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": clearInputBridge, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_7d

    .line 386
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 387
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->clearInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_56

    .line 390
    :cond_51
    :try_start_51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 391
    nop

    .line 392
    goto :goto_7b

    .line 390
    :catchall_56
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 393
    :cond_5b
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 394
    const-string p1, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearInputBridge, Invalid connection or incorrect uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_7b
    :goto_7b
    monitor-exit v0

    .line 400
    return-void

    .line 399
    :catchall_7d
    move-exception p1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_51 .. :try_end_7f} :catchall_7d

    throw p1
.end method

.method closeInputBridge(Landroid/os/IBinder;)V
    .registers 7

    .line 353
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 354
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_5b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_5b

    .line 355
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 356
    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": closeInputBridge, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_7d

    .line 361
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 362
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->closeInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_56

    .line 365
    :cond_51
    :try_start_51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    nop

    .line 367
    goto :goto_7b

    .line 365
    :catchall_56
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 368
    :cond_5b
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 369
    const-string p1, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeInputBridge, Invalid connection or incorrect uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_7b
    :goto_7b
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_7d
    move-exception p1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_51 .. :try_end_7f} :catchall_7d

    throw p1
.end method

.method public dispose()V
    .registers 3

    .line 300
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "TvRemoteProvProxy"

    const-string v1, "Connection::dispose()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_d
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v0}, Landroid/media/tv/ITvRemoteProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 302
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    invoke-virtual {v0}, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->dispose()V

    .line 303
    return-void
.end method

.method public onInputBridgeConnected(Landroid/os/IBinder;)V
    .registers 5

    .line 307
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v0

    const-string v1, "TvRemoteProvProxy"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onInputBridgeConnected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvRemoteProvider;->onInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22

    .line 312
    goto :goto_28

    .line 310
    :catch_22
    move-exception p1

    .line 311
    const-string v0, "Failed to deliver onInputBridgeConnected. "

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    :goto_28
    return-void
.end method

.method openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 18

    .line 327
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 328
    :try_start_8
    iget-object v2, v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v2

    if-ne v2, v0, :cond_70

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v3

    if-ne v2, v3, :cond_70

    .line 329
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 330
    const-string v2, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": openInputBridge, token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v8, p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 329
    :cond_46
    move-object v4, p1

    move-object v8, p2

    .line 333
    :goto_48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_4c
    .catchall {:try_start_8 .. :try_end_4c} :catchall_93

    .line 335
    :try_start_4c
    iget-object v5, v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v5}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v5

    if-eqz v5, :cond_66

    .line 336
    iget-object v5, v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v5}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v5 .. v11}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->openInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_6b

    .line 340
    :cond_66
    :try_start_66
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    nop

    .line 342
    goto :goto_91

    .line 340
    :catchall_6b
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 343
    :cond_70
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 344
    const-string v0, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openInputBridge, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_91
    :goto_91
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_93
    move-exception v0

    monitor-exit v1
    :try_end_95
    .catchall {:try_start_66 .. :try_end_95} :catchall_93

    throw v0
.end method

.method public register()Z
    .registers 4

    .line 282
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "TvRemoteProvProxy"

    const-string v1, "Connection::register()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_d
    const/4 v0, 0x0

    :try_start_e
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v1}, Landroid/media/tv/ITvRemoteProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 285
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    invoke-interface {v1, v2}, Landroid/media/tv/ITvRemoteProvider;->setRemoteServiceInputSink(Landroid/media/tv/ITvRemoteServiceInput;)V

    .line 286
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$200(Lcom/android/server/tv/TvRemoteProviderProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$1;

    invoke-direct {v2, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$1;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2c} :catch_2e

    .line 292
    const/4 v0, 0x1

    return v0

    .line 293
    :catch_2e
    move-exception v1

    .line 294
    invoke-virtual {p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->binderDied()V

    .line 296
    return v0
.end method

.method sendKeyDown(Landroid/os/IBinder;I)V
    .registers 8

    .line 425
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 426
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_3c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_3c

    .line 431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_5f

    .line 433
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 434
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendKeyDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 438
    :cond_32
    :try_start_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    nop

    .line 440
    goto :goto_5d

    .line 438
    :catchall_37
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 441
    :cond_3c
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 442
    const-string p1, "TvRemoteProvProxy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendKeyDown, Invalid connection or incorrect uid: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 442
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_5d
    :goto_5d
    monitor-exit v0

    .line 448
    return-void

    .line 447
    :catchall_5f
    move-exception p1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method sendKeyUp(Landroid/os/IBinder;I)V
    .registers 8

    .line 451
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 452
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_3c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_3c

    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_5f

    .line 459
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 460
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendKeyUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 463
    :cond_32
    :try_start_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 464
    nop

    .line 465
    goto :goto_5d

    .line 463
    :catchall_37
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 466
    :cond_3c
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 467
    const-string p1, "TvRemoteProvProxy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendKeyUp, Invalid connection or incorrect uid: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 467
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_5d
    :goto_5d
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_5f
    move-exception p1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method sendPointerDown(Landroid/os/IBinder;III)V
    .registers 15

    .line 476
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 477
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_40

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_40

    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_63

    .line 484
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 485
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;III)V
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_3b

    .line 489
    :cond_36
    :try_start_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 490
    nop

    .line 491
    goto :goto_61

    .line 489
    :catchall_3b
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 492
    :cond_40
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 493
    const-string p1, "TvRemoteProvProxy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sendPointerDown, Invalid connection or incorrect uid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 493
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_61
    :goto_61
    monitor-exit v0

    .line 499
    return-void

    .line 498
    :catchall_63
    move-exception p1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_36 .. :try_end_65} :catchall_63

    throw p1
.end method

.method sendPointerSync(Landroid/os/IBinder;)V
    .registers 7

    .line 528
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 529
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_3c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_3c

    .line 534
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_5f

    .line 536
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 537
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerSync(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 540
    :cond_32
    :try_start_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 541
    nop

    .line 542
    goto :goto_5d

    .line 540
    :catchall_37
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 543
    :cond_3c
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 544
    const-string p1, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendPointerSync, Invalid connection or incorrect uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_5d
    :goto_5d
    monitor-exit v0

    .line 550
    return-void

    .line 549
    :catchall_5f
    move-exception p1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method sendPointerUp(Landroid/os/IBinder;I)V
    .registers 8

    .line 502
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 503
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_3c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_3c

    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_5f

    .line 510
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 511
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 515
    :cond_32
    :try_start_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    nop

    .line 517
    goto :goto_5d

    .line 515
    :catchall_37
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 518
    :cond_3c
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 519
    const-string p1, "TvRemoteProvProxy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendPointerUp, Invalid connection or incorrect uid: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 519
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_5d
    :goto_5d
    monitor-exit v0

    .line 525
    return-void

    .line 524
    :catchall_5f
    move-exception p1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method sendTimestamp(Landroid/os/IBinder;J)V
    .registers 9

    .line 403
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 404
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_3c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_3c

    .line 405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_5f

    .line 407
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 408
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1, p2, p3}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendTimeStamp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;J)V
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_37

    .line 412
    :cond_32
    :try_start_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    nop

    .line 414
    goto :goto_5d

    .line 412
    :catchall_37
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 415
    :cond_3c
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 416
    const-string p1, "TvRemoteProvProxy"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sendTimeStamp, Invalid connection or incorrect uid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 416
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_5d
    :goto_5d
    monitor-exit v0

    .line 422
    return-void

    .line 421
    :catchall_5f
    move-exception p1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_5f

    throw p1
.end method
