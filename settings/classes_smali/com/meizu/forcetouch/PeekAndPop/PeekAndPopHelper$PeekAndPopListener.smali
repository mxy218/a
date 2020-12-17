.class public interface abstract Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;
.super Ljava/lang/Object;
.source "PeekAndPopHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PeekAndPopListener"
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract onPeekMenuItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method public abstract onPulldownViewChanged()V
.end method

.method public abstract peek(Landroid/view/MotionEvent;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;)Z
.end method

.method public abstract pop(Landroid/view/View;)Z
.end method
