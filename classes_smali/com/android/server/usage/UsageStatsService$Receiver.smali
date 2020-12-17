.class final Lcom/android/server/usage/UsageStatsService$Receiver;
.super Ljava/lang/Object;
.source "UsageStatsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final mKey:Ljava/lang/Object;

.field final mListener:Landroid/app/usage/IFlymeAppStatusListener;

.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/IFlymeAppStatusListener;)V
    .registers 3
    .param p2, "listener"  # Landroid/app/usage/IFlymeAppStatusListener;

    .line 371
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$Receiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsService$Receiver;->mListener:Landroid/app/usage/IFlymeAppStatusListener;

    .line 373
    invoke-interface {p2}, Landroid/app/usage/IFlymeAppStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$Receiver;->mKey:Ljava/lang/Object;

    .line 374
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$Receiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$400(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 380
    :try_start_7
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$Receiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, p0}, Lcom/android/server/usage/UsageStatsService;->access$500(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$Receiver;)V

    .line 381
    monitor-exit v0

    .line 382
    return-void

    .line 381
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getListener()Landroid/app/usage/IFlymeAppStatusListener;
    .registers 3

    .line 385
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$Receiver;->mListener:Landroid/app/usage/IFlymeAppStatusListener;

    if-eqz v0, :cond_5

    .line 386
    return-object v0

    .line 388
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
