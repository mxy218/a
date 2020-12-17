.class Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field mCurPos:I

.field mState:I

.field final synthetic this$0:Lcom/meizu/settings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ManageApplications;)V
    .registers 2

    .line 663
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 665
    iput p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->mCurPos:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 707
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 3

    .line 743
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 744
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->getCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_f

    const/4 p0, 0x0

    .line 745
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    goto :goto_13

    :cond_f
    const/4 p0, 0x2

    .line 747
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :goto_13
    return-void
.end method

.method public getCount()I
    .registers 1

    .line 671
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications;->access$300(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 2

    .line 717
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 2

    .line 723
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications;->access$300(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6

    .line 676
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications;->access$300(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    .line 677
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications;->access$400(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v1}, Lcom/meizu/settings/applications/ManageApplications;->access$500(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v2}, Lcom/meizu/settings/applications/ManageApplications;->access$600(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 678
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0a04c3

    .line 679
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 680
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$600(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0a02c4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/settings/applications/ManageApplications;->access$702(Lcom/meizu/settings/applications/ManageApplications;Landroid/view/View;)Landroid/view/View;

    .line 681
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$700(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 682
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$700(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter$1;-><init>(Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_51
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

.method public onPageScrollStateChanged(I)V
    .registers 3

    .line 754
    iput p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->mState:I

    if-nez p1, :cond_1e

    .line 757
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_12

    .line 758
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    iget v0, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->mCurPos:I

    invoke-virtual {p1, v0}, Lcom/meizu/settings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 762
    :cond_12
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListType:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1e

    .line 763
    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications;->access$1500(Lcom/meizu/settings/applications/ManageApplications;)V

    :cond_1e
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .line 729
    iget-object p3, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p3}, Lcom/meizu/settings/applications/ManageApplications;->access$1400(Lcom/meizu/settings/applications/ManageApplications;)Lflyme/support/v7/app/ActionBar;

    move-result-object p3

    if-eqz p3, :cond_13

    .line 730
    iget-object p3, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p3}, Lcom/meizu/settings/applications/ManageApplications;->access$1400(Lcom/meizu/settings/applications/ManageApplications;)Lflyme/support/v7/app/ActionBar;

    move-result-object p3

    iget p0, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->mState:I

    invoke-virtual {p3, p1, p2, p0}, Lflyme/support/v7/app/ActionBar;->setTabScrolled(IFI)V

    :cond_13
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .line 737
    iput p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->mCurPos:I

    .line 738
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications;->access$1400(Lcom/meizu/settings/applications/ManageApplications;)Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications;->access$1400(Lcom/meizu/settings/applications/ManageApplications;)Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/ActionBar;->getTabAt(I)Lflyme/support/v7/app/ActionBar$Tab;

    move-result-object p0

    invoke-virtual {v0, p0}, Lflyme/support/v7/app/ActionBar;->selectTab(Lflyme/support/v7/app/ActionBar$Tab;)V

    return-void
.end method
