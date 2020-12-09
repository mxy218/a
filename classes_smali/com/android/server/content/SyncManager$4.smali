.class Lcom/android/server/content/SyncManager$4;
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

    .line 415
    iput-object p1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 418
    const-string p1, "SyncManager"

    const-string p2, "Writing sync state before shutdown..."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object p1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {p1}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/content/SyncStorageEngine;->writeAllState()V

    .line 421
    iget-object p1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object p1

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 422
    iget-object p1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Shutting down."

    aput-object v0, p2, v2

    invoke-virtual {p1, p2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 423
    return-void
.end method
