.class Lcom/android/server/tv/TvRemoteProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "TvRemoteProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$1;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 202
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderWatcher;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received package manager broadcast: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TvRemoteProvWatcher"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1c
    iget-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$1;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-static {p1}, Lcom/android/server/tv/TvRemoteProviderWatcher;->access$200(Lcom/android/server/tv/TvRemoteProviderWatcher;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$1;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-static {p2}, Lcom/android/server/tv/TvRemoteProviderWatcher;->access$100(Lcom/android/server/tv/TvRemoteProviderWatcher;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method
