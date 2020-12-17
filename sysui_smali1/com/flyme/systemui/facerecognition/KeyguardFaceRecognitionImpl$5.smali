.class Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$5;
.super Ljava/lang/Object;
.source "KeyguardFaceRecognitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->warmUpHardwareDevice()V
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

    .line 207
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$5;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$5;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$600(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$5;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$500(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->warmUpHardwareDevice(Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$WarmUpHardwareDeviceCallback;)Z

    return-void
.end method
