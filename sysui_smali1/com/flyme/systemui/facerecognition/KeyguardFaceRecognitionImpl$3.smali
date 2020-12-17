.class Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$3;
.super Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$LockoutResetCallback;
.source "KeyguardFaceRecognitionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$3;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-direct {p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$LockoutResetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockoutReset()V
    .registers 3

    const-string v0, "KeyguardFaceRecognitionImpl"

    const-string v1, "onLockoutReset"

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$3;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$200(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$StartCameraPreviewCallback;->onLockoutReset()V

    return-void
.end method
