.class Lcom/android/server/rollback/RollbackManagerServiceImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 220
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 221
    const/4 p1, -0x1

    const-string v0, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 223
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$300(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 224
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$400(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    .line 225
    invoke-virtual {v1, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->hasToken(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 226
    const/4 p1, 0x1

    iput-boolean p1, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->isCancelled:Z

    .line 227
    monitor-exit p2

    return-void

    .line 229
    :cond_3b
    goto :goto_24

    .line 230
    :cond_3c
    monitor-exit p2

    goto :goto_41

    :catchall_3e
    move-exception p1

    monitor-exit p2
    :try_end_40
    .catchall {:try_start_1a .. :try_end_40} :catchall_3e

    throw p1

    .line 232
    :cond_41
    :goto_41
    return-void
.end method
