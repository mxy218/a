.class Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;
.super Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$EnrollmentCallback;
.source "FlymeFaceRecognitionImpl.java"


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

    .line 78
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-direct {p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .registers 5

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnrollmentError--> errMsgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",errString:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceRecognitionImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 84
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_34
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$108(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnrollmentHelp--> helpMsgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",helpString:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", onFaceSaveErrorNum:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$100(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mHandler:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceRecognitionImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7c

    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$200(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7c

    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$100(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I

    move-result p1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_7c

    .line 93
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$102(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;I)I

    .line 94
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1, p2}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$202(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 95
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_7c

    .line 96
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_7c
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .registers 6

    .line 103
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$102(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;I)I

    .line 104
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    rsub-int/lit8 v0, p1, 0x5

    mul-int/lit8 v0, v0, 0x14

    .line 107
    iget-object v2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    if-nez p1, :cond_18

    const/4 v1, 0x1

    :cond_18
    invoke-static {v2, v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$302(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;Z)Z

    .line 109
    iget-object v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$300(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 110
    iget-object v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$400(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120d60

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v2, v0, v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$500(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;ILjava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 113
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_64

    .line 116
    :cond_4e
    iget-object v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$400(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120d5b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v2, v0, v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$500(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;ILjava/lang/CharSequence;)V

    .line 119
    :cond_64
    :goto_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnrollmentProgress! remaining:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mHandler:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$2;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceRecognitionImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
