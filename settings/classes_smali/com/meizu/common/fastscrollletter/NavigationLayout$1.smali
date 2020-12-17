.class Lcom/meizu/common/fastscrollletter/NavigationLayout$1;
.super Ljava/lang/Object;
.source "NavigationLayout.java"

# interfaces
.implements Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/fastscrollletter/NavigationLayout;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;


# direct methods
.method constructor <init>(Lcom/meizu/common/fastscrollletter/NavigationLayout;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListViewFirstVisiblePosition()I
    .registers 1

    .line 245
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->getListViewFirstVisiblePosition()I

    move-result p0

    return p0
.end method

.method public getListViewHeightNow()I
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->getListViewHeightNow()I

    move-result p0

    return p0
.end method

.method public getListViewItemCount()I
    .registers 1

    .line 250
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->getListViewItemCount()I

    move-result p0

    return p0
.end method

.method public getListViewLastVisiblePosition()I
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->getListViewLastVisiblePosition()I

    move-result p0

    return p0
.end method

.method public hideOverlay()V
    .registers 5

    .line 221
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 223
    new-instance v1, Lcom/meizu/common/fastscrollletter/NavigationLayout$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$1$1;-><init>(Lcom/meizu/common/fastscrollletter/NavigationLayout$1;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    return-void
.end method

.method public location(Ljava/lang/String;I)V
    .registers 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$000(Lcom/meizu/common/fastscrollletter/NavigationLayout;)I

    move-result v0

    if-ne v0, p2, :cond_11

    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$000(Lcom/meizu/common/fastscrollletter/NavigationLayout;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_62

    :cond_11
    move-object v1, p1

    move-object v2, v1

    move p1, p2

    move v0, p1

    :goto_15
    if-gez p1, :cond_23

    .line 176
    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v3}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$200(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_62

    .line 177
    :cond_23
    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v3}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$300(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 178
    iget-object p1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p1, p2}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$002(Lcom/meizu/common/fastscrollletter/NavigationLayout;I)I

    .line 180
    iget-object p1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p1, v2}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$400(Lcom/meizu/common/fastscrollletter/NavigationLayout;Ljava/lang/String;)V

    .line 181
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->location(Ljava/lang/String;)V

    goto :goto_62

    .line 184
    :cond_43
    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v3}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$300(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 185
    iget-object p1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p1, p2}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$002(Lcom/meizu/common/fastscrollletter/NavigationLayout;I)I

    .line 187
    iget-object p1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p1, v1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$400(Lcom/meizu/common/fastscrollletter/NavigationLayout;Ljava/lang/String;)V

    .line 188
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->location(Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-void

    :cond_63
    if-ltz p1, :cond_7d

    .line 192
    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v3}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$200(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_7d

    .line 193
    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v2}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$200(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_7d
    if-ltz v0, :cond_97

    .line 195
    iget-object v3, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v3}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$200(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_97

    .line 196
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$200(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_97
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15
.end method

.method public showOverlay()V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$600(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->hideVerticalScrollBar()V

    return-void
.end method

.method public stopListViewScroll()V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$002(Lcom/meizu/common/fastscrollletter/NavigationLayout;I)I

    .line 167
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->stopListViewScroll()V

    return-void
.end method

.method public touchY(F)V
    .registers 5

    .line 204
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$500(Lcom/meizu/common/fastscrollletter/NavigationLayout;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p1, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    .line 205
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$600(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_6a

    .line 206
    :cond_1a
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$500(Lcom/meizu/common/fastscrollletter/NavigationLayout;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$700(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v2}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$500(Lcom/meizu/common/fastscrollletter/NavigationLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_57

    .line 207
    iget-object p1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$600(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$700(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$500(Lcom/meizu/common/fastscrollletter/NavigationLayout;)I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_6a

    .line 209
    :cond_57
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$600(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$500(Lcom/meizu/common/fastscrollletter/NavigationLayout;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    :goto_6a
    return-void
.end method
