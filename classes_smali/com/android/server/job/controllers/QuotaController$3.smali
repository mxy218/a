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
    .param p1, "this$0"  # Lcom/android/server/job/controllers/QuotaController;

    .line 498
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$3;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 501
    if-nez p2, :cond_3

    .line 502
    return-void

    .line 504
    :cond_3
    const/4 v0, 0x0

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 505
    return-void

    .line 507
    :cond_d
    const/4 v0, -0x1

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 508
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$3;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_19
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$3;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseSetArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseSetArray;->remove(I)V

    .line 510
    monitor-exit v1

    .line 511
    return-void

    .line 510
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_24

    throw v2
.end method
