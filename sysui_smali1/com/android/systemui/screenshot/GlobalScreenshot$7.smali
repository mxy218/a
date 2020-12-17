.class Lcom/android/systemui/screenshot/GlobalScreenshot$7;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->createScaleAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .registers 2

    .line 1190
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1194
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object v0

    const v1, 0x3f8ccccd  # 1.1f

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->onAnimationUpdate(F)V

    .line 1197
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->onFadeAnimUpdate(F)V

    .line 1198
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot$H;

    move-result-object p0

    const/4 v0, 0x1

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
