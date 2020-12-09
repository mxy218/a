.class Lcom/android/server/ServiceWatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServiceWatcher;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 220
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 222
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 223
    iget-object p1, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {p1, p2}, Lcom/android/server/ServiceWatcher;->access$102(Lcom/android/server/ServiceWatcher;I)I

    .line 224
    iget-object p1, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {p1, v1}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;Z)V

    goto :goto_35

    .line 225
    :cond_20
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 226
    iget-object p1, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {p1}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)I

    move-result p1

    if-ne p2, p1, :cond_35

    .line 227
    iget-object p1, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {p1, v1}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;Z)V

    .line 230
    :cond_35
    :goto_35
    return-void
.end method
