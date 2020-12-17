.class Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot$1;->enterGallery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$1;)V
    .registers 2

    .line 627
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground(Ljava/lang/Object;)V
    .registers 6

    .line 635
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v0, p1, Lcom/android/systemui/screenshot/GlobalScreenshot;->mData:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    if-eqz v0, :cond_73

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->path:Ljava/lang/String;

    if-eqz v0, :cond_73

    .line 636
    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 637
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 638
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string v2, "quickScreenshot"

    .line 639
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.meizu.media.gallery.LONG_SCREENSHOT_EDIT"

    .line 640
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 642
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    iget-object v2, v2, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v2, v2, Lcom/android/systemui/screenshot/GlobalScreenshot;->mData:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v2, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->path:Ljava/lang/String;

    const-string v3, "filePath"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    iget-object v2, v2, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 644
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    iget-object v2, v2, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotThumbnailView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->getBitmapRect()Landroid/graphics/Rect;

    move-result-object v2

    const-string v3, "dst"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_5c
    const/high16 v2, 0x10000000

    .line 646
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 647
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 648
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_73
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
