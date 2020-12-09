.class Lcom/android/server/display/WifiDisplayAdapter$8;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 2

    .line 431
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 434
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.server.display.wfd.DISCONNECT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 435
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 436
    :try_start_13
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$8;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 437
    monitor-exit p1

    goto :goto_1d

    :catchall_1a
    move-exception p2

    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw p2

    .line 439
    :cond_1d
    :goto_1d
    return-void
.end method
