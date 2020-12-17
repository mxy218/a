.class public Lcom/meizu/settings/widget/LockDigitView$Cell;
.super Ljava/lang/Object;
.source "LockDigitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/LockDigitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell"
.end annotation


# static fields
.field static sCells:[[Lcom/meizu/settings/widget/LockDigitView$Cell;


# instance fields
.field column:I

.field row:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 99
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, Lcom/meizu/settings/widget/LockDigitView$Cell;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/meizu/settings/widget/LockDigitView$Cell;

    sput-object v2, Lcom/meizu/settings/widget/LockDigitView$Cell;->sCells:[[Lcom/meizu/settings/widget/LockDigitView$Cell;

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_28

    move v4, v2

    :goto_15
    if-ge v4, v0, :cond_25

    .line 104
    sget-object v5, Lcom/meizu/settings/widget/LockDigitView$Cell;->sCells:[[Lcom/meizu/settings/widget/LockDigitView$Cell;

    aget-object v5, v5, v3

    new-instance v6, Lcom/meizu/settings/widget/LockDigitView$Cell;

    invoke-direct {v6, v3, v4}, Lcom/meizu/settings/widget/LockDigitView$Cell;-><init>(II)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_28
    return-void
.end method

.method private constructor <init>(II)V
    .registers 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1, p2}, Lcom/meizu/settings/widget/LockDigitView$Cell;->checkRange(II)V

    .line 115
    iput p1, p0, Lcom/meizu/settings/widget/LockDigitView$Cell;->row:I

    .line 116
    iput p2, p0, Lcom/meizu/settings/widget/LockDigitView$Cell;->column:I

    return-void
.end method

.method private static checkRange(II)V
    .registers 3

    if-ltz p0, :cond_13

    const/4 v0, 0x4

    if-ge p0, v0, :cond_13

    if-ltz p1, :cond_b

    const/4 p0, 0x3

    if-ge p1, p0, :cond_b

    return-void

    .line 146
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column must be in range 0-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "row must be in range 0-3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static indexOf(II)I
    .registers 2

    .line 137
    invoke-static {p0, p1}, Lcom/meizu/settings/widget/LockDigitView$Cell;->checkRange(II)V

    mul-int/lit8 p0, p0, 0x3

    add-int/2addr p0, p1

    return p0
.end method

.method public static declared-synchronized of(II)Lcom/meizu/settings/widget/LockDigitView$Cell;
    .registers 4

    const-class v0, Lcom/meizu/settings/widget/LockDigitView$Cell;

    monitor-enter v0

    .line 132
    :try_start_3
    invoke-static {p0, p1}, Lcom/meizu/settings/widget/LockDigitView$Cell;->checkRange(II)V

    .line 133
    sget-object v1, Lcom/meizu/settings/widget/LockDigitView$Cell;->sCells:[[Lcom/meizu/settings/widget/LockDigitView$Cell;

    aget-object p0, v1, p0

    aget-object p0, p0, p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-object p0

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getColumn()I
    .registers 1

    .line 124
    iget p0, p0, Lcom/meizu/settings/widget/LockDigitView$Cell;->column:I

    return p0
.end method

.method public getRow()I
    .registers 1

    .line 120
    iget p0, p0, Lcom/meizu/settings/widget/LockDigitView$Cell;->row:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/widget/LockDigitView$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/meizu/settings/widget/LockDigitView$Cell;->column:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
