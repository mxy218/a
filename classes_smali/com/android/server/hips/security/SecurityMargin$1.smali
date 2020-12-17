.class Lcom/android/server/hips/security/SecurityMargin$1;
.super Landroid/os/Handler;
.source "SecurityMargin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/security/SecurityMargin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/security/SecurityMargin;


# direct methods
.method constructor <init>(Lcom/android/server/hips/security/SecurityMargin;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/hips/security/SecurityMargin;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 117
    iput-object p1, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"  # Landroid/os/Message;

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3e8

    const-string v3, "SecurityMargin"

    const/4 v4, 0x0

    if-eqz v0, :cond_33

    const/4 v5, 0x1

    if-eq v0, v5, :cond_d

    goto :goto_72

    .line 136
    :cond_d
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->access$400(Lcom/android/server/hips/security/SecurityMargin;)I

    move-result v0

    if-lez v0, :cond_24

    .line 137
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->access$410(Lcom/android/server/hips/security/SecurityMargin;)I

    .line 138
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->access$100(Lcom/android/server/hips/security/SecurityMargin;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_72

    .line 141
    :cond_24
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->access$500(Lcom/android/server/hips/security/SecurityMargin;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/server/hips/security/SecurityMargin;->access$600(Lcom/android/server/hips/security/SecurityMargin;Ljava/lang/String;Z)V

    .line 142
    const-string v0, "handleMessage, hide the status bar corlor."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    goto :goto_72

    .line 121
    :cond_33
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->access$000(Lcom/android/server/hips/security/SecurityMargin;)I

    move-result v0

    if-lez v0, :cond_4a

    .line 122
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->access$010(Lcom/android/server/hips/security/SecurityMargin;)I

    .line 123
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->access$100(Lcom/android/server/hips/security/SecurityMargin;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_72

    .line 125
    :cond_4a
    const-string v0, "handleMessage, exit from the SMS protection margin."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->access$200(Lcom/android/server/hips/security/SecurityMargin;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->access$200(Lcom/android/server/hips/security/SecurityMargin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6c

    .line 129
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->access$200(Lcom/android/server/hips/security/SecurityMargin;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hips/utils/HipsUtils;->changeDefaultSMS(Ljava/lang/String;)V

    .line 131
    :cond_6c
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0, v4}, Lcom/android/server/hips/security/SecurityMargin;->access$302(Lcom/android/server/hips/security/SecurityMargin;Z)Z

    .line 133
    nop

    .line 149
    :goto_72
    return-void
.end method
