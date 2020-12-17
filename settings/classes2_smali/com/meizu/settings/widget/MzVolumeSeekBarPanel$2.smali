.class Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$2;
.super Lcom/meizu/settings/widget/MzSeekBarVolumizer;
.source "MzVolumeSeekBarPanel.java"


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
.method constructor <init>(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;Landroid/content/Context;ILandroid/net/Uri;Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;)V
    .registers 6

    .line 155
    iput-object p1, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$2;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/meizu/settings/widget/MzSeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/meizu/settings/widget/MzSeekBarVolumizer$Callback;)V

    return-void
.end method


# virtual methods
.method protected updateSeekBar()V
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel$2;->this$0:Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;

    invoke-static {p0}, Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;->access$100(Lcom/meizu/settings/widget/MzVolumeSeekBarPanel;)V

    return-void
.end method
