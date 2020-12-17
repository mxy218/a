.class Lcom/meizu/common/fastscrollletter/NavigationView$1;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/fastscrollletter/NavigationView;->startAnimation(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/fastscrollletter/NavigationView;


# direct methods
.method constructor <init>(Lcom/meizu/common/fastscrollletter/NavigationView;)V
    .registers 2

    .line 621
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/NavigationView$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 624
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationView$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/meizu/common/fastscrollletter/NavigationView;->access$002(Lcom/meizu/common/fastscrollletter/NavigationView;I)I

    .line 625
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/NavigationView$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
