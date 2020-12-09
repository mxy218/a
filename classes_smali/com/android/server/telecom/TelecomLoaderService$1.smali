.class Lcom/android/server/telecom/TelecomLoaderService$1;
.super Landroid/content/BroadcastReceiver;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService;->registerCarrierConfigChangedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 231
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 232
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_16
    if-ge v0, p2, :cond_26

    aget v1, p1, v0

    .line 233
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$1;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/TelecomLoaderService;->access$600(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;I)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 236
    :cond_26
    return-void
.end method
