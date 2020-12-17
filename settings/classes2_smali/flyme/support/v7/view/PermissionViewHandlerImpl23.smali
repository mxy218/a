.class public Lflyme/support/v7/view/PermissionViewHandlerImpl23;
.super Ljava/lang/Object;
.source "PermissionViewHandlerImpl23.java"

# interfaces
.implements Lflyme/support/v7/view/PermissionViewHandler;


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private contentLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDownIndicator:Landroid/view/View;

.field private mItemSummaryColor:I

.field private mItemTitleColor:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPermissionManager:Lflyme/support/v7/permission/PermissionManager;

.field private mScrollView:Lflyme/support/v7/widget/PermissionScrollView;

.field private mSpaceView:Landroid/widget/Space;

.field private mTitleColor:I

.field private mUpIndicator:Landroid/view/View;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lflyme/support/v7/permission/PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private termsCheckBox:Landroid/widget/CheckBox;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflyme/support/v7/appcompat/R$color;->mz_alert_dialog_title_color_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mTitleColor:I

    .line 50
    iget-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflyme/support/v7/appcompat/R$color;->mz_permission_dialog_item_title_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mItemTitleColor:I

    .line 51
    iget-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflyme/support/v7/appcompat/R$color;->mz_permission_dialog_item_summary_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mItemSummaryColor:I

    .line 52
    invoke-static {p1}, Lflyme/support/v7/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lflyme/support/v7/permission/PermissionManager;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mPermissionManager:Lflyme/support/v7/permission/PermissionManager;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/view/PermissionViewHandlerImpl23;)Landroid/view/View;
    .registers 1

    .line 29
    iget-object p0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mUpIndicator:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lflyme/support/v7/view/PermissionViewHandlerImpl23;)Landroid/view/View;
    .registers 1

    .line 29
    iget-object p0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mDownIndicator:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lflyme/support/v7/view/PermissionViewHandlerImpl23;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lflyme/support/v7/view/PermissionViewHandlerImpl23;)Lflyme/support/v7/widget/PermissionScrollView;
    .registers 1

    .line 29
    iget-object p0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mScrollView:Lflyme/support/v7/widget/PermissionScrollView;

    return-object p0
.end method

.method private addGroupItem(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    .line 138
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 139
    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mContext:Landroid/content/Context;

    const-wide/high16 v4, 0x4034000000000000L  # 20.0

    invoke-static {v3, v4, v5}, Lflyme/support/v7/util/DensityUtils;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    :cond_1e
    iget-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lflyme/support/v7/appcompat/R$layout;->mz_permission_dialog_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 145
    sget v1, Lflyme/support/v7/appcompat/R$id;->mz_permission_dialog_item_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    sget v2, Lflyme/support/v7/appcompat/R$id;->mz_permission_dialog_item_summary:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 147
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_46

    const/16 p2, 0x8

    .line 149
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_49

    .line 151
    :cond_46
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_49
    if-eqz p4, :cond_55

    .line 154
    iget p2, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mItemTitleColor:I

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget p0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mItemSummaryColor:I

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    :cond_55
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I
    .registers 3

    .line 194
    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 196
    invoke-interface {p0, p2, p1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 198
    :cond_e
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private isTextViewOneLine(Landroid/widget/TextView;)Z
    .registers 5

    .line 185
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 186
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    .line 187
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    .line 188
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->getTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v0

    add-int/2addr p1, v1

    .line 190
    iget-object p0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lflyme/support/v7/appcompat/R$dimen;->mz_alert_dialog_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    if-gt p1, p0, :cond_32

    const/4 p0, 0x1

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    return p0
.end method

.method private manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    const/4 p0, 0x0

    const/4 v0, 0x4

    if-eqz p2, :cond_11

    const/4 v1, -0x1

    .line 162
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, p0

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    if-eqz p3, :cond_1f

    const/4 p2, 0x1

    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move p0, v0

    :goto_1c
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public bindData(Lflyme/support/v7/view/PermissionDialogView$Builder;)V
    .registers 10

    .line 73
    iget-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mPermissionManager:Lflyme/support/v7/permission/PermissionManager;

    iget-object v1, p1, Lflyme/support/v7/view/PermissionDialogView$Builder;->permissions:[Ljava/lang/String;

    iget-object v2, p1, Lflyme/support/v7/view/PermissionDialogView$Builder;->permissionSummary:[Ljava/lang/String;

    iget-object v3, p1, Lflyme/support/v7/view/PermissionDialogView$Builder;->permissionResIds:[I

    invoke-virtual {v0, v1, v2, v3}, Lflyme/support/v7/permission/PermissionManager;->getRequestPermission([Ljava/lang/String;[Ljava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->permissions:Ljava/util/List;

    .line 74
    iget-boolean v0, p1, Lflyme/support/v7/view/PermissionDialogView$Builder;->mShowTitle:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_36

    .line 75
    iget-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->titleTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lflyme/support/v7/view/PermissionDialogView$Builder;->appName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-boolean v0, p1, Lflyme/support/v7/view/PermissionDialogView$Builder;->isDark:Z

    if-eqz v0, :cond_26

    .line 77
    iget-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->titleTextView:Landroid/widget/TextView;

    iget v2, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mTitleColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    :cond_26
    iget-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->titleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->isTextViewOneLine(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 80
    iget-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->titleTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_3b

    .line 83
    :cond_36
    iget-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    move v2, v0

    .line 87
    :goto_42
    iget-object v3, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->permissions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a4

    .line 88
    iget-object v3, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->permissions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/permission/PermissionGroup;

    .line 89
    iget-object v4, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lflyme/support/v7/permission/PermissionGroup;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-virtual {v3}, Lflyme/support/v7/permission/PermissionGroup;->getSubPermission()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lflyme/support/v7/permission/Permission;

    .line 93
    iget-object v7, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lflyme/support/v7/permission/Permission;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7e

    goto :goto_65

    .line 97
    :cond_7e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65

    .line 99
    :cond_87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_96

    .line 101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 103
    :cond_96
    iget-object v3, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p1, Lflyme/support/v7/view/PermissionDialogView$Builder;->isDark:Z

    invoke-direct {p0, v3, v4, v5, v6}, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->addGroupItem(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 105
    :cond_a4
    iget-object v2, p1, Lflyme/support/v7/view/PermissionDialogView$Builder;->additionalGroups:Ljava/util/List;

    if-eqz v2, :cond_c8

    .line 106
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ac
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 107
    iget-object v4, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-boolean v6, p1, Lflyme/support/v7/view/PermissionDialogView$Builder;->isDark:Z

    invoke-direct {p0, v4, v5, v3, v6}, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->addGroupItem(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_ac

    .line 111
    :cond_c8
    iget-object v2, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mScrollView:Lflyme/support/v7/widget/PermissionScrollView;

    new-instance v3, Lflyme/support/v7/view/PermissionViewHandlerImpl23$1;

    invoke-direct {v3, p0}, Lflyme/support/v7/view/PermissionViewHandlerImpl23$1;-><init>(Lflyme/support/v7/view/PermissionViewHandlerImpl23;)V

    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/PermissionScrollView;->setOnScrollChangeListener(Lflyme/support/v7/widget/PermissionScrollView$OnScrollChangeListener;)V

    .line 118
    iget-object v2, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mScrollView:Lflyme/support/v7/widget/PermissionScrollView;

    new-instance v3, Lflyme/support/v7/view/PermissionViewHandlerImpl23$2;

    invoke-direct {v3, p0}, Lflyme/support/v7/view/PermissionViewHandlerImpl23$2;-><init>(Lflyme/support/v7/view/PermissionViewHandlerImpl23;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 125
    iget-boolean v2, p1, Lflyme/support/v7/view/PermissionDialogView$Builder;->showAlmostDenyBtn:Z

    if-eqz v2, :cond_e6

    .line 126
    iget-object v2, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_eb

    .line 128
    :cond_e6
    iget-object v2, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 130
    :goto_eb
    iget-boolean p1, p1, Lflyme/support/v7/view/PermissionDialogView$Builder;->showTermsCheckBox:Z

    if-eqz p1, :cond_f5

    .line 131
    iget-object p0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->termsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_fa

    .line 133
    :cond_f5
    iget-object p0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->termsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_fa
    return-void
.end method

.method public createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 58
    iget-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lflyme/support/v7/appcompat/R$layout;->mz_permission_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    sget v0, Lflyme/support/v7/appcompat/R$id;->mz_permission_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->titleTextView:Landroid/widget/TextView;

    .line 60
    sget v0, Lflyme/support/v7/appcompat/R$id;->mz_permission_dialog_space:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mSpaceView:Landroid/widget/Space;

    .line 61
    iget-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mSpaceView:Landroid/widget/Space;

    invoke-virtual {v0}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x41c00000  # 24.0f

    invoke-static {v1}, Lflyme/support/v7/util/DensityUtils;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    sget v0, Lflyme/support/v7/appcompat/R$id;->mz_permission_dialog_scroll_indicator_up:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mUpIndicator:Landroid/view/View;

    .line 63
    sget v0, Lflyme/support/v7/appcompat/R$id;->mz_permission_dialog_scroll_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/PermissionScrollView;

    iput-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mScrollView:Lflyme/support/v7/widget/PermissionScrollView;

    .line 64
    sget v0, Lflyme/support/v7/appcompat/R$id;->mz_permission_dialog_scroll_indicator_down:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->mDownIndicator:Landroid/view/View;

    .line 65
    sget v0, Lflyme/support/v7/appcompat/R$id;->mz_permission_dialog_content_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->contentLayout:Landroid/widget/LinearLayout;

    .line 66
    sget v0, Lflyme/support/v7/appcompat/R$id;->mz_permission_dialog_checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->checkBox:Landroid/widget/CheckBox;

    .line 67
    sget v0, Lflyme/support/v7/appcompat/R$id;->mz_permission_dialog_terms:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->termsCheckBox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .registers 1

    .line 171
    iget-object p0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->checkBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lflyme/support/v7/permission/PermissionGroup;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object p0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->permissions:Ljava/util/List;

    return-object p0
.end method

.method public getTermsCheckBox()Landroid/widget/CheckBox;
    .registers 1

    .line 176
    iget-object p0, p0, Lflyme/support/v7/view/PermissionViewHandlerImpl23;->termsCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method
