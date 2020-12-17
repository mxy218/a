.class Lcom/meizu/common/widget/LoadingAnimationView$1$1;
.super Ljava/lang/Object;
.source "LoadingAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/LoadingAnimationView$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/LoadingAnimationView$1;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/LoadingAnimationView$1;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingAnimationView$1$1;->this$1:Lcom/meizu/common/widget/LoadingAnimationView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 210
    iget-object p0, p0, Lcom/meizu/common/widget/LoadingAnimationView$1$1;->this$1:Lcom/meizu/common/widget/LoadingAnimationView$1;

    iget-object p0, p0, Lcom/meizu/common/widget/LoadingAnimationView$1;->this$0:Lcom/meizu/common/widget/LoadingAnimationView;

    invoke-static {p0}, Lcom/meizu/common/widget/LoadingAnimationView;->access$000(Lcom/meizu/common/widget/LoadingAnimationView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
