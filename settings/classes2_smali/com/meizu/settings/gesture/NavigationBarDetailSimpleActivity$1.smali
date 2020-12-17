.class Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "NavigationBarDetailSimpleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 133
    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 11

    .line 121
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    iget-object v0, v0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    iget-object p1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    const v1, 0x7f0a01ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->access$002(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 124
    iget-object p1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    const v1, 0x7f0a0753

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->access$102(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 125
    iget-object p1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    const v1, 0x7f0a06d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->access$202(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 126
    iget-object p1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    const v1, 0x7f0a01fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-static {p1, v1}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->access$302(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;Lcom/meizu/settings/gesture/TextureVideoView;)Lcom/meizu/settings/gesture/TextureVideoView;

    .line 127
    iget-object v2, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    invoke-static {v2}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->access$000(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object p1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    invoke-static {p1}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->access$100(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object p1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    invoke-static {p1}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->access$200(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    invoke-static {p0}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->access$300(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;)Lcom/meizu/settings/gesture/TextureVideoView;

    move-result-object v7

    move v3, p2

    invoke-static/range {v2 .. v7}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->access$400(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;ILandroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/meizu/settings/gesture/TextureVideoView;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method
