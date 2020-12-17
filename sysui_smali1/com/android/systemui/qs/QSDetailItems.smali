.class public Lcom/android/systemui/qs/QSDetailItems;
.super Landroid/widget/FrameLayout;
.source "QSDetailItems.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetailItems$Callback;,
        Lcom/android/systemui/qs/QSDetailItems$Item;,
        Lcom/android/systemui/qs/QSDetailItems$H;,
        Lcom/android/systemui/qs/QSDetailItems$Adapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

.field private mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

.field private final mContext:Landroid/content/Context;

.field private mEmpty:Landroid/view/View;

.field private mEmptyIcon:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;

.field private final mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

.field private mItemList:Lcom/android/systemui/qs/AutoSizingList;

.field private mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

.field private mItemsVisible:Z

.field private mLoading:Landroid/view/View;

.field private mLoadingVisible:Z

.field private final mQsDetailIconOverlaySize:I

.field private mRightIconPadding:I

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "QSDetailItems"

    const/4 v1, 0x3

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p2, Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSDetailItems$H;-><init>(Lcom/android/systemui/qs/QSDetailItems;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    .line 54
    new-instance p2, Lcom/android/systemui/qs/QSDetailItems$Adapter;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/QSDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    const/4 p2, 0x1

    .line 58
    iput-boolean p2, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    .line 68
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    const-string p1, "QSDetailItems"

    .line 69
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->qs_detail_icon_overlay_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mQsDetailIconOverlaySize:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSDetailItems;)Z
    .registers 1

    .line 47
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSDetailItems;)I
    .registers 1

    .line 47
    iget p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mRightIconPadding:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSDetailItems;)Lcom/android/systemui/qs/QSDetailItems$Callback;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSDetailItems;[Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSDetailItems;Z)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetItemsVisible(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSDetailItems;Z)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->handleSetLoadingVisible(Z)V

    return-void
.end method

.method public static convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;
    .registers 4

    .line 75
    instance-of v0, p1, Lcom/android/systemui/qs/QSDetailItems;

    if-eqz v0, :cond_7

    .line 76
    check-cast p1, Lcom/android/systemui/qs/QSDetailItems;

    return-object p1

    .line 78
    :cond_7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$layout;->qs_detail_items_ext:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSDetailItems;

    return-object p0
.end method

.method private handleSetCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    return-void
.end method

.method private handleSetItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 169
    array-length v1, p1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 170
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const/16 v3, 0x8

    if-nez v1, :cond_e

    move v4, v0

    goto :goto_f

    :cond_e
    move v4, v3

    :goto_f
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    if-nez v1, :cond_17

    move v0, v3

    :cond_17
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItems:[Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 173
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetailItems;->refreshFont()V

    return-void
.end method

.method private handleSetItemsVisible(Z)V
    .registers 5

    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 182
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    const/4 p1, 0x0

    move v0, p1

    .line 183
    :goto_9
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 184
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemsVisible:Z

    if-eqz v2, :cond_1d

    move v2, p1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x4

    :goto_1e
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_24
    return-void
.end method

.method private handleSetLoadingVisible(Z)V
    .registers 3

    .line 375
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mLoadingVisible:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 376
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mLoadingVisible:Z

    .line 377
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mLoading:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mLoadingVisible:Z

    if-eqz p0, :cond_f

    const/4 p0, 0x0

    goto :goto_11

    :cond_f
    const/16 p0, 0x8

    :goto_11
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$setEmptyState$0$QSDetailItems(II)V
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 138
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 139
    sget-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    const-string v0, "onAttachedToWindow"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 109
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$dimen;->qs_detail_empty_text_size:I

    invoke-static {p1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 111
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, p1, :cond_2c

    .line 113
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020016

    .line 114
    sget v3, Lcom/android/systemui/R$dimen;->qs_detail_item_primary_text_size:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v2, 0x1020010

    .line 116
    sget v3, Lcom/android/systemui/R$dimen;->qs_detail_item_secondary_text_size:I

    invoke-static {v1, v2, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 121
    :cond_2c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result p1

    if-nez p1, :cond_37

    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_37
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 144
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 145
    sget-boolean v0, Lcom/android/systemui/qs/QSDetailItems;->DEBUG:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 87
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_detail_item_right_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mRightIconPadding:I

    .line 90
    sget v0, Lcom/android/systemui/R$id;->list_wrapper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    sget v1, Lcom/android/systemui/R$id;->loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mLoading:Landroid/view/View;

    .line 92
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mLoading:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x102000a

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/AutoSizingList;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems;->mAdapter:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoSizingList;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x1020004

    .line 98
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmpty:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    .line 103
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    const v0, -0x19000001

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public refreshFont()V
    .registers 8

    .line 353
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_3d

    .line 355
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 356
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->hasFlymeTypeface()Z

    move-result v4

    const v5, 0x1020010

    const v6, 0x1020016

    if-eqz v4, :cond_29

    const/4 v4, 0x0

    .line 357
    invoke-static {v3, v6, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontFamily(Landroid/view/View;ILandroid/graphics/Typeface;)V

    .line 358
    invoke-static {v3, v5, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontFamily(Landroid/view/View;ILandroid/graphics/Typeface;)V

    .line 359
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/systemui/FontSizeUtils;->restoreTypeface(Landroid/widget/TextView;)V

    goto :goto_3a

    :cond_29
    const-string v4, "FlymeRegular"

    .line 361
    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 362
    invoke-static {v3, v6, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontFamily(Landroid/view/View;ILandroid/graphics/Typeface;)V

    .line 363
    invoke-static {v3, v5, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontFamily(Landroid/view/View;ILandroid/graphics/Typeface;)V

    .line 364
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3d
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setEmptyState(II)V
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mEmptyIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$8UkcDK0xyJROkQ0Pv0OF8HNZO94;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$8UkcDK0xyJROkQ0Pv0OF8HNZO94;-><init>(Lcom/android/systemui/qs/QSDetailItems;II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setItemsVisible(Z)V
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setLoadingVisible(Z)V
    .registers 4

    .line 370
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 371
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems;->mHandler:Lcom/android/systemui/qs/QSDetailItems$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setTagSuffix(Ljava/lang/String;)V
    .registers 4

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QSDetailItems."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems;->mTag:Ljava/lang/String;

    return-void
.end method
