.class Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$1;
.super Ljava/lang/Object;
.source "FaceRecognitionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->onCameraPreviewLaunchError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$1;->this$1:Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$1;->this$1:Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;

    iget-object v0, v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$408(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)I

    .line 201
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$1;->this$1:Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;

    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->postToStartCamera()V

    return-void
.end method
