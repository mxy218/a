.class Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$8;
.super Ljava/lang/Object;
.source "KeyguardFaceRecognitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->resetAuthUnlockAttempt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

.field final synthetic val$token:[B


# direct methods
.method constructor <init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;[B)V
    .registers 3

    .line 279
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$8;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    iput-object p2, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$8;->val$token:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$8;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-static {v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$600(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$8;->val$token:[B

    invoke-virtual {v0, p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->resetTimeout([B)V

    return-void
.end method
