.class Lcom/android/server/job/controllers/QuotaController$2;
.super Landroid/app/IUidObserver$Stub;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 2

    .line 475
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$2;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2

    .line 487
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    .line 495
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 3

    .line 483
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3

    .line 491
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 5

    .line 478
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController$2;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p3}, Lcom/android/server/job/controllers/QuotaController;->access$300(Lcom/android/server/job/controllers/QuotaController;)Landroid/os/Handler;

    move-result-object p3

    const/4 p4, 0x3

    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 479
    return-void
.end method
