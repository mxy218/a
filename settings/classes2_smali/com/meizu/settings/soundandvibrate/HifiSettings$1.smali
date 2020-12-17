.class Lcom/meizu/settings/soundandvibrate/HifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "HifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/soundandvibrate/HifiSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/HifiSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/HifiSettings;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/HifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const/4 p1, 0x0

    const-string v0, "state"

    .line 82
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HifiSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2b

    .line 85
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/HifiSettings;

    invoke-static {p1, v0}, Lcom/meizu/settings/soundandvibrate/HifiSettings;->access$002(Lcom/meizu/settings/soundandvibrate/HifiSettings;Z)Z

    .line 86
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/HifiSettings;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/HifiSettings;->access$100(Lcom/meizu/settings/soundandvibrate/HifiSettings;)V

    goto :goto_35

    .line 88
    :cond_2b
    iget-object p2, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/HifiSettings;

    invoke-static {p2, p1}, Lcom/meizu/settings/soundandvibrate/HifiSettings;->access$002(Lcom/meizu/settings/soundandvibrate/HifiSettings;Z)Z

    .line 89
    iget-object p2, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/HifiSettings;

    invoke-static {p2, p1}, Lcom/meizu/settings/soundandvibrate/HifiSettings;->access$202(Lcom/meizu/settings/soundandvibrate/HifiSettings;I)I

    .line 91
    :goto_35
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/HifiSettings$1;->this$0:Lcom/meizu/settings/soundandvibrate/HifiSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/HifiSettings;->access$300(Lcom/meizu/settings/soundandvibrate/HifiSettings;)V

    return-void
.end method
