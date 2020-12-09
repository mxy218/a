.class Lcom/android/server/content/SyncManager$2;
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

    .line 322
    iput-object p1, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 325
    new-instance p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$2;->getSendingUserId()I

    move-result p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 326
    iget-object p2, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p2, p1}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 327
    return-void
.end method
