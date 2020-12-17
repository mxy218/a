.class Lcom/meizu/settings/display/aod/NewAODStyleActivity$PreviewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "NewAODStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/aod/NewAODStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviewPagerAdapter"
.end annotation


# instance fields
.field private mContentViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/display/aod/NewAODStyleActivity;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$PreviewPagerAdapter;->this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 214
    iput-object p2, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$PreviewPagerAdapter;->mContentViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 230
    iget-object p0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$PreviewPagerAdapter;->mContentViews:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$PreviewPagerAdapter;->mContentViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$PreviewPagerAdapter;->mContentViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    iget-object p0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$PreviewPagerAdapter;->mContentViews:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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
