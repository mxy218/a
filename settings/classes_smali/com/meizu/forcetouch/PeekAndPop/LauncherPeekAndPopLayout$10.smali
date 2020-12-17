.class final Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$10;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 731
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;)Ljava/lang/Float;
    .registers 2

    .line 739
    new-instance p0, Ljava/lang/Float;

    invoke-virtual {p1}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->getRadius()F

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 731
    check-cast p1, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$10;->get(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;Ljava/lang/Float;)V
    .registers 3

    .line 734
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->setRadius(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 731
    check-cast p1, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$10;->set(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;Ljava/lang/Float;)V

    return-void
.end method
