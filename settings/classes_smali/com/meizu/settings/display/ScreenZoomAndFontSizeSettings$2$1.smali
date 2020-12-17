.class Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2$1;
.super Ljava/lang/Object;
.source "ScreenZoomAndFontSizeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->onProgressChanged(Lcom/meizu/common/widget/EnhanceSeekBar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;

.field final synthetic val$fonstSize:F


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;F)V
    .registers 3

    .line 238
    iput-object p1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2$1;->this$1:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;

    iput p2, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2$1;->val$fonstSize:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2$1;->this$1:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;

    iget-object v0, v0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    iget v1, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2$1;->val$fonstSize:F

    invoke-static {v0, v1}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$600(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;F)V

    .line 242
    iget-object v0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2$1;->this$1:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;

    iget-object v0, v0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {v0}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$000(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Lcom/meizu/common/widget/EnhanceSeekBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setEnabled(Z)V

    .line 243
    iget-object p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2$1;->this$1:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;

    iget-object p0, p0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings$2;->this$0:Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    invoke-static {p0}, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;->access$200(Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;)Lcom/meizu/common/widget/EnhanceSeekBar;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setEnabled(Z)V

    return-void
.end method
