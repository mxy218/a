.class Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$7;
.super Ljava/lang/Object;
.source "KeyguardFaceRecognitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->closeHardwareDevice()V
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

    .line 260
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$7;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 263
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$7;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$600(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->closeHardwareDevice()Z

    return-void
.end method
