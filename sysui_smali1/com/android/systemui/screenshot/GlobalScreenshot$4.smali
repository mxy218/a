.class Lcom/android/systemui/screenshot/GlobalScreenshot$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnim(Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V
    .registers 3

    .line 1007
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->val$finisher:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 1010
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1011
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->val$finisher:Ljava/lang/Runnable;

    iget-object v1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mData:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-static {p1, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$900(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    .line 1012
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$4$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$4$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$4;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1023
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot$H;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
