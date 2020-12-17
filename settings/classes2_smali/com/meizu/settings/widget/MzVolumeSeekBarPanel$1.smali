.class Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$1;
.super Ljava/lang/Object;
.source "MzVolumeSeekBarPanel.java"

# interfaces
.implements Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$1;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .registers 3

    return-void
.end method

.method public onSampleStarting(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Z
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$1;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-static {v0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->access$200(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 126
    iget-object p0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$1;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-static {p0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->access$200(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$Callback;->onSampleStarting(Lcom/meizu/settings/widget/MzSeekBarVolumizer;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method
