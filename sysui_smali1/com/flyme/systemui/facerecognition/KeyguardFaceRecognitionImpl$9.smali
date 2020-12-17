.class Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$9;
.super Ljava/lang/Object;
.source "KeyguardFaceRecognitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

.field final synthetic val$endRunable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;Ljava/lang/Runnable;)V
    .registers 3

    .line 324
    iput-object p1, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$9;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    iput-object p2, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$9;->val$endRunable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$9;->this$0:Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;

    iget-object p0, p0, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl$9;->val$endRunable:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;->access$900(Lcom/flyme/systemui/facerecognition/KeyguardFaceRecognitionImpl;Ljava/lang/Runnable;)V

    return-void
.end method
