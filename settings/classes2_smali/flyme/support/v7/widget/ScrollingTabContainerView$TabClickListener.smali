.class Lflyme/support/v7/widget/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/ScrollingTabContainerView;)V
    .registers 2

    .line 887
    iput-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/ScrollingTabContainerView;Lflyme/support/v7/widget/ScrollingTabContainerView$1;)V
    .registers 3

    .line 887
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lflyme/support/v7/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 889
    move-object v0, p1

    check-cast v0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;

    .line 890
    invoke-virtual {v0}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->getTab()Lflyme/support/v7/app/ActionBar$Tab;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar$Tab;->select(Z)V

    .line 891
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$100(Lflyme/support/v7/widget/ScrollingTabContainerView;)Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v0, :cond_2e

    .line 893
    iget-object v4, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabClickListener;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-static {v4}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$100(Lflyme/support/v7/widget/ScrollingTabContainerView;)Lflyme/support/v7/widget/ScrollingTabContainerView$SlidingTabStrip;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v4, p1, :cond_27

    move v5, v1

    goto :goto_28

    :cond_27
    move v5, v2

    .line 894
    :goto_28
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2e
    return-void
.end method
