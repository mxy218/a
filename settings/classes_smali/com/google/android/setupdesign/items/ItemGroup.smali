.class public Lcom/google/android/setupdesign/items/ItemGroup;
.super Lcom/google/android/setupdesign/items/AbstractItemHierarchy;
.source "ItemGroup.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/ItemInflater$ItemParent;
.implements Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/setupdesign/items/ItemHierarchy;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field private dirty:Z

.field private final hierarchyStart:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->children:Ljava/util/List;

    .line 99
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->hierarchyStart:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    .line 102
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->dirty:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->children:Ljava/util/List;

    .line 99
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->hierarchyStart:Landroid/util/SparseIntArray;

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    .line 102
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->dirty:Z

    return-void
.end method

.method private static binarySearch(Landroid/util/SparseIntArray;I)I
    .registers 6

    .line 38
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_7
    if-gt v1, v0, :cond_22

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 44
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ge v3, p1, :cond_17

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_7

    :cond_17
    if-le v3, p1, :cond_1d

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_7

    .line 51
    :cond_1d
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_22
    add-int/lit8 v1, v1, -0x1

    .line 56
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method private getChildPosition(I)I
    .registers 5

    .line 196
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/ItemGroup;->updateDataIfNeeded()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_22

    .line 199
    iget-object v1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, p1

    move p1, v0

    :goto_e
    if-gez p1, :cond_1b

    if-ge v2, v1, :cond_1b

    .line 203
    iget-object p1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->hierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    if-gez p1, :cond_21

    .line 209
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ItemGroup;->getCount()I

    move-result p1

    :cond_21
    return p1

    :cond_22
    return v0
.end method

.method private getChildPosition(Lcom/google/android/setupdesign/items/ItemHierarchy;)I
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->children:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->identityIndexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->getChildPosition(I)I

    move-result p0

    return p0
.end method

.method private getItemIndex(I)I
    .registers 5

    .line 297
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/ItemGroup;->updateDataIfNeeded()V

    if-ltz p1, :cond_1a

    .line 298
    iget v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    if-ge p1, v0, :cond_1a

    .line 301
    iget-object p0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->hierarchyStart:Landroid/util/SparseIntArray;

    invoke-static {p0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->binarySearch(Landroid/util/SparseIntArray;I)I

    move-result p0

    if-ltz p0, :cond_12

    return p0

    .line 303
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot have item start index < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 299
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; index="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static identityIndexOf(Ljava/util/List;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)I"
        }
    .end annotation

    .line 64
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 66
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_e

    return v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method private updateDataIfNeeded()V
    .registers 6

    .line 277
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->dirty:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    .line 278
    iput v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    .line 279
    iget-object v1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->hierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    move v1, v0

    .line 280
    :goto_d
    iget-object v2, p0, Lcom/google/android/setupdesign/items/ItemGroup;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 281
    iget-object v2, p0, Lcom/google/android/setupdesign/items/ItemGroup;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/setupdesign/items/ItemHierarchy;

    .line 282
    invoke-interface {v2}, Lcom/google/android/setupdesign/items/ItemHierarchy;->getCount()I

    move-result v3

    if-lez v3, :cond_2a

    .line 283
    iget-object v3, p0, Lcom/google/android/setupdesign/items/ItemGroup;->hierarchyStart:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 285
    :cond_2a
    iget v3, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    invoke-interface {v2}, Lcom/google/android/setupdesign/items/ItemHierarchy;->getCount()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 287
    :cond_36
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->dirty:Z

    :cond_38
    return-void
.end method


# virtual methods
.method public addChild(Lcom/google/android/setupdesign/items/ItemHierarchy;)V
    .registers 3

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->dirty:Z

    .line 117
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {p1, p0}, Lcom/google/android/setupdesign/items/ItemHierarchy;->registerObserver(Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;)V

    .line 120
    invoke-interface {p1}, Lcom/google/android/setupdesign/items/ItemHierarchy;->getCount()I

    move-result v0

    if-lez v0, :cond_18

    .line 122
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->getChildPosition(Lcom/google/android/setupdesign/items/ItemHierarchy;)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->notifyItemRangeInserted(II)V

    :cond_18
    return-void
.end method

.method public getCount()I
    .registers 1

    .line 166
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/ItemGroup;->updateDataIfNeeded()V

    .line 167
    iget p0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->count:I

    return p0
.end method

.method public getItemAt(I)Lcom/google/android/setupdesign/items/IItem;
    .registers 4

    .line 172
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->getItemIndex(I)I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/google/android/setupdesign/items/ItemGroup;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/items/ItemHierarchy;

    .line 174
    iget-object p0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->hierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    sub-int/2addr p1, p0

    .line 175
    invoke-interface {v1, p1}, Lcom/google/android/setupdesign/items/ItemHierarchy;->getItemAt(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object p0

    return-object p0
.end method

.method public onItemRangeChanged(Lcom/google/android/setupdesign/items/ItemHierarchy;II)V
    .registers 5

    .line 219
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->getChildPosition(Lcom/google/android/setupdesign/items/ItemHierarchy;)I

    move-result v0

    if-ltz v0, :cond_b

    add-int/2addr v0, p2

    .line 221
    invoke-virtual {p0, v0, p3}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->notifyItemRangeChanged(II)V

    goto :goto_21

    .line 223
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected child change "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ItemGroup"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public onItemRangeInserted(Lcom/google/android/setupdesign/items/ItemHierarchy;II)V
    .registers 5

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ItemGroup;->dirty:Z

    .line 230
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ItemGroup;->getChildPosition(Lcom/google/android/setupdesign/items/ItemHierarchy;)I

    move-result v0

    if-ltz v0, :cond_e

    add-int/2addr v0, p2

    .line 232
    invoke-virtual {p0, v0, p3}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->notifyItemRangeInserted(II)V

    goto :goto_24

    .line 234
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected child insert "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ItemGroup"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method
