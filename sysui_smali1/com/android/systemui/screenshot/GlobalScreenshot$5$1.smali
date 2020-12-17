.class Lcom/android/systemui/screenshot/GlobalScreenshot$5$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot$5;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$5;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$5;)V
    .registers 2

    .line 1110
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground(Ljava/lang/Object;)V
    .registers 4

    .line 1118
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mData:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->path:Ljava/lang/String;

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalScreenshot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/screenshot/ScreenshotTempUtils;->deleteOriginPic(Landroid/content/Context;Ljava/lang/String;)V

    .line 1121
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot$H;

    move-result-object p0

    const/4 p1, 0x4

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onPostExecute()V
    .registers 1

    return-void
.end method

.method public onPreExecute()V
    .registers 1

    return-void
.end method
