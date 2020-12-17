.class Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$8;
.super Ljava/lang/Object;
.source "FlymeFaceRecognitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->startVerify(Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

.field final synthetic val$callback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;)V
    .registers 3

    .line 354
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$8;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    iput-object p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$8;->val$callback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$8;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1600(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$8;->val$callback:Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;

    invoke-virtual {v0, p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->warmUpHardwareDevice(Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;)Z

    return-void
.end method
