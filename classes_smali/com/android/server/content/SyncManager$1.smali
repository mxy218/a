.class Lcom/android/server/content/SyncManager$1;
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

    .line 298
    iput-object p1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 302
    const-string p2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x2

    const-string v1, "SyncManager"

    if-eqz p2, :cond_2c

    .line 303
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 304
    const-string p1, "Internal storage is low."

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_1a
    iget-object p1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager;->access$002(Lcom/android/server/content/SyncManager;Z)Z

    .line 307
    iget-object p1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    sget-object p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v0, 0x0

    const-string/jumbo v1, "storage low"

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_4f

    .line 311
    :cond_2c
    const-string p2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 312
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 313
    const-string p1, "Internal storage is ok."

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_3f
    iget-object p1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager;->access$002(Lcom/android/server/content/SyncManager;Z)Z

    .line 316
    iget-object p1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    sget-object p2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v0, "storage ok"

    invoke-static {p1, p2, v0}, Lcom/android/server/content/SyncManager;->access$100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 319
    :cond_4f
    :goto_4f
    return-void
.end method
