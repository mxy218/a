.class Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;
.super Ljava/lang/Object;
.source "ScreenZoomAndFontSizeSettings.java"

# interfaces
.implements Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/meizu/common/widget/EnhanceSeekBar;I)V
    .registers 6

    .line 215
    iget-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {v0}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$000(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Lcom/meizu/common/widget/EnhanceSeekBar;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6a

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onProgressChanged... curerentZoomingProgress = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {v0}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$400(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", progress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mIsScreenZoomSeekbarDragging:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    .line 217
    invoke-static {v0}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$100(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenZoomAndFontSizeSettings"

    .line 216
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {p1}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$400(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)I

    move-result p1

    if-eq p1, p2, :cond_69

    iget-object p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {p1}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$100(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto :goto_69

    .line 223
    :cond_4d
    iget-object p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {p1, p2}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$402(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;I)I

    .line 224
    iget-object p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {p1, v1}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$102(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;Z)Z

    .line 227
    iget-object p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {p1}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$200(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Lcom/meizu/common/widget/EnhanceSeekBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setEnabled(Z)V

    .line 228
    iget-object p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    iget p1, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentFontSizeIndex:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->setPreviewLayer(IIZ)V

    goto :goto_ba

    :cond_69
    :goto_69
    return-void

    .line 229
    :cond_6a
    iget-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {v0}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$200(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Lcom/meizu/common/widget/EnhanceSeekBar;

    move-result-object v0

    if-ne p1, v0, :cond_ba

    .line 230
    iget-object p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    iget v0, p1, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentFontSizeIndex:I

    if-eq v0, p2, :cond_ba

    invoke-static {p1}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$300(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Z

    move-result p1

    if-nez p1, :cond_7f

    goto :goto_ba

    .line 233
    :cond_7f
    iget-object p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {p1, v1}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$302(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;Z)Z

    .line 234
    iget-object p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {p1}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$000(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Lcom/meizu/common/widget/EnhanceSeekBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setEnabled(Z)V

    .line 235
    iget-object p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {p1}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$200(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Lcom/meizu/common/widget/EnhanceSeekBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setEnabled(Z)V

    .line 236
    iget-object p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {p1}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$500(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 237
    iget-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    iget v2, v0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentScreenZoomIndex:I

    invoke-virtual {v0, p2, v2, v1}, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->setPreviewLayer(IIZ)V

    .line 238
    iget-object p2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {p2}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$000(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Lcom/meizu/common/widget/EnhanceSeekBar;

    move-result-object p2

    new-instance v0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2$1;-><init>(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;F)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    :cond_ba
    :goto_ba
    return-void
.end method

.method public onProgressDragging(Lcom/meizu/common/widget/EnhanceSeekBar;I)V
    .registers 5

    .line 205
    iget-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {v0}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$000(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Lcom/meizu/common/widget/EnhanceSeekBar;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_32

    .line 206
    iget-object p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {p1, v1}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$102(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;Z)Z

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onProgressDragging, currentProgress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    iget p0, p0, Lcom/meizu/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentScreenZoomIndex:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", progress:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenZoomAndFontSizeSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 208
    :cond_32
    iget-object p2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {p2}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$200(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Lcom/meizu/common/widget/EnhanceSeekBar;

    move-result-object p2

    if-ne p1, p2, :cond_3f

    .line 209
    iget-object p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {p0, v1}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$302(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;Z)Z

    :cond_3f
    :goto_3f
    return-void
.end method

.method public onStartTrackingTouch(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .registers 2

    return-void
.end method
