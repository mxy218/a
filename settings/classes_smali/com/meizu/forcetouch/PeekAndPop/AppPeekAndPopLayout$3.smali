.class Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$3;
.super Ljava/lang/Object;
.source "AppPeekAndPopLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->startPeekAndPop(Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;


# direct methods
.method constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V
    .registers 2

    .line 281
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    iget-object v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget-object v1, v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekView:Ljava/lang/ref/WeakReference;

    iput-object v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    .line 285
    iget-object v0, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 286
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$3;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    return-void
.end method
