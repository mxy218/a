.class Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$3;
.super Ljava/lang/Object;
.source "MzVolumeSeekBarPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;
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

    .line 180
    iput-object p1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$3;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 183
    iget-object v0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$3;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-static {v0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->access$400(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a07cc

    if-ne v1, v2, :cond_16

    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 186
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a07cd

    if-ne p1, v1, :cond_21

    add-int/lit8 v0, v0, 0x1

    :cond_21
    :goto_21
    if-ltz v0, :cond_4d

    .line 189
    iget-object p1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$3;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-static {p1}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->access$500(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)I

    move-result p1

    if-gt v0, p1, :cond_4d

    .line 190
    iget-object p1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$3;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-static {p1}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->access$400(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 191
    iget-object p1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$3;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-static {p1}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->access$600(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    move-result-object p1

    iget-object v1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$3;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-static {v1}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->access$400(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)Landroid/widget/SeekBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 192
    iget-object p0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$3;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-static {p0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->access$600(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)Lcom/meizu/settings/widget/MzSeekBarVolumizer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;->startSample()V

    :cond_4d
    return-void
.end method
