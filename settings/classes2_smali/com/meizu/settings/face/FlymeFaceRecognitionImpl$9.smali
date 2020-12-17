.class Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$9;
.super Ljava/lang/Object;
.source "FlymeFaceRecognitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->warmUpHardwareDeviceForPreview(Landroid/view/Surface;Landroid/os/Handler;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

.field final synthetic val$height:I

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Landroid/view/Surface;II)V
    .registers 5

    .line 388
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$9;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    iput-object p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$9;->val$surface:Landroid/view/Surface;

    iput p3, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$9;->val$width:I

    iput p4, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$9;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 391
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$9;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1600(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$9;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1700(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$9;->val$surface:Landroid/view/Surface;

    iget v3, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$9;->val$width:I

    iget p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$9;->val$height:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->warmUpHardwareDeviceForPreview(Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;Landroid/view/Surface;II)Z

    return-void
.end method
