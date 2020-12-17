.class Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;
.super Ljava/lang/Object;
.source "LauncherPeekAndPopLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RippleProperty"
.end annotation


# instance fields
.field public radius:F

.field public rectF:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;


# direct methods
.method private constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)V
    .registers 2

    .line 746
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$1;)V
    .registers 3

    .line 746
    invoke-direct {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;-><init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)V

    return-void
.end method


# virtual methods
.method public getRadius()F
    .registers 1

    .line 763
    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->radius:F

    return p0
.end method

.method public getRectF()Landroid/graphics/RectF;
    .registers 1

    .line 755
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->rectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public setRadius(F)V
    .registers 2

    .line 759
    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->radius:F

    return-void
.end method

.method public setRectF(Landroid/graphics/RectF;)V
    .registers 2

    .line 751
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$RippleProperty;->rectF:Landroid/graphics/RectF;

    return-void
.end method
