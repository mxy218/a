.class public Lcom/meizu/settings/widget/SearchResultLayout;
.super Landroid/widget/FrameLayout;
.source "SearchResultLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/SearchResultLayout$OnDispatchTouchEventListener;
    }
.end annotation


# instance fields
.field private mOnDispatchTouchEventListener:Lcom/meizu/settings/widget/SearchResultLayout$OnDispatchTouchEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchResultLayout;->mOnDispatchTouchEventListener:Lcom/meizu/settings/widget/SearchResultLayout$OnDispatchTouchEventListener;

    if-eqz v0, :cond_7

    .line 23
    invoke-interface {v0, p1}, Lcom/meizu/settings/widget/SearchResultLayout$OnDispatchTouchEventListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 25
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setOnDispatchTouchEventListener(Lcom/meizu/settings/widget/SearchResultLayout$OnDispatchTouchEventListener;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/meizu/settings/widget/SearchResultLayout;->mOnDispatchTouchEventListener:Lcom/meizu/settings/widget/SearchResultLayout$OnDispatchTouchEventListener;

    return-void
.end method
