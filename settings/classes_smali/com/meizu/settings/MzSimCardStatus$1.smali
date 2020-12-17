.class Lcom/meizu/settings/MzSimCardStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "MzSimCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/MzSimCardStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/MzSimCardStatus;


# direct methods
.method constructor <init>(Lcom/meizu/settings/MzSimCardStatus;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/meizu/settings/MzSimCardStatus$1;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    if-ne p1, v0, :cond_a7

    const p1, 0x7fffffff

    const-string/jumbo v0, "slot"

    .line 105
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receive SPN_STRINGS_UPDATED_ACTION of slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeminiSimCardStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/meizu/settings/MzSimCardStatus$1;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-static {v0}, Lcom/meizu/settings/MzSimCardStatus;->access$000(Lcom/meizu/settings/MzSimCardStatus;)I

    move-result v0

    if-ne p1, v0, :cond_a7

    .line 109
    iget-object p1, p0, Lcom/meizu/settings/MzSimCardStatus$1;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    const/4 v0, 0x0

    const-string/jumbo v2, "showSpn"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {p1, v2}, Lcom/meizu/settings/MzSimCardStatus;->access$102(Lcom/meizu/settings/MzSimCardStatus;Z)Z

    .line 110
    iget-object p1, p0, Lcom/meizu/settings/MzSimCardStatus$1;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    const-string/jumbo v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/meizu/settings/MzSimCardStatus;->access$202(Lcom/meizu/settings/MzSimCardStatus;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget-object p1, p0, Lcom/meizu/settings/MzSimCardStatus$1;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    const-string/jumbo v2, "showPlmn"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/meizu/settings/MzSimCardStatus;->access$302(Lcom/meizu/settings/MzSimCardStatus;Z)Z

    .line 112
    iget-object p1, p0, Lcom/meizu/settings/MzSimCardStatus$1;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    const-string/jumbo v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/settings/MzSimCardStatus;->access$402(Lcom/meizu/settings/MzSimCardStatus;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "showspn: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/MzSimCardStatus$1;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-static {p2}, Lcom/meizu/settings/MzSimCardStatus;->access$300(Lcom/meizu/settings/MzSimCardStatus;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", spn: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/MzSimCardStatus$1;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-static {p2}, Lcom/meizu/settings/MzSimCardStatus;->access$200(Lcom/meizu/settings/MzSimCardStatus;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", showplmn: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/MzSimCardStatus$1;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-static {p2}, Lcom/meizu/settings/MzSimCardStatus;->access$300(Lcom/meizu/settings/MzSimCardStatus;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", plmn: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/MzSimCardStatus$1;->this$0:Lcom/meizu/settings/MzSimCardStatus;

    invoke-static {p0}, Lcom/meizu/settings/MzSimCardStatus;->access$400(Lcom/meizu/settings/MzSimCardStatus;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    return-void
.end method
