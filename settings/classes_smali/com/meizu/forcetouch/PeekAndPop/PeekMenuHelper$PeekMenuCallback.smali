.class public interface abstract Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;
.super Ljava/lang/Object;
.source "PeekMenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PeekMenuCallback"
.end annotation


# virtual methods
.method public abstract onCloseCurMenu()V
.end method

.method public abstract onDestructCurMenu(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

.method public abstract onSubMenuSelected(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;)V
.end method
