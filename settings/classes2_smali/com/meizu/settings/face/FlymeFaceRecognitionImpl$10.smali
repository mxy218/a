.class Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$10;
.super Ljava/lang/Object;
.source "FlymeFaceRecognitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->startEnroll(Landroid/os/Handler;[BLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

.field final synthetic val$frameMarkRect:Landroid/graphics/Rect;

.field final synthetic val$verifyToken:[B


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;[BLandroid/graphics/Rect;)V
    .registers 4

    .line 408
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$10;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    iput-object p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$10;->val$verifyToken:[B

    iput-object p3, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$10;->val$frameMarkRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 411
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$10;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1600(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$10;->val$verifyToken:[B

    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$10;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1300(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/CancellationSignal;

    move-result-object v3

    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$10;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    .line 412
    invoke-static {v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1500(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I

    move-result v5

    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$10;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1800(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$EnrollmentCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$10;->val$frameMarkRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    .line 411
    invoke-virtual/range {v1 .. v7}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->enroll([BLandroid/os/CancellationSignal;IILcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$EnrollmentCallback;Landroid/graphics/Rect;)V

    return-void
.end method
