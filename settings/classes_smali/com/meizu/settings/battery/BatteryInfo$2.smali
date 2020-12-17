.class Lcom/meizu/settings/battery/BatteryInfo$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/battery/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/battery/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/meizu/settings/battery/BatteryInfo;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1cb

    const/4 p1, 0x0

    const-string/jumbo v0, "plugged"

    .line 84
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-static {v1}, Lcom/meizu/settings/battery/BatteryInfo;->access$100(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "level"

    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-static {v1}, Lcom/meizu/settings/battery/BatteryInfo;->access$200(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "scale"

    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "voltage"

    .line 87
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 88
    iget-object v2, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-static {v2}, Lcom/meizu/settings/battery/BatteryInfo;->access$300(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const v5, 0x7f12029e

    .line 89
    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-static {v1}, Lcom/meizu/settings/battery/BatteryInfo;->access$500(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const-string/jumbo v5, "temperature"

    invoke-virtual {p2, v5, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v4, p1}, Lcom/meizu/settings/battery/BatteryInfo;->access$400(Lcom/meizu/settings/battery/BatteryInfo;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const v4, 0x7f12029a

    .line 91
    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-static {p1}, Lcom/meizu/settings/battery/BatteryInfo;->access$600(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "technology"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-static {p1}, Lcom/meizu/settings/battery/BatteryInfo;->access$700(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/meizu/settings/battery/BatteryInfo;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_156

    if-eq v0, v3, :cond_143

    if-eq v0, v2, :cond_130

    if-eq v0, v1, :cond_11d

    if-eq v0, p1, :cond_10a

    .line 112
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-static {v0}, Lcom/meizu/settings/battery/BatteryInfo;->access$800(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const v5, 0x7f120285

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_168

    .line 106
    :cond_10a
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-static {v0}, Lcom/meizu/settings/battery/BatteryInfo;->access$800(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const v5, 0x7f120288

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_168

    .line 109
    :cond_11d
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-static {v0}, Lcom/meizu/settings/battery/BatteryInfo;->access$800(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const v5, 0x7f120283

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_168

    .line 103
    :cond_130
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-static {v0}, Lcom/meizu/settings/battery/BatteryInfo;->access$800(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const v5, 0x7f120287

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_168

    .line 100
    :cond_143
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-static {v0}, Lcom/meizu/settings/battery/BatteryInfo;->access$800(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const v5, 0x7f120282

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_168

    .line 97
    :cond_156
    iget-object v0, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-static {v0}, Lcom/meizu/settings/battery/BatteryInfo;->access$800(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const v5, 0x7f120286

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_168
    const-string v0, "health"

    .line 116
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v2, :cond_17a

    .line 119
    iget-object p1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const p2, 0x7f12027a

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1c2

    :cond_17a
    if-ne p2, v1, :cond_186

    .line 121
    iget-object p1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const p2, 0x7f12027d

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1c2

    :cond_186
    if-ne p2, p1, :cond_192

    .line 123
    iget-object p1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const p2, 0x7f120279

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1c2

    :cond_192
    const/4 p1, 0x5

    if-ne p2, p1, :cond_19f

    .line 125
    iget-object p1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const p2, 0x7f12027c

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1c2

    :cond_19f
    const/4 p1, 0x6

    if-ne p2, p1, :cond_1ac

    .line 127
    iget-object p1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const p2, 0x7f12027f

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1c2

    :cond_1ac
    const/4 p1, 0x7

    if-ne p2, p1, :cond_1b9

    .line 129
    iget-object p1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const p2, 0x7f120278

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1c2

    .line 131
    :cond_1b9
    iget-object p1, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    const p2, 0x7f12027e

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 133
    :goto_1c2
    iget-object p0, p0, Lcom/meizu/settings/battery/BatteryInfo$2;->this$0:Lcom/meizu/settings/battery/BatteryInfo;

    invoke-static {p0}, Lcom/meizu/settings/battery/BatteryInfo;->access$900(Lcom/meizu/settings/battery/BatteryInfo;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1cb
    return-void
.end method
