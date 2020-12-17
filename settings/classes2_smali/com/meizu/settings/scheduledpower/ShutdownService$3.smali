.class Lcom/meizu/settings/scheduledpower/ShutdownService$3;
.super Ljava/lang/Object;
.source "ShutdownService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/scheduledpower/ShutdownService;->createDialog(I)V
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

    .line 145
    iput-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$3;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onClick "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$3;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "NegativeButton, remove listener = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$3;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    .line 151
    invoke-static {p2}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$000(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/telephony/PhoneStateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShutDownService"

    .line 150
    invoke-static {p2, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$3;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p1}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$300(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$3;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p1}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$200(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$3;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p2}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$000(Lcom/meizu/settings/scheduledpower/ShutdownService;)Landroid/telephony/PhoneStateListener;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 155
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$3;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
