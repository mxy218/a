.class Lcom/android/systemui/volume/VolumePanel$21;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 2

    .line 2928
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$21;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/meizu/common/widget/VerticalSeekBar;IZ)V
    .registers 6

    .line 2931
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 2932
    instance-of v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v0, :cond_1e

    .line 2933
    check-cast p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2934
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$21;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/volume/VolumePanel;->access$2500(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    if-eqz p3, :cond_1e

    add-int/lit8 p2, p2, 0x32

    .line 2936
    div-int/lit8 p2, p2, 0x64

    .line 2937
    iget-object p3, p0, Lcom/android/systemui/volume/VolumePanel$21;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const v0, 0x8011

    invoke-static {p3, p1, p2, v0}, Lcom/android/systemui/volume/VolumePanel;->access$3600(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    .line 2941
    :cond_1e
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$21;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumePanel;->access$600(Lcom/android/systemui/volume/VolumePanel;)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/meizu/common/widget/VerticalSeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Lcom/meizu/common/widget/VerticalSeekBar;)V
    .registers 2

    return-void
.end method
