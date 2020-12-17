.class public Lcom/meizu/common/drawble/StrokeGradientDrawable;
.super Ljava/lang/Object;
.source "StrokeGradientDrawable.java"


# instance fields
.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mStrokeColor:I

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method


# virtual methods
.method public getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method public getStrokeColor()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mStrokeColor:I

    return p0
.end method

.method public getStrokeWidth()I
    .registers 1

    .line 29
    iget p0, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mStrokeWidth:I

    return p0
.end method

.method public setStrokeColor(I)V
    .registers 3

    .line 54
    iput p1, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mStrokeColor:I

    .line 55
    iget-object v0, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getStrokeWidth()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3

    .line 37
    iput p1, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mStrokeWidth:I

    .line 38
    iget-object v0, p0, Lcom/meizu/common/drawble/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/drawble/StrokeGradientDrawable;->getStrokeColor()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method
