.class Lcom/meizu/settings/scheduledpower/ShutdownService$1;
.super Landroid/telephony/PhoneStateListener;
.source "ShutdownService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/scheduledpower/ShutdownService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;


# direct methods
.method constructor <init>(Lcom/meizu/settings/scheduledpower/ShutdownService;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 7

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCallStateChanged mListener = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {v0}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$000(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " this = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " state:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " calling = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    .line 105
    invoke-static {v0}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$100(Lcom/meizu/settings/scheduledpower/ShutdownService;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ShutDownService"

    .line 104
    invoke-static {v0, p2}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p2}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$000(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/telephony/PhoneStateListener;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_52

    .line 108
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p1}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$200(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string p0, "onCallStateChanged return"

    .line 109
    invoke-static {v0, p0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_52
    if-eqz p1, :cond_83

    .line 115
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p1}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$300(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p1}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$400(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_7d

    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p1}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$400(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 117
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p1}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$400(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 119
    :cond_7d
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p0, v1}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$102(Lcom/meizu/settings/scheduledpower/ShutdownService;Z)Z

    goto :goto_a6

    :cond_83
    if-nez p1, :cond_a6

    .line 120
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p1}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$100(Lcom/meizu/settings/scheduledpower/ShutdownService;)Z

    move-result p1

    if-nez p1, :cond_a6

    .line 122
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    const/16 p2, 0xf

    invoke-static {p1, p2}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$502(Lcom/meizu/settings/scheduledpower/ShutdownService;I)I

    .line 123
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p1}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$500(Lcom/meizu/settings/scheduledpower/ShutdownService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$600(Lcom/meizu/settings/scheduledpower/ShutdownService;I)V

    .line 124
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$1;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p0}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$300(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a6
    :goto_a6
    return-void
.end method
