.class Lcom/android/server/OldNetworkTimeUpdateService$2;
.super Landroid/content/BroadcastReceiver;
.source "OldNetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OldNetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OldNetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/OldNetworkTimeUpdateService;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/android/server/OldNetworkTimeUpdateService$2;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 252
    const-string p2, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 253
    iget-object p1, p0, Lcom/android/server/OldNetworkTimeUpdateService$2;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/OldNetworkTimeUpdateService;->access$202(Lcom/android/server/OldNetworkTimeUpdateService;J)J

    .line 255
    :cond_15
    return-void
.end method
