.class public abstract Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;
.super Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;
.source "FastScrollLetterPinnedHeaderIndexerArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter$ViewHoler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultColor:[I

.field private mHeaderTextBackgroundColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;-><init>(Landroid/content/Context;[Ljava/util/List;)V

    const/4 p2, 0x7

    new-array p2, p2, [I

    .line 25
    fill-array-data p2, :array_18

    iput-object p2, p0, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->mDefaultColor:[I

    const/4 p2, -0x1

    .line 35
    iput p2, p0, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->mHeaderTextBackgroundColor:I

    .line 44
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->init(Landroid/content/Context;)V

    return-void

    :array_18
    .array-data 4
        0x7f060127
        0x7f06012b
        0x7f06012a
        0x7f060125
        0x7f060124
        0x7f060129
        0x7f060128
    .end array-data
.end method

.method private inflatHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0159

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    new-instance p2, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter$ViewHoler;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter$ViewHoler;-><init>(Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter$1;)V

    const p0, 0x7f0a03ff

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p2, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter$ViewHoler;->alphabetTextView:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setAlphabetTextStyle(Landroid/view/View;I)V
    .registers 6

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 95
    check-cast v0, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter$ViewHoler;

    iget-object p1, v0, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter$ViewHoler;->alphabetTextView:Landroid/widget/TextView;

    goto :goto_14

    :cond_b
    const v0, 0x7f0a03ff

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 100
    :goto_14
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 102
    iget v1, p0, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->mHeaderTextBackgroundColor:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4c

    .line 103
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p0, p0, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->mDefaultColor:[I

    rem-int/lit8 p2, p2, 0x7

    aget p0, p0, p2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_55

    .line 105
    :cond_4c
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    iget p0, p0, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->mHeaderTextBackgroundColor:I

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    :goto_55
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected bindSectionHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .registers 5

    .line 68
    invoke-direct {p0, p1, p4}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->setAlphabetTextStyle(Landroid/view/View;I)V

    return-void
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->inflatHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 63
    invoke-direct {p0, p1, p4}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->inflatHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setHeaderTextBackgroundColor(I)V
    .registers 2

    .line 116
    :try_start_0
    iput p1, p0, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->mHeaderTextBackgroundColor:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method protected setPinnedSectionHeaderView(Landroid/view/View;I)V
    .registers 3

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;->setAlphabetTextStyle(Landroid/view/View;I)V

    return-void
.end method
