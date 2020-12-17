.class public Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;
.super Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
.source "FlymeQuickWakeupSelectAppAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$OnCheckChangedListener;,
        Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<",
        "Lcom/meizu/settings/widget/MzAppEntry;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field private mChoosedAppInfo:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mCounts:[I

.field private mFastscrollStartPosition:I

.field private mGuestureIconResId:I

.field private mGuestureOn:Z

.field private mGuestureSwitchKey:Ljava/lang/String;

.field private mGuestureTitle:Ljava/lang/String;

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnCheckChangedListener:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$OnCheckChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 40
    fill-array-data p1, :array_10

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mCounts:[I

    const/4 p1, 0x3

    .line 50
    iput p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mFastscrollStartPosition:I

    return-void

    nop

    :array_10
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;[I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 40
    fill-array-data v0, :array_50

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mCounts:[I

    const/4 v0, 0x3

    .line 50
    iput v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mFastscrollStartPosition:I

    .line 62
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mContext:Landroid/content/Context;

    .line 63
    iput p7, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mGuestureIconResId:I

    .line 64
    iput-object p5, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mGuestureSwitchKey:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mGuestureTitle:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mChoosedAppInfo:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    iput-object p4, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 68
    iget-object p4, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mCounts:[I

    const/4 p5, 0x0

    aget p6, p3, p5

    aput p6, p4, p5

    const/4 p6, 0x1

    .line 69
    aget p3, p3, p6

    aput p3, p4, p6

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p3, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mGuestureSwitchKey:Ljava/lang/String;

    invoke-static {p1, p3, p5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3d

    .line 72
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->isChoosedAppExist()Z

    move-result p1

    if-eqz p1, :cond_3d

    move p5, p6

    :cond_3d
    iput-boolean p5, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mGuestureOn:Z

    .line 73
    invoke-virtual {p0, p2}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->setList(Ljava/util/List;)V

    .line 74
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mChoosedAppInfo:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 75
    iget p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mFastscrollStartPosition:I

    add-int/2addr p1, p6

    iput p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mFastscrollStartPosition:I

    :cond_4f
    return-void

    :array_50
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mGuestureOn:Z

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mGuestureOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mChoosedAppInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)Landroid/content/Context;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mGuestureSwitchKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$OnCheckChangedListener;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mOnCheckChangedListener:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$OnCheckChangedListener;

    return-object p0
.end method

.method private isChoosedAppExist()Z
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mChoosedAppInfo:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v2, "com.meizu.flashlight"

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 86
    :cond_10
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mChoosedAppInfo:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 87
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mChoosedAppInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    .line 88
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_29
    return v1
.end method

.method private setGuestureSwithView(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;)V
    .registers 6

    .line 233
    iget-object v0, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane1:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane2:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane2:Landroid/view/View;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 237
    iget-object v0, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane1:Landroid/view/View;

    const v2, 0x7f0a02f3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 238
    iget-object v2, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane1:Landroid/view/View;

    const v3, 0x7f0a02f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 240
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget v1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mGuestureIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mGuestureTitle:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane1:Landroid/view/View;

    const v1, 0x7f0a02f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/Switch;

    .line 245
    iget-boolean v1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mGuestureOn:Z

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    const/4 v1, 0x0

    .line 247
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 248
    new-instance v1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$1;-><init>(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 270
    iget-object p1, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane1:Landroid/view/View;

    new-instance v1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$2;-><init>(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;Lcom/meizu/common/widget/Switch;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .registers 5

    if-nez p4, :cond_10

    .line 150
    new-instance p0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 151
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3b

    :cond_10
    const p3, 0x7f0a072d

    .line 153
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 p4, 0x0

    .line 154
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0xa0701e7

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 157
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1210f9

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3b
    return-void
.end method

.method protected bindView(Landroid/view/View;Landroid/content/Context;IILcom/meizu/settings/widget/MzAppEntry;II)V
    .registers 8

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;

    const/16 p2, 0x8

    if-nez p4, :cond_14

    .line 188
    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->setGuestureSwithView(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;)V

    .line 189
    iget-object p1, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->transparentView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b7

    .line 192
    :cond_14
    iget-object p3, p5, Lcom/meizu/settings/widget/MzAppEntry;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez p3, :cond_19

    return-void

    .line 196
    :cond_19
    iget-object p3, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane1:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object p3, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane2:Landroid/view/View;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-boolean p3, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mGuestureOn:Z

    .line 201
    iget-object p6, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->transparentView:Landroid/view/View;

    if-eqz p3, :cond_2b

    goto :goto_2c

    :cond_2b
    move p2, p4

    :goto_2c
    invoke-virtual {p6, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x1

    if-eqz p3, :cond_47

    .line 203
    iget-object p6, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane2:Landroid/view/View;

    invoke-virtual {p6}, Landroid/view/View;->isEnabled()Z

    move-result p6

    if-nez p6, :cond_3f

    .line 204
    iget-object p6, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane2:Landroid/view/View;

    invoke-virtual {p6, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 206
    :cond_3f
    iget-object p6, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane2:Landroid/view/View;

    const/high16 p7, 0x3f800000  # 1.0f

    invoke-virtual {p6, p7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5c

    .line 208
    :cond_47
    iget-object p6, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane2:Landroid/view/View;

    const p7, 0x3e99999a  # 0.3f

    invoke-virtual {p6, p7}, Landroid/view/View;->setAlpha(F)V

    .line 209
    iget-object p6, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane2:Landroid/view/View;

    invoke-virtual {p6}, Landroid/view/View;->isEnabled()Z

    move-result p6

    if-eqz p6, :cond_5c

    .line 210
    iget-object p6, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane2:Landroid/view/View;

    invoke-virtual {p6, p4}, Landroid/view/View;->setEnabled(Z)V

    .line 214
    :cond_5c
    :goto_5c
    iget-object p6, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->appIconImage:Landroid/widget/ImageView;

    invoke-virtual {p5}, Lcom/meizu/settings/widget/MzAppEntry;->getIconLoaded()Landroid/graphics/drawable/Drawable;

    move-result-object p7

    if-nez p7, :cond_69

    .line 215
    invoke-virtual {p5}, Lcom/meizu/settings/widget/MzAppEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p7

    goto :goto_6d

    :cond_69
    invoke-virtual {p5}, Lcom/meizu/settings/widget/MzAppEntry;->getIconLoaded()Landroid/graphics/drawable/Drawable;

    move-result-object p7

    .line 214
    :goto_6d
    invoke-virtual {p6, p7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object p6, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->appNameText:Landroid/widget/TextView;

    invoke-virtual {p5}, Lcom/meizu/settings/widget/MzAppEntry;->getLabel()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/meizu/settings/widget/MzAppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p7

    iget-object p7, p7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, ","

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p5, Lcom/meizu/settings/widget/MzAppEntry;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object p5, p5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p5, p5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 220
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_ad

    iget-object p6, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mChoosedAppInfo:Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_ad

    .line 221
    iget-object p4, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->appChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {p4, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_b2

    .line 223
    :cond_ad
    iget-object p2, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->appChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {p2, p4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 226
    :goto_b2
    iget-object p1, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->appChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 228
    :goto_b7
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V
    .registers 8

    .line 32
    check-cast p5, Lcom/meizu/settings/widget/MzAppEntry;

    invoke-virtual/range {p0 .. p7}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILcom/meizu/settings/widget/MzAppEntry;II)V

    return-void
.end method

.method public getPositionForSection(I)I
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    if-nez p1, :cond_b

    .line 284
    iget p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mFastscrollStartPosition:I

    return p0

    .line 286
    :cond_b
    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result p0

    return p0
.end method

.method public getSectionForPosition(I)I
    .registers 2

    .line 290
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result p0

    :goto_a
    return p0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 1

    .line 294
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method protected newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 142
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0d01e2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p4, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected newView(Landroid/content/Context;IILcom/meizu/settings/widget/MzAppEntry;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 165
    new-instance p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;

    invoke-direct {p1}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;-><init>()V

    .line 166
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0d017b

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {p0, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const p2, 0x7f0a0523

    .line 168
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane1:Landroid/view/View;

    const p2, 0x7f0a0524

    .line 169
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->pane2:Landroid/view/View;

    const p2, 0x7f0a00ad

    .line 170
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->appNameText:Landroid/widget/TextView;

    const p2, 0x7f0a0307

    .line 172
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckedTextView;

    iput-object p2, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->appChecked:Landroid/widget/CheckedTextView;

    const p2, 0x7f0a00a8

    .line 173
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->appIconImage:Landroid/widget/ImageView;

    const p2, 0x7f0a0773

    .line 174
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$AppViewHolder;->transparentView:Landroid/view/View;

    .line 175
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method protected bridge synthetic newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 32
    check-cast p4, Lcom/meizu/settings/widget/MzAppEntry;

    invoke-virtual/range {p0 .. p7}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->newView(Landroid/content/Context;IILcom/meizu/settings/widget/MzAppEntry;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setChoosedAppInfo(Ljava/lang/String;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mChoosedAppInfo:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;)V"
        }
    .end annotation

    .line 98
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mCounts:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "#"

    if-eqz v3, :cond_29

    aget v1, v1, v4

    if-nez v1, :cond_1a

    goto :goto_29

    .line 107
    :cond_1a
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 110
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_30

    .line 103
    :cond_29
    :goto_29
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 115
    :goto_30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_34
    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/MzAppEntry;

    .line 116
    invoke-virtual {v1}, Lcom/meizu/settings/widget/MzAppEntry;->getLabelToPinyin()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 118
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_34

    .line 123
    :cond_52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/meizu/settings/widget/MzAppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/meizu/settings/widget/MzAppEntry;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 125
    iget-object v7, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mChoosedAppInfo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    :cond_88
    invoke-virtual {v1}, Lcom/meizu/settings/widget/MzAppEntry;->getLabelToPinyin()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    new-array v3, v4, [Ljava/lang/String;

    .line 131
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 130
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_34

    .line 135
    :cond_9e
    new-instance p1, Landroid/widget/AlphabetIndexer;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f120860

    .line 136
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v2, v1}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    return-void
.end method

.method public setOnCheckChangedListener(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$OnCheckChangedListener;)V
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->mOnCheckChangedListener:Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$OnCheckChangedListener;

    return-void
.end method
