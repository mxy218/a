.class Lcom/android/server/usage/UsageStatsService$3;
.super Landroid/app/IUidObserver$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$3;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2

    .line 328
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    .line 331
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 5

    .line 322
    const/16 p2, 0x15

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/UsageStatsService$3;->onUidStateChanged(IIJ)V

    .line 323
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3

    .line 318
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 5

    .line 312
    iget-object p3, p0, Lcom/android/server/usage/UsageStatsService$3;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p3, p3, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 p4, 0x3

    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 313
    return-void
.end method
