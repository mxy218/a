.class Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;
.super Landroid/os/AsyncTask;
.source "LockscreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    .registers 2

    .line 202
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->access$000(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 195
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;)V
    .registers 5

    .line 209
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 213
    :cond_a
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success:Z

    if-eqz v0, :cond_34

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->access$102(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Z)Z

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->access$202(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->access$300(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_27

    move p1, v1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    .line 217
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->access$400(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    .line 220
    :cond_34
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->access$502(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 195
    check-cast p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->onPostExecute(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;)V

    return-void
.end method
