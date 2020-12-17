.class Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$4;
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

    .line 254
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$4;->this$1:Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 257
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback$4;->this$1:Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;

    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$CreateFaceStartCameraPerviewCallback;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$800(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticatedForFaceRecognition(Z)V

    return-void
.end method
