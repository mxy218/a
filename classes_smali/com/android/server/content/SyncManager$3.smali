.class Lcom/android/server/content/SyncManager$3;
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

    .line 377
    iput-object p1, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 380
    iget-object p1, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)Z

    move-result p1

    .line 384
    iget-object p2, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p2}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/content/SyncManager;->access$302(Lcom/android/server/content/SyncManager;Z)Z

    .line 385
    iget-object p2, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p2}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 386
    if-nez p1, :cond_2f

    .line 387
    const/4 p1, 0x2

    const-string p2, "SyncManager"

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 388
    const-string p1, "Reconnection detected: clearing all backoffs"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_27
    iget-object p1, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo p2, "network reconnect"

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;Ljava/lang/String;)V

    .line 394
    :cond_2f
    return-void
.end method
