.class Lcom/android/server/content/SyncManager$6;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2

    .line 437
    iput-object p1, p0, Lcom/android/server/content/SyncManager$6;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 440
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 441
    const/16 v0, -0x2710

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 442
    if-ne p2, v0, :cond_f

    return-void

    .line 444
    :cond_f
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 445
    iget-object p1, p0, Lcom/android/server/content/SyncManager$6;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;I)V

    goto :goto_38

    .line 446
    :cond_1d
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 447
    iget-object p1, p0, Lcom/android/server/content/SyncManager$6;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;I)V

    goto :goto_38

    .line 448
    :cond_2b
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 449
    iget-object p1, p0, Lcom/android/server/content/SyncManager$6;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;I)V

    .line 451
    :cond_38
    :goto_38
    return-void
.end method
