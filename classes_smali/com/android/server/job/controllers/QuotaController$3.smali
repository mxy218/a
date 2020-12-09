.class Lcom/android/server/job/controllers/QuotaController$3;
.super Landroid/content/BroadcastReceiver;
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

    .line 498
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$3;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 501
    if-nez p2, :cond_3

    .line 502
    return-void

    .line 504
    :cond_3
    const/4 p1, 0x0

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 505
    return-void

    .line 507
    :cond_d
    const/4 p1, -0x1

    const-string v0, "android.intent.extra.UID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 508
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController$3;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p2, p2, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 509
    :try_start_19
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$3;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseSetArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 510
    monitor-exit p2

    .line 511
    return-void

    .line 510
    :catchall_24
    move-exception p1

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_24

    throw p1
.end method
