.class Lcom/android/server/BluetoothManagerService$2;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    .line 244
    const-string/jumbo v0, "no_bluetooth_sharing"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p2, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 246
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 247
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 246
    invoke-static {v1, p1, v2}, Lcom/android/server/BluetoothManagerService;->access$300(Lcom/android/server/BluetoothManagerService;IZ)V

    .line 251
    :cond_16
    if-nez p1, :cond_4b

    const-string/jumbo v1, "no_bluetooth"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {p3, p2, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4b

    .line 254
    if-nez p1, :cond_42

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_42

    .line 256
    iget-object p2, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/android/server/BluetoothManagerService;->access$300(Lcom/android/server/BluetoothManagerService;IZ)V

    .line 257
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 p2, 0x3

    .line 258
    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 257
    invoke-static {p1, p2, p3}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;)V

    goto :goto_4b

    .line 260
    :cond_42
    iget-object p3, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p3, p1, p2}, Lcom/android/server/BluetoothManagerService;->access$300(Lcom/android/server/BluetoothManagerService;IZ)V

    .line 264
    :cond_4b
    :goto_4b
    return-void
.end method
