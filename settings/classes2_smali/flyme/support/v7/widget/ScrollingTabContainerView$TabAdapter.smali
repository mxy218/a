.class Lflyme/support/v7/widget/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/ScrollingTabContainerView;)V
    .registers 2

    .line 860
    iput-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/ScrollingTabContainerView;Lflyme/support/v7/widget/ScrollingTabContainerView$1;)V
    .registers 3

    .line 860
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lflyme/support/v7/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 863
    iget-object p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-static {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$100(Lflyme/support/v7/widget/ScrollingTabContainerView;)Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 868
    iget-object p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-static {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$100(Lflyme/support/v7/widget/ScrollingTabContainerView;)Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->getTab()Lflyme/support/v7/app/ActionBar$Tab;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    if-nez p2, :cond_10

    .line 879
    iget-object p2, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/app/ActionBar$Tab;

    const/4 p1, 0x1

    invoke-static {p2, p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$700(Lflyme/support/v7/widget/ScrollingTabContainerView;Lflyme/support/v7/app/ActionBar$Tab;Z)Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    goto :goto_1c

    .line 881
    :cond_10
    move-object p3, p2

    check-cast p3, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/app/ActionBar$Tab;

    invoke-virtual {p3, p0}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->bindTab(Lflyme/support/v7/app/ActionBar$Tab;)V

    :goto_1c
    return-object p2
.end method
