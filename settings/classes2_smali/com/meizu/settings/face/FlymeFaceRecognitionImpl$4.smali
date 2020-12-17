.class Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;
.super Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;
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

    .line 143
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-direct {p0}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;-><init>()V

    return-void
.end method

.method private handleAuthenticationError(I)V
    .registers 4

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationFailed. errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFaceRecognitionFailedCounts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    .line 170
    invoke-static {v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$600(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTargetRecognitionFaiedCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    .line 171
    invoke-static {v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$700(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFaceRecognitionTotalFailedCounts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    .line 172
    invoke-static {v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$800(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceRecognitionImpl"

    .line 169
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f45

    const/16 v1, 0x9

    if-ne p1, v1, :cond_5d

    .line 174
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$900(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)V

    .line 175
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 176
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5c
    return-void

    .line 181
    :cond_5d
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$808(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I

    .line 183
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$800(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_9c

    .line 185
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$608(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I

    .line 186
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$900(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)V

    .line 187
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_89

    .line 188
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0x1f41

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 190
    :cond_89
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_9c

    .line 191
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0x1f44

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    :cond_9c
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$600(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I

    move-result p1

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$700(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)I

    move-result v1

    if-lt p1, v1, :cond_bb

    .line 196
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_bb

    .line 197
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_bb
    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .registers 4

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationAcquired, acquireInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceRecognitionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-super {p0, p1}, Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 4

    .line 146
    invoke-direct {p0, p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->handleAuthenticationError(I)V

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAuthenticationError, errorCode:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errString:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceRecognitionImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthenticationFailed(I)V
    .registers 2

    .line 165
    invoke-direct {p0, p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->handleAuthenticationError(I)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 4

    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAuthenticationHelp, helpCode:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", helpString:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceRecognitionImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/meizu/facerecognition/manager/FlymeFaceRecognitionManager$AuthenticationResult;)V
    .registers 3

    const-string p1, "FaceRecognitionImpl"

    const-string v0, "onAuthenticationSucceeded."

    .line 157
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 159
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x1f42

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1a
    return-void
.end method

.method public onAuthenticationTimeout()V
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {v0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 224
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x1f47

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_13
    return-void
.end method

.method public onScreenBrightnessOverride(IF)V
    .registers 5

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenBrightnessOverride, screenbrightnessvalue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",ambientLux:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ",mHandler:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p2}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FaceRecognitionImpl"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p2}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_56

    .line 212
    iget-object p2, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p2}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p2

    const/16 v1, 0x1f46

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 214
    iput v1, p2, Landroid/os/Message;->what:I

    .line 215
    iput p1, p2, Landroid/os/Message;->arg1:I

    const-string p1, "onScreenBrightnessOverride sendMessage"

    .line 216
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl$4;->this$0:Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    invoke-static {p0}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;->access$000(Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_56
    return-void
.end method
