.class Lcom/flyme/systemui/facerecognition/FaceRecognitionController$2;
.super Ljava/lang/Object;
.source "FaceRecognitionController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 147
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 152
    iget-object v2, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {v2}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 153
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$2;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->access$100(Lcom/flyme/systemui/facerecognition/FaceRecognitionController;)Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->warmUpHardwareDevice()V

    .line 156
    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStartCamerePerviewRunnable cost :"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FaceRecognitionController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
