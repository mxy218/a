.class Lcom/android/server/camera/CameraServiceProxy$2;
.super Landroid/hardware/ICameraServiceProxy$Stub;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/camera/CameraServiceProxy;

    .line 178
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 18
    .param p1, "cameraId"  # Ljava/lang/String;
    .param p2, "newCameraState"  # I
    .param p3, "facing"  # I
    .param p4, "clientName"  # Ljava/lang/String;
    .param p5, "apiLevel"  # I

    .line 192
    move-object v0, p0

    move-object v7, p1

    move v8, p2

    move-object/from16 v9, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x417

    if-eq v1, v2, :cond_2d

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraService_proxy"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void

    .line 197
    :cond_2d
    invoke-static {p2}, Lcom/android/server/camera/CameraServiceProxy;->access$500(I)Ljava/lang/String;

    move-result-object v10

    .line 198
    .local v10, "state":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/server/camera/CameraServiceProxy;->access$600(I)Ljava/lang/String;

    move-result-object v11

    .line 202
    .local v11, "facingStr":Ljava/lang/String;
    const-string v1, "flyme.permission.RECEIVE_CAMERA_STATE"

    const-string v2, "cameraId"

    const-string v3, "clientName"

    const/high16 v4, 0x1000000

    if-eqz v8, :cond_60

    const/4 v5, 0x3

    if-eq v8, v5, :cond_43

    goto :goto_7d

    .line 212
    :cond_43
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "meizu.intent.action.CAMERA_CLOSE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    invoke-virtual {v5, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {v5, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v2}, Lcom/android/server/camera/CameraServiceProxy;->access$700(Lcom/android/server/camera/CameraServiceProxy;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v5, v3, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 217
    goto :goto_7d

    .line 204
    .end local v5  # "intent":Landroid/content/Intent;
    :cond_60
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "meizu.intent.action.CAMERA_OPEN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v5  # "intent":Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    invoke-virtual {v5, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {v5, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v2}, Lcom/android/server/camera/CameraServiceProxy;->access$700(Lcom/android/server/camera/CameraServiceProxy;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v5, v3, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 209
    nop

    .line 221
    .end local v5  # "intent":Landroid/content/Intent;
    :goto_7d
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/camera/CameraServiceProxy;->access$800(Lcom/android/server/camera/CameraServiceProxy;Ljava/lang/String;IILjava/lang/String;I)V

    .line 222
    return-void
.end method

.method public pingForUserUpdate()V
    .registers 3

    .line 181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_28

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_proxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 186
    :cond_28
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/android/server/camera/CameraServiceProxy;->access$400(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 187
    return-void
.end method
