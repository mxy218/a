.class Lcom/android/systemui/screenshot/GlobalScreenshot$9;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 1216
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1220
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1221
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1222
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->setShadowAlpha(I)V

    .line 1224
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->onRefreshThumb()V

    .line 1225
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object p1

    const v0, 0x3f8ccccd  # 1.1f

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->onAnimationUpdate(F)V

    .line 1227
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$9;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->onFadeAnimUpdate(F)V

    return-void
.end method
