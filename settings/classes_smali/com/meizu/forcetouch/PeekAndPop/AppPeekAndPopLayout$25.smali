.class Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$25;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppPeekAndPopLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animPeekToNormal()V
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

    .line 1284
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$25;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1287
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$25;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    iget-object p1, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListener:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

    if-eqz p1, :cond_9

    .line 1288
    invoke-interface {p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;->cancel()V

    .line 1291
    :cond_9
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$25;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    iget-object v0, p1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_12

    .line 1292
    invoke-static {p1, v0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->access$200(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Landroid/app/Activity;)V

    .line 1293
    :cond_12
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$25;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->reset()V

    return-void
.end method
