.class Lcom/android/server/notification/ConfigCloud$1;
.super Landroid/content/BroadcastReceiver;
.source "ConfigCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ConfigCloud;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ConfigCloud;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ConfigCloud;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/notification/ConfigCloud;

    .line 59
    iput-object p1, p0, Lcom/android/server/notification/ConfigCloud$1;->this$0:Lcom/android/server/notification/ConfigCloud;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 62
    invoke-static {}, Lcom/android/server/notification/ConfigCloud;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive loadPolicyFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/android/server/notification/ConfigCloud$1;->this$0:Lcom/android/server/notification/ConfigCloud;

    invoke-static {v0}, Lcom/android/server/notification/ConfigCloud;->access$100(Lcom/android/server/notification/ConfigCloud;)V

    .line 64
    return-void
.end method
