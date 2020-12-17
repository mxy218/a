.class public Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;
.super Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
.source "FlymeRAngleAdjustAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<",
        "Lcom/meizu/settings/widget/MzAppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCounts:[I

.field private mFlymeRAngleAdustHelper:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;[ILjava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;[I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 25
    fill-array-data p2, :array_2c

    iput-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->mCounts:[I

    .line 28
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->mAppNames:Ljava/util/HashMap;

    .line 34
    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->mContext:Landroid/content/Context;

    .line 35
    iget-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->mFlymeRAngleAdustHelper:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    .line 36
    iput-object p4, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->mAppNames:Ljava/util/HashMap;

    .line 37
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->mCounts:[I

    const/4 p1, 0x0

    aget p2, p3, p1

    aput p2, p0, p1

    const/4 p1, 0x1

    .line 38
    aget p2, p3, p1

    aput p2, p0, p1

    return-void

    nop

    :array_2c
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->mFlymeRAngleAdustHelper:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    return-object p0
.end method

.method private initItemView(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;Lcom/meizu/settings/widget/MzAppEntry;)V
    .registers 9

    .line 99
    iget-object v0, p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->itemsLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->descriptionLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_5f

    .line 102
    iget-object v0, p2, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_14

    goto :goto_5f

    .line 106
    :cond_14
    iget-object v0, p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->rAngleAdustSwitch:Lcom/meizu/common/widget/Switch;

    .line 107
    iget-object v2, p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->appIconImage:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {p2}, Lcom/meizu/settings/widget/MzAppEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v2, p2, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 113
    iget-object v3, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->mAppNames:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    iget-object v4, p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->appNameText:Landroid/widget/TextView;

    if-eqz v3, :cond_3c

    const-string/jumbo v5, "|"

    .line 116
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 117
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    .line 119
    :cond_3c
    invoke-virtual {p2}, Lcom/meizu/settings/widget/MzAppEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_43
    iget-object v3, p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->rAngleAdustSwitch:Lcom/meizu/common/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    iget-boolean v3, p2, Lcom/meizu/settings/widget/MzAppEntry;->mIsRAngleAdjust:Z

    if-eqz v3, :cond_52

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    goto :goto_55

    .line 126
    :cond_52
    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 129
    :goto_55
    iget-object p1, p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->rAngleAdustSwitch:Lcom/meizu/common/widget/Switch;

    new-instance v0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$1;

    invoke-direct {v0, p0, p2, v2}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$1;-><init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;Lcom/meizu/settings/widget/MzAppEntry;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5f
    :goto_5f
    return-void
.end method


# virtual methods
.method protected bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .registers 5

    .line 50
    new-instance p0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;Landroid/content/Context;IILcom/meizu/settings/widget/MzAppEntry;II)V
    .registers 8

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;

    if-nez p4, :cond_33

    .line 83
    iget-object p2, p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->descriptionLayout:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 84
    iget-object p2, p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->descriptionLayout:Landroid/view/View;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p2, p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->descriptionLayout:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object p2, p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->itemsLayout:Landroid/view/View;

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->mCounts:[I

    const/4 p5, 0x1

    aget p2, p2, p5

    if-nez p2, :cond_2d

    .line 88
    iget-object p1, p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_36

    .line 90
    :cond_2d
    iget-object p1, p1, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_36

    .line 93
    :cond_33
    invoke-direct {p0, p1, p5}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->initItemView(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;Lcom/meizu/settings/widget/MzAppEntry;)V

    .line 95
    :goto_36
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V
    .registers 8

    .line 21
    check-cast p5, Lcom/meizu/settings/widget/MzAppEntry;

    invoke-virtual/range {p0 .. p7}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILcom/meizu/settings/widget/MzAppEntry;II)V

    return-void
.end method

.method protected newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d00a2

    const/4 p2, 0x0

    .line 45
    invoke-virtual {p0, p1, p4, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected newView(Landroid/content/Context;IILcom/meizu/settings/widget/MzAppEntry;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0153

    const/4 p2, 0x0

    .line 58
    invoke-virtual {p0, p1, p7, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/widget/PartitionItemLayout;

    const p2, 0x7f0d02bf

    const/4 p3, 0x1

    .line 60
    invoke-virtual {p0, p2, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    new-instance p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;

    invoke-direct {p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;-><init>()V

    const p2, 0x7f0a05b3

    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->descriptionLayout:Landroid/view/View;

    const p2, 0x7f0a05b4

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->itemsLayout:Landroid/view/View;

    const p2, 0x7f0a00ad

    .line 66
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->appNameText:Landroid/widget/TextView;

    const p2, 0x7f0a05b6

    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/meizu/common/widget/Switch;

    iput-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->rAngleAdustSwitch:Lcom/meizu/common/widget/Switch;

    const p2, 0x7f0a00a8

    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->appIconImage:Landroid/widget/ImageView;

    .line 69
    iget-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->descriptionLayout:Landroid/view/View;

    const p3, 0x7f0a0252

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter$AppViewHolder;->emptyTextView:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 21
    check-cast p4, Lcom/meizu/settings/widget/MzAppEntry;

    invoke-virtual/range {p0 .. p7}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustAdapter;->newView(Landroid/content/Context;IILcom/meizu/settings/widget/MzAppEntry;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
