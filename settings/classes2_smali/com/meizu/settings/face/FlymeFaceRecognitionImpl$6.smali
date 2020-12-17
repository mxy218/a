.class Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$6;
.super Ljava/lang/Object;
.source "FlymeFaceRecognitionImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;
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

    .line 287
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$6;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    const-string v0, "FaceRecognitionImpl"

    const-string v1, "KeyguardViewMediator binderDied"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$6;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1102(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Z)Z

    .line 292
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$6;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1202(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;I)I

    .line 293
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$6;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$1000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Ljava/lang/Runnable;)V

    return-void
.end method
