.class Lflyme/support/v7/util/DiffUtil$Range;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Range"
.end annotation


# instance fields
.field newListEnd:I

.field newListStart:I

.field oldListEnd:I

.field oldListStart:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput p1, p0, Lflyme/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 401
    iput p2, p0, Lflyme/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 402
    iput p3, p0, Lflyme/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 403
    iput p4, p0, Lflyme/support/v7/util/DiffUtil$Range;->newListEnd:I

    return-void
.end method
