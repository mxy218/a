.class Lcom/android/server/LocationManagerService$LocDataCollection$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService$LocDataCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LocationManagerService$LocDataCollection;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService$LocDataCollection;)V
    .registers 2
    .param p1, "this$1"  # Lcom/android/server/LocationManagerService$LocDataCollection;

    .line 4461
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocDataCollection$1;->this$1:Lcom/android/server/LocationManagerService$LocDataCollection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 4464
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4465
    nop

    .line 4466
    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 4467
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocDataCollection$1;->this$1:Lcom/android/server/LocationManagerService$LocDataCollection;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    invoke-static {v1, v2}, Lcom/android/server/LocationManagerService$LocDataCollection;->access$5902(Lcom/android/server/LocationManagerService$LocDataCollection;Z)Z

    .line 4469
    .end local v0  # "networkInfo":Landroid/net/NetworkInfo;
    :cond_28
    return-void
.end method
