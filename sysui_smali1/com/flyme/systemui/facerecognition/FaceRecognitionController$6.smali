.class Lcom/flyme/systemui/facerecognition/FaceRecognitionController$6;
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

    .line 477
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$6;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 480
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/FaceRecognitionController$6;->this$0:Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->resetFaceImage()V

    return-void
.end method
