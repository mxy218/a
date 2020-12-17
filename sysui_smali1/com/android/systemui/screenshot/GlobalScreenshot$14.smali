.class Lcom/android/systemui/screenshot/GlobalScreenshot$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->createScreenshotTranslateOutAnimat(Z)Landroid/animation/AnimatorSet;
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

    .line 1381
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1384
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1500(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 1385
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1390
    :cond_2b
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 1391
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1393
    :cond_3e
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->unRegistSreenStatusReceiver()V

    .line 1394
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1600(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    return-void
.end method
