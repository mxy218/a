.class Lcom/meizu/common/widget/CircularProgressButton$1;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"

# interfaces
.implements Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CircularProgressButton;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CircularProgressButton;)V
    .registers 2

    .line 806
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton$1;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 3

    .line 809
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$1;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$002(Lcom/meizu/common/widget/CircularProgressButton;Z)Z

    .line 810
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$1;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 812
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$1;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-object p0, p0, Lcom/meizu/common/widget/CircularProgressButton$1;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {p0}, Landroid/widget/Button;->requestLayout()V

    return-void
.end method
