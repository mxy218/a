.class public Lcom/android/systemui/qs/NonInterceptingScrollView;
.super Landroid/widget/ScrollView;
.source "NonInterceptingScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_11

    :cond_7
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 41
    :cond_11
    :goto_11
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
