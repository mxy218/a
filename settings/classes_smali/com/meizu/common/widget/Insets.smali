.class Lcom/meizu/common/widget/Insets;
.super Ljava/lang/Object;
.source "Switch.java"


# static fields
.field public static final NONE:Lcom/meizu/common/widget/Insets;


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1423
    new-instance v0, Lcom/meizu/common/widget/Insets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/meizu/common/widget/Insets;-><init>(IIII)V

    sput-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    return-void
.end method

.method private constructor <init>(IIII)V
    .registers 5

    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1431
    iput p1, p0, Lcom/meizu/common/widget/Insets;->left:I

    .line 1432
    iput p2, p0, Lcom/meizu/common/widget/Insets;->top:I

    .line 1433
    iput p3, p0, Lcom/meizu/common/widget/Insets;->right:I

    .line 1434
    iput p4, p0, Lcom/meizu/common/widget/Insets;->bottom:I

    return-void
.end method

.method public static of(IIII)Lcom/meizu/common/widget/Insets;
    .registers 5

    if-nez p0, :cond_b

    if-nez p1, :cond_b

    if-nez p2, :cond_b

    if-nez p3, :cond_b

    .line 1450
    sget-object p0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    return-object p0

    .line 1452
    :cond_b
    new-instance v0, Lcom/meizu/common/widget/Insets;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/common/widget/Insets;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    .line 1475
    const-class v2, Lcom/meizu/common/widget/Insets;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_30

    .line 1477
    :cond_10
    check-cast p1, Lcom/meizu/common/widget/Insets;

    .line 1479
    iget v2, p0, Lcom/meizu/common/widget/Insets;->bottom:I

    iget v3, p1, Lcom/meizu/common/widget/Insets;->bottom:I

    if-eq v2, v3, :cond_19

    return v1

    .line 1480
    :cond_19
    iget v2, p0, Lcom/meizu/common/widget/Insets;->left:I

    iget v3, p1, Lcom/meizu/common/widget/Insets;->left:I

    if-eq v2, v3, :cond_20

    return v1

    .line 1481
    :cond_20
    iget v2, p0, Lcom/meizu/common/widget/Insets;->right:I

    iget v3, p1, Lcom/meizu/common/widget/Insets;->right:I

    if-eq v2, v3, :cond_27

    return v1

    .line 1482
    :cond_27
    iget p0, p0, Lcom/meizu/common/widget/Insets;->top:I

    iget p1, p1, Lcom/meizu/common/widget/Insets;->top:I

    if-ne p0, p1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    :cond_30
    :goto_30
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1487
    iget v0, p0, Lcom/meizu/common/widget/Insets;->left:I

    mul-int/lit8 v0, v0, 0x1f

    .line 1488
    iget v1, p0, Lcom/meizu/common/widget/Insets;->top:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1489
    iget v1, p0, Lcom/meizu/common/widget/Insets;->right:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1490
    iget p0, p0, Lcom/meizu/common/widget/Insets;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insets{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/common/widget/Insets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/common/widget/Insets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/common/widget/Insets;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/meizu/common/widget/Insets;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
