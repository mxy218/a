.class Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$10;
.super Ljava/lang/Object;
.source "KeyguardFaceRecognitionImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .line 334
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$10;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    const-string v0, "KeyguardFaceRecognitionImpl"

    const-string v1, "KeyguardViewMediator binderDied"

    .line 337
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$10;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$1002(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;Z)Z

    .line 339
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$10;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$1102(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;I)I

    .line 340
    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$10;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$900(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;Ljava/lang/Runnable;)V

    return-void
.end method
