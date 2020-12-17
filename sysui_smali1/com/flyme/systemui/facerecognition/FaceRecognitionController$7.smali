.class Lcom/flyme/systemui/facerecognition/FaceRecognitionController$7;
.super Ljava/lang/Object;
.source "FaceRecognitionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->updateScreenBrightnessWhileLowLuminance(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;I)V
    .registers 3

    .line 588
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$7;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    iput p2, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$7;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 591
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$7;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$800(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 592
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$7;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$800(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iget p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$7;->val$value:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setFaceRecognitionBrightness(I)V

    :cond_13
    return-void
.end method
