.class Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$26;
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

.field final synthetic val$animatorSet:Landroid/animation/AnimatorSet;

.field final synthetic val$peekViewAnim:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V
    .registers 4

    .line 1300
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$26;->this$0:Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;

    iput-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$26;->val$peekViewAnim:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$26;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1303
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$26;->val$peekViewAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1304
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$26;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
