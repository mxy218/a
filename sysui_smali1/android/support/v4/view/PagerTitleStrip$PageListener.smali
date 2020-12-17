.class Landroid/support/v4/view/PagerTitleStrip$PageListener;
.super Landroid/database/DataSetObserver;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Landroid/support/v4/view/PagerTitleStrip;


# direct methods
.method constructor <init>(Landroid/support/v4/view/PagerTitleStrip;)V
    .registers 2

    .line 475
    iput-object p1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .registers 4

    .line 506
    iget-object p0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {p0, p2, p3}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public onChanged()V
    .registers 4

    .line 511
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 513
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 514
    :goto_1e
    iget-object p0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    .line 500
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    const/high16 p3, 0x3f000000  # 0.5f

    cmpl-float p3, p2, p3

    if-lez p3, :cond_8

    add-int/lit8 p1, p1, 0x1

    .line 484
    :cond_8
    iget-object p0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    .line 489
    iget p1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->mScrollState:I

    if-nez p1, :cond_2e

    .line 491
    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v0, p1, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 493
    iget-object p1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget p1, p1, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_21

    goto :goto_22

    :cond_21
    move p1, v0

    .line 494
    :goto_22
    iget-object p0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    :cond_2e
    return-void
.end method
