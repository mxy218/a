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
    .param p1, "this$0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 475
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$2;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2
    .param p1, "uid"  # I

    .line 487
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"  # I
    .param p2, "cached"  # Z

    .line 495
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 3
    .param p1, "uid"  # I
    .param p2, "disabled"  # Z

    .line 483
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3
    .param p1, "uid"  # I
    .param p2, "disabled"  # Z

    .line 491
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "procState"  # I
    .param p3, "procStateSeq"  # J

    .line 478
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$2;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$300(Lcom/android/server/job/controllers/QuotaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 479
    return-void
.end method
