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
    .param p1, "this$0"  # Lcom/android/server/BluetoothManagerService;

    .line 286
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "userId"  # I
    .param p2, "newRestrictions"  # Landroid/os/Bundle;
    .param p3, "prevRestrictions"  # Landroid/os/Bundle;

    .line 291
    const-string/jumbo v0, "no_bluetooth_sharing"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p2, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 293
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 294
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 293
    invoke-static {v1, p1, v2}, Lcom/android/server/BluetoothManagerService;->access$300(Lcom/android/server/BluetoothManagerService;IZ)V

    .line 298
    :cond_16
    if-nez p1, :cond_4b

    const-string/jumbo v1, "no_bluetooth"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {p3, p2, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 301
    if-nez p1, :cond_42

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 303
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/server/BluetoothManagerService;->access$300(Lcom/android/server/BluetoothManagerService;IZ)V

    .line 304
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v1, 0x3

    .line 305
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-static {v0, v1, v2}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;)V

    goto :goto_4b

    .line 307
    :cond_42
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, p1, v0}, Lcom/android/server/BluetoothManagerService;->access$300(Lcom/android/server/BluetoothManagerService;IZ)V

    .line 311
    :cond_4b
    :goto_4b
    return-void
.end method
