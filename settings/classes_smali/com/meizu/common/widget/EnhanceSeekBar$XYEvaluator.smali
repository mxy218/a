.class Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;
.super Ljava/lang/Object;
.source "EnhanceSeekBar.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XYEvaluator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .registers 2

    .line 1338
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V
    .registers 3

    .line 1338
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1340
    check-cast p2, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .line 1341
    check-cast p3, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .line 1342
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {p2}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v1

    invoke-virtual {p3}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v2

    invoke-virtual {p2}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 1343
    invoke-virtual {p2}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getY()F

    move-result v2

    invoke-virtual {p3}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getY()F

    move-result p3

    invoke-virtual {p2}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getY()F

    move-result p2

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    add-float/2addr v2, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;FF)V

    return-object v0
.end method
