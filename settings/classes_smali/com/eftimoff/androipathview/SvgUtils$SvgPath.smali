.class public Lcom/eftimoff/androipathview/SvgUtils$SvgPath;
.super Ljava/lang/Object;
.source "SvgUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eftimoff/androipathview/SvgUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SvgPath"
.end annotation


# static fields
.field private static final MAX_CLIP:Landroid/graphics/Region;

.field private static final REGION:Landroid/graphics/Region;


# instance fields
.field animationStepListener:Lcom/eftimoff/androipathview/SvgUtils$AnimationStepListener;

.field final bounds:Landroid/graphics/Rect;

.field length:F

.field final measure:Landroid/graphics/PathMeasure;

.field final paint:Landroid/graphics/Paint;

.field final path:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 156
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    sput-object v0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->REGION:Landroid/graphics/Region;

    .line 160
    new-instance v0, Landroid/graphics/Region;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Region;-><init>(IIII)V

    sput-object v0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->MAX_CLIP:Landroid/graphics/Region;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 4

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->path:Landroid/graphics/Path;

    .line 196
    iput-object p2, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->paint:Landroid/graphics/Paint;

    .line 198
    new-instance p2, Landroid/graphics/PathMeasure;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p2, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->measure:Landroid/graphics/PathMeasure;

    .line 199
    iget-object p2, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->measure:Landroid/graphics/PathMeasure;

    invoke-virtual {p2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p2

    iput p2, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->length:F

    .line 201
    sget-object p2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->REGION:Landroid/graphics/Region;

    sget-object v0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->MAX_CLIP:Landroid/graphics/Region;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 202
    sget-object p1, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->REGION:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->bounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getLength()F
    .registers 1

    .line 233
    iget p0, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->length:F

    return p0
.end method

.method public setAnimationStepListener(Lcom/eftimoff/androipathview/SvgUtils$AnimationStepListener;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->animationStepListener:Lcom/eftimoff/androipathview/SvgUtils$AnimationStepListener;

    return-void
.end method
