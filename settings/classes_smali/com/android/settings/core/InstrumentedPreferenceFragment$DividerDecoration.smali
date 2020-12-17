.class Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "InstrumentedPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/InstrumentedPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerDecoration"
.end annotation


# instance fields
.field private mAllowDividerAfterLastItem:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerStartWithIcon:I

.field final synthetic this$0:Lcom/android/settings/core/InstrumentedPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .registers 3

    .line 164
    iput-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->this$0:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 165
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07062f

    .line 166
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->mDividerStartWithIcon:I

    return-void
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .registers 7

    .line 200
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 201
    instance-of v1, v0, Landroidx/preference/PreferenceViewHolder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_14

    check-cast v0, Landroidx/preference/PreferenceViewHolder;

    .line 202
    invoke-virtual {v0}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v3

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    if-nez v0, :cond_18

    return v2

    .line 206
    :cond_18
    iget-boolean p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 207
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 208
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ge p1, v0, :cond_3d

    add-int/2addr p1, v3

    .line 209
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 210
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    .line 211
    instance-of p1, p0, Landroidx/preference/PreferenceViewHolder;

    if-eqz p1, :cond_3c

    check-cast p0, Landroidx/preference/PreferenceViewHolder;

    .line 212
    invoke-virtual {p0}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result p0

    if-eqz p0, :cond_3c

    move p0, v3

    goto :goto_3d

    :cond_3c
    move p0, v2

    :cond_3d
    :goto_3d
    return p0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 194
    invoke-direct {p0, p2, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 195
    iget p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->mDividerHeight:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_a
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 11

    .line 171
    iget-object p3, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_5

    return-void

    .line 174
    :cond_5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    .line 175
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, p3, :cond_4a

    .line 177
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 178
    invoke-direct {p0, v3, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 179
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0x1020006

    .line 180
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_39

    .line 182
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_39

    .line 183
    iget v3, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->mDividerStartWithIcon:I

    goto :goto_3a

    :cond_39
    move v3, v1

    .line 185
    :goto_3a
    iget-object v5, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->mDividerHeight:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v3, v4, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    iget-object v3, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_4a
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 219
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->mDividerHeight:I

    goto :goto_c

    :cond_9
    const/4 v0, 0x0

    .line 221
    iput v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 223
    :goto_c
    iput-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 224
    iget-object p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->this$0:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public setDividerHeight(I)V
    .registers 2

    .line 228
    iput p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 229
    iget-object p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$DividerDecoration;->this$0:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method
