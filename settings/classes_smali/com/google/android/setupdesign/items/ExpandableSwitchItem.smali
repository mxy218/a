.class public Lcom/google/android/setupdesign/items/ExpandableSwitchItem;
.super Lcom/google/android/setupdesign/items/SwitchItem;
.source "ExpandableSwitchItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field private collapsedSummary:Ljava/lang/CharSequence;

.field private expandedSummary:Ljava/lang/CharSequence;

.field private isExpanded:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/SwitchItem;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    .line 56
    new-instance v0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;-><init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    const/16 v0, 0x30

    .line 71
    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/Item;->setIconGravity(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/SwitchItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    .line 56
    new-instance v0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;-><init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 76
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudExpandableSwitchItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 77
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudExpandableSwitchItem_sudCollapsedSummary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->collapsedSummary:Ljava/lang/CharSequence;

    .line 78
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudExpandableSwitchItem_sudExpandedSummary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->expandedSummary:Ljava/lang/CharSequence;

    .line 79
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudItem_sudIconGravity:I

    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/Item;->setIconGravity(I)V

    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private tintCompoundDrawables(Landroid/view/View;)V
    .registers 9

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010036

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 176
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_57

    .line 180
    sget p0, Lcom/google/android/setupdesign/R$id;->sud_items_title:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 181
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    array-length v2, p1

    move v3, v1

    :goto_28
    if-ge v3, v2, :cond_3a

    aget-object v4, p1, v3

    if-eqz v4, :cond_37

    .line 183
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 186
    :cond_3a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt p1, v2, :cond_57

    .line 187
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    array-length p1, p0

    :goto_45
    if-ge v1, p1, :cond_57

    aget-object v2, p0, v1

    if-eqz v2, :cond_54

    .line 189
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_57
    return-void
.end method


# virtual methods
.method public getCollapsedSummary()Ljava/lang/CharSequence;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->collapsedSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected getDefaultLayoutResource()I
    .registers 1

    .line 85
    sget p0, Lcom/google/android/setupdesign/R$layout;->sud_items_expandable_switch:I

    return p0
.end method

.method public getExpandedSummary()Ljava/lang/CharSequence;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->expandedSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->getExpandedSummary()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->getCollapsedSummary()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public isExpanded()Z
    .registers 1

    .line 95
    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 4

    .line 142
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/SwitchItem;->onBindView(Landroid/view/View;)V

    .line 143
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_expandable_switch_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    instance-of v1, v0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;

    if-eqz v1, :cond_25

    .line 147
    check-cast v0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;

    .line 148
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->setChecked(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v1

    .line 151
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 157
    iget-object v1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 160
    :cond_25
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->tintCompoundDrawables(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 164
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 169
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setExpanded(Z)V

    return-void
.end method

.method public setExpanded(Z)V
    .registers 3

    .line 100
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 103
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    .line 104
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItem;->notifyItemChanged()V

    return-void
.end method
