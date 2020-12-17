.class Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$13;
.super Ljava/lang/Object;
.source "FlymeFaceRecognitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->resetTimeout([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

.field final synthetic val$token:[B


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;[B)V
    .registers 3

    .line 510
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$13;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    iput-object p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$13;->val$token:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 513
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$13;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1600(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$13;->val$token:[B

    invoke-virtual {v0, p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager;->resetTimeout([B)V

    return-void
.end method
