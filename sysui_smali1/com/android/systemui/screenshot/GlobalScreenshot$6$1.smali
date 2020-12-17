.class Lcom/android/systemui/screenshot/GlobalScreenshot$6$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$6;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$6;)V
    .registers 2

    .line 1163
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground(Ljava/lang/Object;)V
    .registers 3

    .line 1172
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 1173
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mData:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->shareIntent:Landroid/content/Intent;

    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startShareView(Landroid/content/Intent;)V

    :cond_1d
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
