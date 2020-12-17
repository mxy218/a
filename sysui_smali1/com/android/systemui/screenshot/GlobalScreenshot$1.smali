.class Lcom/android/systemui/screenshot/GlobalScreenshot$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V
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

    .line 573
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterGallery()V
    .registers 3

    .line 617
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 620
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 622
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->collcetScreenshotEnter(Landroid/content/Context;)V

    .line 623
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 624
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 627
    :cond_4a
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$1;)V

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/android/systemui/screenshot/AsyncTaskUtil;->doAsync(Ljava/lang/String;Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;)V

    .line 658
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "3"

    invoke-static {p0, v0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->collectScreenshotWindow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public hide()V
    .registers 2

    .line 663
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot$H;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDeleteClicked()V
    .registers 2

    .line 585
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 586
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->collectScreenshotWindow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onMove(F)V
    .registers 4

    .line 609
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot$H;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 610
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 611
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->onTouchYUpdate(F)V

    :cond_1b
    return-void
.end method

.method public onShareClicked()V
    .registers 3

    .line 576
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->collectScreenshotWindow(Landroid/content/Context;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "GlobalScreenshot"

    const-string/jumbo v1, "share send"

    .line 578
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot$H;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_29
    return-void
.end method

.method public onTouchDown()V
    .registers 2

    .line 591
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot$H;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onTouchUp(F)V
    .registers 3

    .line 598
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x2

    .line 599
    iput v0, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x0

    .line 600
    iput v0, p1, Landroid/os/Message;->what:I

    .line 601
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot$H;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
