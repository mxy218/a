.class Lcom/meizu/settings/deviceinfo/FlymeSimStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "FlymeSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_13

    return-void

    :cond_13
    const-string p2, "message"

    .line 129
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellBroadcastMessage;

    if-eqz p1, :cond_36

    .line 130
    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-static {p2}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->access$000(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastMessage;->getSubId()I

    move-result v0

    if-ne p2, v0, :cond_36

    .line 131
    invoke-virtual {p1}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus$1;->this$0:Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    invoke-static {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;->access$100(Lcom/meizu/settings/deviceinfo/FlymeSimStatus;Ljava/lang/String;)V

    :cond_36
    return-void
.end method
