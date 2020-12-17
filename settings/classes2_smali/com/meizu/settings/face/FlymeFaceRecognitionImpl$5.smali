.class Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$5;
.super Ljava/lang/Object;
.source "FlymeFaceRecognitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->createFlymeFaceRecognitionManager(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

.field final synthetic val$endRunable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Ljava/lang/Runnable;)V
    .registers 3

    .line 276
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$5;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    iput-object p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$5;->val$endRunable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$5;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$5;->val$endRunable:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Ljava/lang/Runnable;)V

    return-void
.end method
