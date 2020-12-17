.class Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppPeekAndPopLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;


# direct methods
.method constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;)V
    .registers 2

    .line 1420
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29$2;->this$1:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1423
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29$2;->this$1:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;

    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    return-void
.end method
