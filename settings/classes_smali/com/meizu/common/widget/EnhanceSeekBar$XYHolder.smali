.class Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;
.super Ljava/lang/Object;
.source "EnhanceSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XYHolder"
.end annotation


# instance fields
.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .registers 2

    .line 1306
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1307
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;FF)V
    .registers 4

    .line 1310
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1311
    iput p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    .line 1312
    iput p3, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    return-void
.end method


# virtual methods
.method public getX()F
    .registers 1

    .line 1316
    iget p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    return p0
.end method

.method public getY()F
    .registers 1

    .line 1330
    iget p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    return p0
.end method

.method public setX(F)V
    .registers 2

    .line 1326
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    return-void
.end method

.method public setXY(FF)V
    .registers 3

    .line 1320
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    .line 1321
    iput p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    return-void
.end method

.method public setY(F)V
    .registers 2

    .line 1334
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    return-void
.end method
