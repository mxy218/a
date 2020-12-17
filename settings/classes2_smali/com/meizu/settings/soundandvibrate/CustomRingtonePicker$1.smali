.class Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomRingtonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$1;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 112
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " scanPath = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CustomRingtonePicker"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$1;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {p2}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$200(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)[Landroid/os/storage/StorageVolume;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_36
    if-ge v2, v0, :cond_7f

    aget-object v3, p2, v2

    .line 116
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/Music"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Ringtone"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7b

    goto :goto_7e

    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_7e
    :goto_7e
    const/4 v1, 0x1

    :cond_7f
    if-eqz v1, :cond_a1

    .line 124
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$1;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$400(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$1;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {p2}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$300(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$1;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$400(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$1;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$300(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a1
    return-void
.end method
