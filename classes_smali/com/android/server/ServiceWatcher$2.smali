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
    .param p1, "this$0"  # Lcom/android/server/ServiceWatcher;

    .line 237
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 240
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 243
    .local v1, "userId":I
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    .line 244
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v2, v1}, Lcom/android/server/ServiceWatcher;->access$102(Lcom/android/server/ServiceWatcher;I)I

    .line 245
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v2, v3}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;Z)V

    goto :goto_35

    .line 246
    :cond_20
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 247
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v2}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)I

    move-result v2

    if-ne v1, v2, :cond_35

    .line 248
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v2, v3}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;Z)V

    .line 251
    :cond_35
    :goto_35
    return-void
.end method
