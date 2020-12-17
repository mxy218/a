.class Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;
.super Ljava/lang/Object;
.source "SliceLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;


# direct methods
.method constructor <init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V
    .registers 2

    .line 373
    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 377
    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v1, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    goto :goto_1f

    :cond_13
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v1, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mIntent:Landroid/content/Intent;

    .line 378
    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/content/Intent;)Landroidx/slice/Slice;

    move-result-object v0

    .line 379
    :goto_1f
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v1, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_3e

    if-eqz v0, :cond_3e

    .line 380
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    .line 381
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v1, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v2, v2, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v3, v3, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 383
    :cond_3e
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {v1, v0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$100(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Ljava/lang/Object;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_52

    :catch_44
    move-exception v0

    const-string v1, "SliceLiveData"

    const-string v2, "Error binding slice"

    .line 385
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$200(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Ljava/lang/Object;)V

    :goto_52
    return-void
.end method
