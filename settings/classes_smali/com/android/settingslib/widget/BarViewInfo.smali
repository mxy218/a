.class public Lcom/android/settingslib/widget/BarViewInfo;
.super Ljava/lang/Object;
.source "BarViewInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/widget/BarViewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mHeight:I

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private mNormalizedHeight:I

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .param p2  # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/settingslib/widget/BarViewInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 55
    iput p2, p0, Lcom/android/settingslib/widget/BarViewInfo;->mHeight:I

    .line 56
    iput-object p3, p0, Lcom/android/settingslib/widget/BarViewInfo;->mTitle:Ljava/lang/CharSequence;

    .line 57
    iput-object p4, p0, Lcom/android/settingslib/widget/BarViewInfo;->mSummary:Ljava/lang/CharSequence;

    .line 58
    iput-object p5, p0, Lcom/android/settingslib/widget/BarViewInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic lambda$compareTo$0(Lcom/android/settingslib/widget/BarViewInfo;)I
    .registers 1

    .line 71
    iget p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mHeight:I

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/android/settingslib/widget/BarViewInfo;)I
    .registers 3

    .line 71
    sget-object v0, Lcom/android/settingslib/widget/-$$Lambda$BarViewInfo$0E64JyWB2WmVqNcEtw_jyuLCMME;->INSTANCE:Lcom/android/settingslib/widget/-$$Lambda$BarViewInfo$0E64JyWB2WmVqNcEtw_jyuLCMME;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 72
    invoke-interface {v0, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 30
    check-cast p1, Lcom/android/settingslib/widget/BarViewInfo;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/BarViewInfo;->compareTo(Lcom/android/settingslib/widget/BarViewInfo;)I

    move-result p0

    return p0
.end method

.method getClickListener()Landroid/view/View$OnClickListener;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 109
    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method getHeight()I
    .registers 1

    .line 92
    iget p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mHeight:I

    return p0
.end method

.method getIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getNormalizedHeight()I
    .registers 1

    .line 117
    iget p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mNormalizedHeight:I

    return p0
.end method

.method getSummary()Ljava/lang/CharSequence;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method getTitle()Ljava/lang/CharSequence;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 101
    iget-object p0, p0, Lcom/android/settingslib/widget/BarViewInfo;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1  # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    iput-object p1, p0, Lcom/android/settingslib/widget/BarViewInfo;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method setNormalizedHeight(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 113
    iput p1, p0, Lcom/android/settingslib/widget/BarViewInfo;->mNormalizedHeight:I

    return-void
.end method
