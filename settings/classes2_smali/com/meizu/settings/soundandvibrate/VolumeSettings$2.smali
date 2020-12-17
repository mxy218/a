.class Lcom/meizu/settings/soundandvibrate/VolumeSettings$2;
.super Ljava/lang/Object;
.source "VolumeSettings.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/VolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/VolumeSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$2;->this$0:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioFocusChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolumeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v0

    :goto_1c
    if-eqz v1, :cond_27

    .line 83
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/VolumeSettings$2;->this$0:Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/VolumeSettings;->access$200(Lcom/meizu/settings/soundandvibrate/VolumeSettings;)Lcom/meizu/settings/soundandvibrate/VolumeSettings$H;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_27
    return-void
.end method
