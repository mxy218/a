.class Lcom/meizu/common/widget/PraiseView$2$1;
.super Ljava/lang/Object;
.source "PraiseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/PraiseView$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/PraiseView$2;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/PraiseView$2;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView$2$1;->this$1:Lcom/meizu/common/widget/PraiseView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 278
    iget-object p0, p0, Lcom/meizu/common/widget/PraiseView$2$1;->this$1:Lcom/meizu/common/widget/PraiseView$2;

    iget-object p0, p0, Lcom/meizu/common/widget/PraiseView$2;->this$0:Lcom/meizu/common/widget/PraiseView;

    invoke-static {p0}, Lcom/meizu/common/widget/PraiseView;->access$300(Lcom/meizu/common/widget/PraiseView;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
