.class Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;
.super Ljava/lang/Object;
.source "FaceRecognitionController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/facerecognition/FaceRecognitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)V
    .registers 2

    .line 346
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",mContext:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceRecognitionController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 363
    :try_start_25
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$1100(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 364
    iget-object v1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$1002(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;Z)Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_34} :catch_35

    goto :goto_4f

    :catch_35
    move-exception v1

    .line 366
    iget-object v2, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v2, p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$1002(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;Z)Z

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkToDeath e = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_4f
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p2}, Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$1202(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;)Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    .line 371
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionState()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceRecognitionController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$1000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 352
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$1200(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$1100(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 353
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1, v1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$1002(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;Z)Z

    .line 355
    :cond_37
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$1202(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;)Lcom/meizu/facerecognition/manager/IFaceRecognitionManagerService;

    .line 356
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$5;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$1300(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/manager/CameraWorkThreadManager;->stopCamera()V

    return-void
.end method
