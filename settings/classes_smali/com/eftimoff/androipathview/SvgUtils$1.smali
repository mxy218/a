.class Lcom/eftimoff/androipathview/SvgUtils$1;
.super Landroid/graphics/Canvas;
.source "SvgUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eftimoff/androipathview/SvgUtils;->getPathsForViewport(II)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/eftimoff/androipathview/SvgUtils;

.field final synthetic val$height:I

.field final synthetic val$strokeWidth:F

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/eftimoff/androipathview/SvgUtils;IIF)V
    .registers 5

    .line 92
    iput-object p1, p0, Lcom/eftimoff/androipathview/SvgUtils$1;->this$0:Lcom/eftimoff/androipathview/SvgUtils;

    iput p2, p0, Lcom/eftimoff/androipathview/SvgUtils$1;->val$width:I

    iput p3, p0, Lcom/eftimoff/androipathview/SvgUtils$1;->val$height:I

    iput p4, p0, Lcom/eftimoff/androipathview/SvgUtils$1;->val$strokeWidth:F

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    .line 93
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/eftimoff/androipathview/SvgUtils$1;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 5

    .line 107
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/eftimoff/androipathview/SvgUtils$1;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 111
    iget-object v1, p0, Lcom/eftimoff/androipathview/SvgUtils$1;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    const/4 p1, 0x1

    .line 112
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget p1, p0, Lcom/eftimoff/androipathview/SvgUtils$1;->val$strokeWidth:F

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object p0, p0, Lcom/eftimoff/androipathview/SvgUtils$1;->this$0:Lcom/eftimoff/androipathview/SvgUtils;

    invoke-static {p0}, Lcom/eftimoff/androipathview/SvgUtils;->access$000(Lcom/eftimoff/androipathview/SvgUtils;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;

    invoke-direct {p1, v0, p2}, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getHeight()I
    .registers 1

    .line 102
    iget p0, p0, Lcom/eftimoff/androipathview/SvgUtils$1;->val$height:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 97
    iget p0, p0, Lcom/eftimoff/androipathview/SvgUtils$1;->val$width:I

    return p0
.end method
