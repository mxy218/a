.class Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$2;
.super Ljava/lang/Object;
.source "NavigationBarDetailSimpleActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mLastSelectedPosition:I

.field final synthetic this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$2;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 152
    iput p1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$2;->mLastSelectedPosition:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    .line 161
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$2;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    iget-object v0, v0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mIdicator:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$2;->mLastSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$2;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    iget-object v0, v0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mIdicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 163
    iput p1, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$2;->mLastSelectedPosition:I

    .line 167
    :goto_1c
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$2;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    iget-object v0, v0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_56

    .line 168
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$2;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    iget-object v0, v0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->mViewList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 169
    iget-object v2, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$2;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    const v3, 0x7f0a01fe

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/gesture/TextureVideoView;

    invoke-static {v2, v0}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->access$302(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;Lcom/meizu/settings/gesture/TextureVideoView;)Lcom/meizu/settings/gesture/TextureVideoView;

    if-eq v1, p1, :cond_4a

    .line 171
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$2;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    invoke-static {v0}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->access$300(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;)Lcom/meizu/settings/gesture/TextureVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/gesture/TextureVideoView;->pause()V

    goto :goto_53

    .line 173
    :cond_4a
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$2;->this$0:Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;

    invoke-static {v0}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;->access$300(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;)Lcom/meizu/settings/gesture/TextureVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/gesture/TextureVideoView;->start()V

    :goto_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_56
    return-void
.end method
