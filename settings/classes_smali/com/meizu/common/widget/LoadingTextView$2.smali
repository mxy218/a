.class Lcom/meizu/common/widget/LoadingTextView$2;
.super Ljava/lang/Object;
.source "LoadingTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/LoadingTextView;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/LoadingTextView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/LoadingTextView;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingTextView$2;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 240
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingTextView$2;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-static {p1}, Lcom/meizu/common/widget/LoadingTextView;->access$100(Lcom/meizu/common/widget/LoadingTextView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 241
    iget-object p0, p0, Lcom/meizu/common/widget/LoadingTextView$2;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-static {p0, p1}, Lcom/meizu/common/widget/LoadingTextView;->access$200(Lcom/meizu/common/widget/LoadingTextView;F)V

    return-void
.end method
