.class final Lflyme/support/v7/util/DiffUtil$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lflyme/support/v7/util/DiffUtil$Snake;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lflyme/support/v7/util/DiffUtil$Snake;Lflyme/support/v7/util/DiffUtil$Snake;)I
    .registers 4

    .line 77
    iget p0, p1, Lflyme/support/v7/util/DiffUtil$Snake;->x:I

    iget v0, p2, Lflyme/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr p0, v0

    if-nez p0, :cond_c

    .line 78
    iget p0, p1, Lflyme/support/v7/util/DiffUtil$Snake;->y:I

    iget p1, p2, Lflyme/support/v7/util/DiffUtil$Snake;->y:I

    sub-int/2addr p0, p1

    :cond_c
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 74
    check-cast p1, Lflyme/support/v7/util/DiffUtil$Snake;

    check-cast p2, Lflyme/support/v7/util/DiffUtil$Snake;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/util/DiffUtil$1;->compare(Lflyme/support/v7/util/DiffUtil$Snake;Lflyme/support/v7/util/DiffUtil$Snake;)I

    move-result p0

    return p0
.end method
