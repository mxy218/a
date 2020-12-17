.class final Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$9;
.super Landroid/util/Property;
.source "LauncherPeekAndPopLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 718
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;)Landroid/graphics/RectF;
    .registers 2

    .line 726
    invoke-virtual {p1}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->getRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 718
    check-cast p1, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$9;->get(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;Landroid/graphics/RectF;)V
    .registers 3

    .line 721
    invoke-virtual {p1, p2}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->setRectF(Landroid/graphics/RectF;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 718
    check-cast p1, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    check-cast p2, Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$9;->set(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;Landroid/graphics/RectF;)V

    return-void
.end method
