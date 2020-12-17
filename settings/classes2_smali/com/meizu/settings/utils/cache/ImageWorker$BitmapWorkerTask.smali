.class Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/utils/cache/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private isNullBitmap:Z

.field private mData:Ljava/lang/Object;

.field final synthetic this$0:Lcom/meizu/settings/utils/cache/ImageWorker;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/utils/cache/ImageWorker;Ljava/lang/Object;Landroid/widget/ImageView;)V
    .registers 4

    .line 143
    iput-object p1, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/meizu/settings/utils/cache/ImageWorker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    .line 145
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;)Z
    .registers 1

    .line 136
    iget-boolean p0, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->isNullBitmap:Z

    return p0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 213
    invoke-static {v0}, Lcom/meizu/settings/utils/cache/ImageWorker;->access$600(Landroid/widget/ImageView;)Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;

    move-result-object v1

    if-ne p0, v1, :cond_f

    return-object v0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 4

    .line 154
    iget-object p1, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/meizu/settings/utils/cache/ImageWorker;

    invoke-static {v0}, Lcom/meizu/settings/utils/cache/ImageWorker;->access$200(Lcom/meizu/settings/utils/cache/ImageWorker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 158
    :catch_d
    :goto_d
    :try_start_d
    iget-object v1, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/meizu/settings/utils/cache/ImageWorker;

    iget-boolean v1, v1, Lcom/meizu/settings/utils/cache/ImageWorker;->mPauseWork:Z

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_56

    if-nez v1, :cond_23

    .line 160
    :try_start_19
    iget-object v1, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/meizu/settings/utils/cache/ImageWorker;

    invoke-static {v1}, Lcom/meizu/settings/utils/cache/ImageWorker;->access$200(Lcom/meizu/settings/utils/cache/ImageWorker;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_22} :catch_d
    .catchall {:try_start_19 .. :try_end_22} :catchall_56

    goto :goto_d

    .line 164
    :cond_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_56

    .line 166
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-direct {p0}, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/meizu/settings/utils/cache/ImageWorker;

    invoke-static {v0}, Lcom/meizu/settings/utils/cache/ImageWorker;->access$300(Lcom/meizu/settings/utils/cache/ImageWorker;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 167
    iget-object v0, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/meizu/settings/utils/cache/ImageWorker;

    iget-object v1, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/utils/cache/ImageWorker;->processBitmap(Ljava/lang/Object;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    if-eqz v0, :cond_55

    .line 172
    iget-object v1, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/meizu/settings/utils/cache/ImageWorker;

    invoke-static {v1}, Lcom/meizu/settings/utils/cache/ImageWorker;->access$400(Lcom/meizu/settings/utils/cache/ImageWorker;)Lcom/meizu/settings/utils/cache/ImageCache;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 173
    iget-object p0, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/meizu/settings/utils/cache/ImageWorker;

    invoke-static {p0}, Lcom/meizu/settings/utils/cache/ImageWorker;->access$400(Lcom/meizu/settings/utils/cache/ImageWorker;)Lcom/meizu/settings/utils/cache/ImageCache;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/utils/cache/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_55
    return-object v0

    :catchall_56
    move-exception p0

    .line 164
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 136
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled(Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 2

    .line 205
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 206
    iget-object p1, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/meizu/settings/utils/cache/ImageWorker;

    invoke-static {p1}, Lcom/meizu/settings/utils/cache/ImageWorker;->access$200(Lcom/meizu/settings/utils/cache/ImageWorker;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 207
    :try_start_a
    iget-object p0, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/meizu/settings/utils/cache/ImageWorker;

    invoke-static {p0}, Lcom/meizu/settings/utils/cache/ImageWorker;->access$200(Lcom/meizu/settings/utils/cache/ImageWorker;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 208
    monitor-exit p1

    return-void

    :catchall_15
    move-exception p0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw p0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    .line 136
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->onCancelled(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 4

    .line 186
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/meizu/settings/utils/cache/ImageWorker;

    invoke-static {v0}, Lcom/meizu/settings/utils/cache/ImageWorker;->access$300(Lcom/meizu/settings/utils/cache/ImageWorker;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const/4 p1, 0x0

    .line 190
    :cond_f
    invoke-direct {p0}, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_1c

    if-eqz v0, :cond_1c

    .line 195
    iget-object v1, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->this$0:Lcom/meizu/settings/utils/cache/ImageWorker;

    invoke-static {v1, v0, p1}, Lcom/meizu/settings/utils/cache/ImageWorker;->access$500(Lcom/meizu/settings/utils/cache/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_1c
    if-nez p1, :cond_21

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->isNullBitmap:Z

    :cond_21
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 136
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/utils/cache/ImageWorker$BitmapWorkerTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
