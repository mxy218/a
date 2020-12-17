.class Lcom/android/systemui/screenshot/GlobalScreenshot$11;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotAlphaAnim(Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$isIn:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)V
    .registers 3

    .line 1288
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-boolean p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->val$isIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1321
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$502(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1306
    iget-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->val$isIn:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 1307
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1400(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 1308
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_37

    .line 1310
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$502(Lcom/android/systemui/screenshot/GlobalScreenshot;Z)Z

    .line 1311
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1313
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->onRefreshThumb()V

    .line 1314
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_37
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "GlobalScreenshot"

    const-string v0, "createScreenshotAlphaOutAnim onAnimationStart"

    .line 1291
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->val$isIn:Z

    if-eqz p1, :cond_3c

    .line 1293
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1294
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1295
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 1296
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1297
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$11;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_3c
    return-void
.end method
