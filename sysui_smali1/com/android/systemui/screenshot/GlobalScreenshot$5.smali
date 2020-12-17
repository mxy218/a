.class Lcom/android/systemui/screenshot/GlobalScreenshot$5;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->dismissWithScaleFadeAnim()V
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

    .line 1089
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1097
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 1098
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1100
    :cond_23
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_40

    .line 1101
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1103
    :cond_40
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_5d

    .line 1104
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1106
    :cond_5d
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 1107
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    :cond_70
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mData:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    if-eqz p1, :cond_84

    iget-object p1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->deleteIntent:Landroid/content/Intent;

    if-eqz p1, :cond_84

    .line 1110
    new-instance p1, Lcom/android/systemui/screenshot/GlobalScreenshot$5$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$5$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$5;)V

    const-string p0, ""

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/AsyncTaskUtil;->doAsync(Ljava/lang/String;Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;)V

    :cond_84
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
