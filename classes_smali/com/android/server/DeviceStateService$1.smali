.class Lcom/android/server/DeviceStateService$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceStateService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStateService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStateService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/DeviceStateService;

    .line 95
    iput-object p1, p0, Lcom/android/server/DeviceStateService$1;->this$0:Lcom/android/server/DeviceStateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lcom/android/server/DeviceStateService$1;->this$0:Lcom/android/server/DeviceStateService;

    invoke-static {v0}, Lcom/android/server/DeviceStateService;->access$000(Lcom/android/server/DeviceStateService;)Ljava/lang/Boolean;

    move-result-object v0

    .line 99
    .local v0, "result":Ljava/lang/Boolean;
    const-string v1, "DeviceStateService"

    if-nez v0, :cond_11

    .line 100
    const-string/jumbo v2, "imei is not ready, do nothing."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 105
    :cond_11
    const-string v2, "Imei is ready, unregisterReceiver."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 109
    const-string v2, "device is legal, do nothing."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 111
    :cond_25
    const-string v2, "device is not legal, send lock broadcast."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "meizu.intent.action.FLYME_FINDPHONE_LOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "lockIntent":Landroid/content/Intent;
    const-string v2, "Lock"

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const/4 v2, -0x2

    const-string v3, "LockType"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    iget-object v2, p0, Lcom/android/server/DeviceStateService$1;->this$0:Lcom/android/server/DeviceStateService;

    iget-object v2, v2, Lcom/android/server/DeviceStateService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 117
    .end local v1  # "lockIntent":Landroid/content/Intent;
    :goto_49
    return-void
.end method
