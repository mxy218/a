.class Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$6;
.super Ljava/lang/Object;
.source "KeyguardFaceRecognitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->startListeningForFaceRecognition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;I)V
    .registers 3

    .line 229
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$6;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    iput p2, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$6;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 232
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$6;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$600(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    move-result-object v1

    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$6;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$700(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Landroid/os/CancellationSignal;

    move-result-object v3

    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$6;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$800(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;

    move-result-object v5

    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$6;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    iget-object v6, v0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->mHandler:Landroid/os/Handler;

    iget v7, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$6;->val$userId:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->authenticate(Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;Landroid/os/Handler;I)V

    return-void
.end method
