.class Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$11;
.super Ljava/lang/Object;
.source "FlymeFaceRecognitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->closeHardwareDevice()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)V
    .registers 2

    .line 448
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$11;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 451
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$11;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1600(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->closeHardwareDevice()Z

    return-void
.end method
