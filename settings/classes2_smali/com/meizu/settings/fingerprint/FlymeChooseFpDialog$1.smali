.class Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;
.super Landroid/os/Handler;
.source "FlymeChooseFpDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeChooseFpDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x7f1208e9

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_38

    if-eq v0, v3, :cond_25

    goto/16 :goto_b9

    .line 61
    :cond_25
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->access$200(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)Z

    move-result p1

    if-nez p1, :cond_b9

    .line 62
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->access$400(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b9

    :cond_38
    const-string v0, "MSG_VERIFY_UPDATE"

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_53

    .line 43
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 44
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-static {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->access$000(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;I)V

    goto :goto_b9

    :cond_53
    const/16 v1, 0x103

    if-ne v0, v1, :cond_5d

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->access$100(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)V

    goto :goto_b9

    :cond_5d
    const/16 v1, 0x105

    if-ne v0, v1, :cond_b9

    .line 48
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x0

    if-lez v0, :cond_91

    .line 49
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-static {v0, v4}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->access$202(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;Z)Z

    .line 50
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->access$300(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-static {v0}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->access$400(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    const v2, 0x7f120da5

    new-array v3, v4, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b9

    :cond_91
    if-nez v0, :cond_b9

    .line 53
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-static {p1, v1}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->access$202(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;Z)Z

    .line 54
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->access$400(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 55
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->access$500(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->endVerify()V

    .line 56
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-static {p1}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->access$500(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$1;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->access$300(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)Landroid/os/Handler;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->startVerify(Landroid/os/Handler;)V

    :cond_b9
    :goto_b9
    return-void
.end method
