.class Lcom/android/systemui/screenshot/ScreenshotShareReceiver$1;
.super Ljava/lang/Object;
.source "ScreenshotShareReceiver.java"

# interfaces
.implements Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->startShare(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotShareReceiver;

.field final synthetic val$orginPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotShareReceiver;Ljava/lang/String;)V
    .registers 3

    .line 41
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotShareReceiver;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver$1;->val$orginPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground(Ljava/lang/Object;)V
    .registers 4

    const-string p1, ""

    .line 50
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotShareReceiver;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->access$000(Lcom/android/systemui/screenshot/ScreenshotShareReceiver;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 52
    :try_start_a
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver$1;->val$orginPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotTempUtils;->copyPic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotShareReceiver;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->access$000(Lcom/android/systemui/screenshot/ScreenshotShareReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver$1;->val$orginPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotTempUtils;->deleteOriginPic(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 57
    :goto_20
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShareReceiver$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotShareReceiver;

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotShareReceiver;->access$100(Lcom/android/systemui/screenshot/ScreenshotShareReceiver;Ljava/lang/String;)V

    :cond_25
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
