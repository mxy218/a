.class public Lcom/android/settingslib/widget/BarChartPreference;
.super Landroidx/preference/Preference;
.source "BarChartPreference.java"


# static fields
.field private static final BAR_VIEWS:[I


# instance fields
.field private mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

.field private mIsLoading:Z

.field private mMaxBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 82
    sget v1, Lcom/android/settingslib/widget/R$id;->bar_view1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/widget/R$id;->bar_view2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/widget/R$id;->bar_view3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/widget/R$id;->bar_view4:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/widget/BarChartPreference;->BAR_VIEWS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 99
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 111
    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method private bindChartDetailsView(Landroidx/preference/PreferenceViewHolder;)V
    .registers 4

    .line 196
    sget v0, Lcom/android/settingslib/widget/R$id;->bar_chart_details:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 197
    iget-object v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/BarChartInfo;->getDetails()I

    move-result v0

    if-nez v0, :cond_16

    const/16 p0, 0x8

    .line 199
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_26

    :cond_16
    const/4 v1, 0x0

    .line 201
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 203
    iget-object p0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/BarChartInfo;->getDetailsOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_26
    return-void
.end method

.method private bindChartTitleView(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3

    .line 191
    sget v0, Lcom/android/settingslib/widget/R$id;->bar_chart_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 192
    iget-object p0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/BarChartInfo;->getTitle()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private init()V
    .registers 3

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 185
    sget v0, Lcom/android/settingslib/widget/R$layout;->settings_bar_chart:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 186
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/widget/R$dimen;->settings_bar_view_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mMaxBarHeight:I

    return-void
.end method

.method private normalizeBarViewHeights()V
    .registers 6

    .line 226
    iget-object v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/BarChartInfo;->getBarViewInfos()[Lcom/android/settingslib/widget/BarViewInfo;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 228
    array-length v1, v0

    if-nez v1, :cond_c

    goto :goto_2d

    .line 233
    :cond_c
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 236
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/settingslib/widget/BarViewInfo;->getHeight()I

    move-result v2

    if-nez v2, :cond_1a

    move p0, v1

    goto :goto_1d

    .line 238
    :cond_1a
    iget p0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mMaxBarHeight:I

    div-int/2addr p0, v2

    .line 240
    :goto_1d
    array-length v2, v0

    :goto_1e
    if-ge v1, v2, :cond_2d

    aget-object v3, v0, v1

    .line 241
    invoke-virtual {v3}, Lcom/android/settingslib/widget/BarViewInfo;->getHeight()I

    move-result v4

    mul-int/2addr v4, p0

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/BarViewInfo;->setNormalizedHeight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2d
    :goto_2d
    return-void
.end method

.method private setEmptyViewVisible(Landroidx/preference/PreferenceViewHolder;Z)V
    .registers 6

    .line 246
    sget v0, Lcom/android/settingslib/widget/R$id;->bar_views_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 247
    sget v1, Lcom/android/settingslib/widget/R$id;->empty_view:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 248
    iget-object p0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/BarChartInfo;->getEmptyText()I

    move-result p0

    if-eqz p0, :cond_19

    .line 251
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_19
    const/4 p0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_20

    move v2, p0

    goto :goto_21

    :cond_20
    move v2, v1

    .line 253
    :goto_21
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_27

    move p0, v1

    .line 254
    :cond_27
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateBarChart(Landroidx/preference/PreferenceViewHolder;)V
    .registers 6

    .line 208
    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->normalizeBarViewHeights()V

    .line 210
    iget-object p0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/BarChartInfo;->getBarViewInfos()[Lcom/android/settingslib/widget/BarViewInfo;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2f

    .line 213
    sget-object v2, Lcom/android/settingslib/widget/BarChartPreference;->BAR_VIEWS:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/BarView;

    if-eqz p0, :cond_27

    .line 216
    array-length v3, p0

    if-lt v1, v3, :cond_1e

    goto :goto_27

    .line 220
    :cond_1e
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/BarView;->updateView(Lcom/android/settingslib/widget/BarViewInfo;)V

    goto :goto_2c

    :cond_27
    :goto_27
    const/16 v3, 0x8

    .line 217
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2f
    return-void
.end method


# virtual methods
.method public initializeBarChart(Lcom/android/settingslib/widget/BarChartInfo;)V
    .registers 2
    .param p1  # Lcom/android/settingslib/widget/BarChartInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 121
    iput-object p1, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    .line 122
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 5

    .line 157
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 159
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 163
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/BarChartPreference;->bindChartTitleView(Landroidx/preference/PreferenceViewHolder;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/BarChartPreference;->bindChartDetailsView(Landroidx/preference/PreferenceViewHolder;)V

    .line 167
    iget-boolean v1, p0, Lcom/android/settingslib/widget/BarChartPreference;->mIsLoading:Z

    if-eqz v1, :cond_1b

    .line 168
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 171
    :cond_1b
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/BarChartInfo;->getBarViewInfos()[Lcom/android/settingslib/widget/BarViewInfo;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 175
    array-length v1, v1

    if-nez v1, :cond_2d

    goto :goto_34

    .line 179
    :cond_2d
    invoke-direct {p0, p1, v2}, Lcom/android/settingslib/widget/BarChartPreference;->setEmptyViewVisible(Landroidx/preference/PreferenceViewHolder;Z)V

    .line 180
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/BarChartPreference;->updateBarChart(Landroidx/preference/PreferenceViewHolder;)V

    return-void

    .line 176
    :cond_34
    :goto_34
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/BarChartPreference;->setEmptyViewVisible(Landroidx/preference/PreferenceViewHolder;Z)V

    return-void
.end method

.method public setBarViewInfos([Lcom/android/settingslib/widget/BarViewInfo;)V
    .registers 4
    .param p1  # [Lcom/android/settingslib/widget/BarViewInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_f

    .line 131
    array-length v0, p1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_7

    goto :goto_f

    .line 132
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "We only support up to four bar views"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/BarChartInfo;->setBarViewInfos([Lcom/android/settingslib/widget/BarViewInfo;)V

    .line 135
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public updateLoadingState(Z)V
    .registers 2

    .line 151
    iput-boolean p1, p0, Lcom/android/settingslib/widget/BarChartPreference;->mIsLoading:Z

    .line 152
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
