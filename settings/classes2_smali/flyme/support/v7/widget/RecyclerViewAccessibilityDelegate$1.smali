.class Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    .line 87
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 88
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 89
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 90
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_20
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    .line 96
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 99
    :cond_8
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 100
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method
