.class Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler$2;
.super Ljava/lang/Object;
.source "Diagnostics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;

.field final synthetic val$usb:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;I)V
    .registers 3

    .line 78
    iput-object p1, p0, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler$2;->this$1:Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;

    iput p2, p0, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler$2;->val$usb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string/jumbo v0, "sys.usb.config"

    .line 81
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3a

    const-string/jumbo v1, "rndis,serial_cdev,diag,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 83
    iget-object v1, p0, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler$2;->this$1:Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;

    iget-object v1, v1, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;->this$0:Lcom/meizu/settings/devtools/Diagnostics;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "open high-speed rail mode success,current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler$2;->val$usb:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_59

    .line 87
    :cond_3a
    iget-object v0, p0, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler$2;->this$1:Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;

    iget-object v0, v0, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;->this$0:Lcom/meizu/settings/devtools/Diagnostics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open high-speed rail mode fail"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler$2;->val$usb:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_59
    return-void
.end method
