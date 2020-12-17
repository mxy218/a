.class public Landroidx/slice/widget/ListContent;
.super Landroidx/slice/widget/SliceContent;
.source "ListContent.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mHeaderContent:Landroidx/slice/widget/RowContent;

.field private mPrimaryAction:Landroidx/slice/core/SliceAction;

.field private mRowItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation
.end field

.field private mSeeMoreContent:Landroidx/slice/widget/RowContent;

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .registers 3
    .param p2  # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-direct {p0, p2}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/Slice;)V

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    .line 77
    iget-object p1, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    if-nez p1, :cond_f

    return-void

    .line 80
    :cond_f
    invoke-direct {p0, p2}, Landroidx/slice/widget/ListContent;->populate(Landroidx/slice/Slice;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slice/Slice;)V
    .registers 3
    .param p1  # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/Slice;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    .line 68
    iget-object v0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_f

    return-void

    .line 71
    :cond_f
    invoke-direct {p0, p1}, Landroidx/slice/widget/ListContent;->populate(Landroidx/slice/Slice;)V

    return-void
.end method

.method private static findHeaderItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;
    .registers 9
    .param p0  # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "list_item"

    const-string/jumbo v1, "shortcut"

    const-string v2, "actions"

    const-string v3, "keywords"

    const-string/jumbo v4, "ttl"

    const-string v5, "last_updated"

    const-string v6, "horizontal"

    const-string v7, "selection_option"

    .line 312
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "slice"

    .line 314
    invoke-static {p0, v2, v1, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 315
    invoke-static {p0}, Landroidx/slice/widget/ListContent;->isValidHeader(Landroidx/slice/SliceItem;)Z

    move-result v0

    if-eqz v0, :cond_27

    return-object p0

    :cond_27
    return-object v1
.end method

.method private findPrimaryAction()Landroidx/slice/core/SliceAction;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 229
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 230
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    :goto_b
    const-string v2, "action"

    if-nez v0, :cond_1f

    const-string/jumbo v0, "shortcut"

    const-string/jumbo v3, "title"

    .line 233
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v3, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v3, v2, v0, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    :cond_1f
    if-nez v0, :cond_27

    .line 237
    iget-object p0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {p0, v2, v1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    :cond_27
    if-eqz v0, :cond_2e

    .line 239
    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v1, v0}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    :cond_2e
    return-object v1
.end method

.method public static getListHeight(Ljava/util/List;Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;",
            "Landroidx/slice/widget/SliceStyle;",
            "Landroidx/slice/widget/SliceViewPolicy;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 297
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 298
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/SliceContent;

    .line 300
    :cond_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    invoke-virtual {v1}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    const-string v3, "horizontal"

    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 301
    invoke-virtual {v1, p1, p2}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p0

    return p0

    :cond_29
    move v1, v0

    .line 303
    :goto_2a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3e

    .line 304
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/widget/SliceContent;

    invoke-virtual {v2, p1, p2}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3e
    return v1
.end method

.method public static getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/widget/SliceContent;",
            "Z",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6a

    .line 253
    instance-of v1, p0, Landroidx/slice/widget/GridContent;

    if-eqz v1, :cond_9

    const/4 p0, 0x1

    return p0

    .line 256
    :cond_9
    check-cast p0, Landroidx/slice/widget/RowContent;

    .line 257
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 260
    new-instance v2, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v2, v1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    .line 262
    :cond_17
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 263
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p0

    const-string p1, "action"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x4

    goto :goto_30

    :cond_2f
    const/4 p0, 0x5

    :goto_30
    return p0

    .line 266
    :cond_31
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_39

    const/4 p0, 0x6

    return p0

    :cond_39
    const/4 v1, 0x3

    if-eqz v2, :cond_43

    .line 268
    invoke-interface {v2}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v2

    if-eqz v2, :cond_43

    return v1

    :cond_43
    if-eqz p1, :cond_5f

    if-eqz p2, :cond_5f

    move p0, v0

    .line 271
    :goto_48
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_5e

    .line 272
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/core/SliceAction;

    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result p1

    if-eqz p1, :cond_5b

    return v1

    :cond_5b
    add-int/lit8 p0, p0, 0x1

    goto :goto_48

    :cond_5e
    return v0

    .line 278
    :cond_5f
    invoke-virtual {p0}, Landroidx/slice/widget/RowContent;->getToggleItems()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_6a

    move v0, v1

    :cond_6a
    return v0
.end method

.method private static getSeeMoreItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;
    .registers 5
    .param p0  # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "see_more"

    .line 323
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v0, v1}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 326
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "slice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 327
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 329
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/SliceItem;

    :cond_42
    return-object p0

    :cond_43
    return-object v1
.end method

.method private static isValidHeader(Landroidx/slice/SliceItem;)Z
    .registers 5

    .line 341
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    const-string v0, "actions"

    const-string v2, "keywords"

    const-string v3, "see_more"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    const-string/jumbo v2, "text"

    .line 344
    invoke-static {p0, v2, v0, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    if-eqz p0, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method private populate(Landroidx/slice/Slice;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    .line 85
    :cond_3
    invoke-static {p1}, Landroidx/slice/SliceMetadata;->getSliceActions(Landroidx/slice/Slice;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    .line 86
    invoke-static {p1}, Landroidx/slice/widget/ListContent;->findHeaderItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 88
    new-instance v2, Landroidx/slice/widget/RowContent;

    invoke-direct {v2, v0, v1}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    iput-object v2, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 89
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1e
    invoke-static {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem(Landroidx/slice/Slice;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 93
    new-instance v2, Landroidx/slice/widget/RowContent;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    iput-object v2, p0, Landroidx/slice/widget/ListContent;->mSeeMoreContent:Landroidx/slice/widget/RowContent;

    .line 97
    :cond_2c
    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p1

    move v0, v1

    .line 98
    :goto_31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a8

    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    .line 100
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    const-string v4, "actions"

    const-string v5, "see_more"

    const-string v6, "keywords"

    const-string/jumbo v7, "ttl"

    const-string v8, "last_updated"

    .line 101
    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a5

    const-string v4, "action"

    .line 103
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    const-string/jumbo v4, "slice"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 104
    :cond_67
    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    const-string v4, "list_item"

    if-nez v3, :cond_82

    invoke-virtual {v2, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_82

    .line 105
    new-instance v3, Landroidx/slice/widget/RowContent;

    invoke-direct {v3, v2, v1}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    iput-object v3, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 106
    iget-object v2, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_a5

    .line 107
    :cond_82
    invoke-virtual {v2, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    const-string v3, "horizontal"

    .line 108
    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 109
    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    new-instance v4, Landroidx/slice/widget/GridContent;

    invoke-direct {v4, v2, v0}, Landroidx/slice/widget/GridContent;-><init>(Landroidx/slice/SliceItem;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    .line 111
    :cond_9b
    iget-object v3, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    new-instance v4, Landroidx/slice/widget/RowContent;

    invoke-direct {v4, v2, v0}, Landroidx/slice/widget/RowContent;-><init>(Landroidx/slice/SliceItem;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a5
    :goto_a5
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 117
    :cond_a8
    iget-object p1, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    const/4 v0, 0x1

    if-nez p1, :cond_c4

    iget-object p1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, v0, :cond_c4

    .line 120
    iget-object p1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/widget/RowContent;

    iput-object p1, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 121
    iget-object p1, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {p1, v0}, Landroidx/slice/widget/RowContent;->setIsHeader(Z)V

    .line 123
    :cond_c4
    iget-object p1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_eb

    iget-object p1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroidx/slice/widget/GridContent;

    if-eqz p1, :cond_eb

    .line 125
    iget-object p1, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/widget/GridContent;

    invoke-virtual {p1, v0}, Landroidx/slice/widget/GridContent;->setIsLastIndex(Z)V

    .line 127
    :cond_eb
    invoke-direct {p0}, Landroidx/slice/widget/ListContent;->findPrimaryAction()Landroidx/slice/core/SliceAction;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/ListContent;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    return-void
.end method


# virtual methods
.method public getHeader()Landroidx/slice/widget/RowContent;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 164
    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    return-object p0
.end method

.method public getHeaderTemplateType()I
    .registers 3

    .line 185
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroidx/slice/widget/ListContent;->getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I

    move-result p0

    return p0
.end method

.method public getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .registers 3

    .line 132
    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/SliceStyle;->getListHeight(Landroidx/slice/widget/ListContent;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p0

    return p0
.end method

.method public getRowItems()Ljava/util/ArrayList;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRowItems(ILandroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/slice/widget/SliceStyle;",
            "Landroidx/slice/widget/SliceViewPolicy;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation

    .line 146
    invoke-virtual {p3}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    new-array p2, v1, [Landroidx/slice/widget/RowContent;

    const/4 p3, 0x0

    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object p0

    aput-object p0, p2, p3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 148
    :cond_1a
    invoke-virtual {p3}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_27

    if-lez p1, :cond_27

    .line 149
    invoke-virtual {p2, p0, p1, p3}, Landroidx/slice/widget/SliceStyle;->getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 151
    :cond_27
    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSeeMoreItem()Landroidx/slice/widget/SliceContent;
    .registers 1

    .line 178
    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mSeeMoreContent:Landroidx/slice/widget/RowContent;

    return-object p0
.end method

.method public getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 191
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mPrimaryAction:Landroidx/slice/core/SliceAction;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public getSliceActions()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    return-object p0
.end method

.method public isValid()Z
    .registers 2

    .line 159
    invoke-super {p0}, Landroidx/slice/widget/SliceContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public showActionDividers(Z)V
    .registers 4

    .line 216
    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceContent;

    .line 217
    instance-of v1, v0, Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_6

    .line 218
    check-cast v0, Landroidx/slice/widget/RowContent;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/RowContent;->showActionDivider(Z)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public showHeaderDivider(Z)V
    .registers 4

    .line 207
    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_12

    .line 208
    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowContent;->showBottomDivider(Z)V

    :cond_12
    return-void
.end method

.method public showTitleItems(Z)V
    .registers 2

    .line 198
    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    if-eqz p0, :cond_7

    .line 199
    invoke-virtual {p0, p1}, Landroidx/slice/widget/RowContent;->showTitleItems(Z)V

    :cond_7
    return-void
.end method
