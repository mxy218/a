.class public Lcom/meizu/settings/utils/cache/ImageWorker$CacheAsyncTask;
.super Landroid/os/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/utils/cache/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CacheAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/utils/cache/ImageWorker;


# direct methods
.method protected constructor <init>(Lcom/meizu/settings/utils/cache/ImageWorker;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/meizu/settings/utils/cache/ImageWorker$CacheAsyncTask;->this$0:Lcom/meizu/settings/utils/cache/ImageWorker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 250
    invoke-virtual {p0, p1}, Lcom/meizu/settings/utils/cache/ImageWorker$CacheAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 3

    const/4 v0, 0x0

    .line 254
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_11

    .line 256
    :cond_c
    iget-object p0, p0, Lcom/meizu/settings/utils/cache/ImageWorker$CacheAsyncTask;->this$0:Lcom/meizu/settings/utils/cache/ImageWorker;

    invoke-virtual {p0}, Lcom/meizu/settings/utils/cache/ImageWorker;->clearCacheInternal()V

    :goto_11
    const/4 p0, 0x0

    return-object p0
.end method
