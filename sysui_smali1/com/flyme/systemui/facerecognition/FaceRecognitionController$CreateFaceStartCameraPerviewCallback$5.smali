.class Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$5;
.super Ljava/lang/Object;
.source "FaceRecognitionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->onFaceCompare(Z)V
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

    .line 263
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$5;->this$1:Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$5;->this$1:Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;

    iget-object v0, v0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    .line 267
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$5;->this$1:Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;

    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    return-void
.end method
