.class Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$12;
.super Ljava/lang/Object;
.source "FlymeFaceRecognitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->deleteFaceMetadatas()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)V
    .registers 2

    .line 496
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$12;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 499
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$12;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1600(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$12;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1500(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I

    move-result v1

    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$12;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1900(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$RemovalCallback;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->removeAllFaceMetadata(ILcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$RemovalCallback;)V

    return-void
.end method
