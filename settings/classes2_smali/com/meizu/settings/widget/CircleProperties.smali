.class public Lcom/meizu/settings/widget/CircleProperties;
.super Ljava/lang/Object;
.source "CircleProperties.java"


# instance fields
.field private mBottom:I

.field private mCx:F

.field private mCy:F

.field private mLeft:I

.field private mRadius:F

.field private mRight:I

.field private mTop:I


# direct methods
.method public constructor <init>(IIIIFFF)V
    .registers 8

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/meizu/settings/widget/CircleProperties;->mLeft:I

    .line 17
    iput p2, p0, Lcom/meizu/settings/widget/CircleProperties;->mTop:I

    .line 18
    iput p3, p0, Lcom/meizu/settings/widget/CircleProperties;->mRight:I

    .line 19
    iput p4, p0, Lcom/meizu/settings/widget/CircleProperties;->mBottom:I

    .line 20
    iput p5, p0, Lcom/meizu/settings/widget/CircleProperties;->mRadius:F

    .line 21
    iput p6, p0, Lcom/meizu/settings/widget/CircleProperties;->mCx:F

    .line 22
    iput p7, p0, Lcom/meizu/settings/widget/CircleProperties;->mCy:F

    return-void
.end method


# virtual methods
.method public getBottom()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/meizu/settings/widget/CircleProperties;->mBottom:I

    return p0
.end method

.method public getCx()F
    .registers 1

    .line 49
    iget p0, p0, Lcom/meizu/settings/widget/CircleProperties;->mCx:F

    return p0
.end method

.method public getCy()F
    .registers 1

    .line 56
    iget p0, p0, Lcom/meizu/settings/widget/CircleProperties;->mCy:F

    return p0
.end method

.method public getLeft()I
    .registers 1

    .line 26
    iget p0, p0, Lcom/meizu/settings/widget/CircleProperties;->mLeft:I

    return p0
.end method

.method public getRadius()F
    .registers 1

    .line 42
    iget p0, p0, Lcom/meizu/settings/widget/CircleProperties;->mRadius:F

    return p0
.end method

.method public getRight()I
    .registers 1

    .line 34
    iget p0, p0, Lcom/meizu/settings/widget/CircleProperties;->mRight:I

    return p0
.end method

.method public getTop()I
    .registers 1

    .line 30
    iget p0, p0, Lcom/meizu/settings/widget/CircleProperties;->mTop:I

    return p0
.end method
