.class Lcom/meizu/common/widget/StretchSearchView$6;
.super Ljava/lang/Object;
.source "StretchSearchView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/StretchSearchView;->addPreDrawListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/StretchSearchView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/StretchSearchView;)V
    .registers 2

    .line 717
    iput-object p1, p0, Lcom/meizu/common/widget/StretchSearchView$6;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .line 719
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$6;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v0}, Lcom/meizu/common/widget/StretchSearchView;->access$500(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 721
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$6;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StretchSearchView;->onInitLayout()V

    .line 722
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$6;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v0}, Lcom/meizu/common/widget/StretchSearchView;->access$600(Lcom/meizu/common/widget/StretchSearchView;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 723
    iget-object p0, p0, Lcom/meizu/common/widget/StretchSearchView$6;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/StretchSearchView;->startStretch()V

    :cond_1f
    const/4 p0, 0x1

    return p0
.end method
