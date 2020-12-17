.class Lcom/flyme/systemui/facerecognition/FaceRecognitionController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FaceRecognitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/facerecognition/FaceRecognitionController;-><init>(Landroid/content/Context;)V
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

    .line 107
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$1;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .registers 2

    if-nez p1, :cond_15

    .line 115
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$1;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->resetFaceImage()V

    .line 116
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$1;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$000(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionState()V

    goto :goto_26

    .line 118
    :cond_15
    iget-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$1;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p1}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 119
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$1;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->resetAuthUnlockAttempt()V

    :cond_26
    :goto_26
    return-void
.end method

.method public onUserSwitching(I)V
    .registers 2

    return-void
.end method
