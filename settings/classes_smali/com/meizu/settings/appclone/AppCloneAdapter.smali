.class public Lcom/meizu/settings/appclone/AppCloneAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppCloneAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;,
        Lcom/meizu/settings/appclone/AppCloneAdapter$CategoryHolder;,
        Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mActive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAppCloneState:Lcom/meizu/settings/appclone/AppCloneState;

.field private mAppCloneVersion:Lcom/meizu/settings/appclone/AppCloneVersion;

.field private mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/appclone/AppCloneBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPenddingDisableInfo:Lcom/meizu/settings/appclone/AppCloneAppInfo;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mInfoList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mActive:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mFragment:Landroid/app/Fragment;

    .line 76
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mContext:Landroid/content/Context;

    .line 77
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneState;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mAppCloneState:Lcom/meizu/settings/appclone/AppCloneState;

    .line 79
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneVersion;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneVersion;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mAppCloneVersion:Lcom/meizu/settings/appclone/AppCloneVersion;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/appclone/AppCloneAdapter;)Lcom/meizu/settings/appclone/AppCloneVersion;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mAppCloneVersion:Lcom/meizu/settings/appclone/AppCloneVersion;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/appclone/AppCloneAdapter;)Landroid/content/Context;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/appclone/AppCloneAdapter;Lcom/meizu/settings/appclone/AppCloneAppInfo;)Lcom/meizu/settings/appclone/AppCloneAppInfo;
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mPenddingDisableInfo:Lcom/meizu/settings/appclone/AppCloneAppInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/appclone/AppCloneAdapter;)Landroid/app/Fragment;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mFragment:Landroid/app/Fragment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/appclone/AppCloneAdapter;Landroid/widget/CompoundButton;Lcom/meizu/settings/appclone/AppCloneAppInfo;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/appclone/AppCloneAdapter;->showDisableDialog(Landroid/widget/CompoundButton;Lcom/meizu/settings/appclone/AppCloneAppInfo;)V

    return-void
.end method

.method private showDisableDialog(Landroid/widget/CompoundButton;Lcom/meizu/settings/appclone/AppCloneAppInfo;)V
    .registers 13

    .line 109
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/appclone/AppCloneVersion;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/appclone/AppCloneVersion;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_23

    .line 110
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/meizu/settings/appclone/AppCloneAppInfo;->getPkg()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    move v5, v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/meizu/settings/appclone/AppCloneState;->setAppCloneEnabled(ZLjava/lang/String;ZZI)Z

    return-void

    .line 114
    :cond_23
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12015d

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 116
    new-instance v7, Lcom/meizu/settings/appclone/AppCloneAdapter$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/meizu/settings/appclone/AppCloneAdapter$1;-><init>(Lcom/meizu/settings/appclone/AppCloneAdapter;Lcom/meizu/settings/appclone/AppCloneAppInfo;Landroid/widget/CompoundButton;)V

    .line 124
    new-instance v8, Lcom/meizu/settings/appclone/AppCloneAdapter$2;

    invoke-direct {v8, p0, p1}, Lcom/meizu/settings/appclone/AppCloneAdapter$2;-><init>(Lcom/meizu/settings/appclone/AppCloneAdapter;Landroid/widget/CompoundButton;)V

    .line 132
    new-instance v9, Lcom/meizu/settings/appclone/AppCloneAdapter$3;

    invoke-direct {v9, p0, p1}, Lcom/meizu/settings/appclone/AppCloneAdapter$3;-><init>(Lcom/meizu/settings/appclone/AppCloneAdapter;Landroid/widget/CompoundButton;)V

    .line 140
    invoke-static {}, Lcom/meizu/settings/appclone/AppCloneAlertHelper;->getInstance()Lcom/meizu/settings/appclone/AppCloneAlertHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    const-string v4, "AppCloneAdaper"

    invoke-virtual/range {v2 .. v9}, Lcom/meizu/settings/appclone/AppCloneAlertHelper;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mInfoList:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_a
    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 159
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mInfoList:Ljava/util/List;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_e

    :cond_a
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_e
    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 245
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mInfoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    invoke-virtual {p0}, Lcom/meizu/settings/appclone/AppCloneBaseInfo;->getType()I

    move-result p0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 169
    invoke-virtual {p0, p1}, Lcom/meizu/settings/appclone/AppCloneAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_cd

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    move-object p3, p2

    goto/16 :goto_106

    .line 216
    :cond_10
    invoke-virtual {p0, p1}, Lcom/meizu/settings/appclone/AppCloneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    if-eqz p2, :cond_22

    .line 219
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/appclone/AppCloneAdapter$CategoryHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_3e

    .line 221
    :cond_22
    new-instance p2, Lcom/meizu/settings/appclone/AppCloneAdapter$CategoryHolder;

    invoke-direct {p2}, Lcom/meizu/settings/appclone/AppCloneAdapter$CategoryHolder;-><init>()V

    .line 222
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00a2

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a015c

    .line 224
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$CategoryHolder;->title:Landroid/widget/TextView;

    .line 225
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 227
    :goto_3e
    iget-object v0, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$CategoryHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meizu/settings/appclone/AppCloneBaseInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iput-object p1, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$CategoryHolder;->info:Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    goto/16 :goto_106

    .line 187
    :cond_4b
    invoke-virtual {p0, p1}, Lcom/meizu/settings/appclone/AppCloneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/appclone/AppCloneAppInfo;

    if-eqz p2, :cond_5d

    .line 189
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_8f

    .line 191
    :cond_5d
    new-instance p2, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;

    invoke-direct {p2}, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;-><init>()V

    .line 192
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0069

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a033c

    .line 193
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a072c

    .line 194
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0a0702

    .line 195
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/Switch;

    iput-object v0, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;->switcher:Lcom/meizu/common/widget/Switch;

    .line 196
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 198
    :goto_8f
    invoke-virtual {p1}, Lcom/meizu/settings/appclone/AppCloneAppInfo;->getPkg()Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mAppCloneState:Lcom/meizu/settings/appclone/AppCloneState;

    invoke-virtual {v1, v0}, Lcom/meizu/settings/appclone/AppCloneState;->startGetIconIfNeeded(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 200
    iget-object v1, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meizu/settings/appclone/AppCloneBaseInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;->switcher:Lcom/meizu/common/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 203
    iget-object v0, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;->switcher:Lcom/meizu/common/widget/Switch;

    invoke-virtual {p1}, Lcom/meizu/settings/appclone/AppCloneAppInfo;->isCloneEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 204
    new-instance v0, Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/appclone/AppCloneAdapter$MyCheckedChangeListener;-><init>(Lcom/meizu/settings/appclone/AppCloneAdapter;Lcom/meizu/settings/appclone/AppCloneAppInfo;)V

    .line 205
    iget-object v1, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;->switcher:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 206
    iput-object p1, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;->info:Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    .line 207
    iget-object p1, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;->switcher:Lcom/meizu/common/widget/Switch;

    .line 208
    new-instance p2, Lcom/meizu/settings/appclone/AppCloneAdapter$4;

    invoke-direct {p2, p0, p1}, Lcom/meizu/settings/appclone/AppCloneAdapter$4;-><init>(Lcom/meizu/settings/appclone/AppCloneAdapter;Lcom/meizu/common/widget/Switch;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_106

    .line 173
    :cond_cd
    invoke-virtual {p0, p1}, Lcom/meizu/settings/appclone/AppCloneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    if-eqz p2, :cond_df

    .line 175
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/appclone/AppCloneAdapter$CategoryHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_fb

    .line 177
    :cond_df
    new-instance p2, Lcom/meizu/settings/appclone/AppCloneAdapter$CategoryHolder;

    invoke-direct {p2}, Lcom/meizu/settings/appclone/AppCloneAdapter$CategoryHolder;-><init>()V

    .line 178
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d01e3

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a06f5

    .line 179
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$CategoryHolder;->title:Landroid/widget/TextView;

    .line 180
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 182
    :goto_fb
    iget-object v0, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$CategoryHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meizu/settings/appclone/AppCloneBaseInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iput-object p1, p2, Lcom/meizu/settings/appclone/AppCloneAdapter$CategoryHolder;->info:Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    .line 233
    :goto_106
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mActive:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 234
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mActive:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method public getViewTypeCount()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public isEnabled(I)Z
    .registers 2

    .line 255
    invoke-virtual {p0, p1}, Lcom/meizu/settings/appclone/AppCloneAdapter;->getItemViewType(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_8

    return p1

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 2

    .line 240
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mActive:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resumeDisableAppClone()V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mPenddingDisableInfo:Lcom/meizu/settings/appclone/AppCloneAppInfo;

    if-nez v0, :cond_d

    const-string p0, "AppCloneAdaper"

    const-string/jumbo v0, "resumeDisableAppClone info is null, return"

    .line 146
    invoke-static {p0, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/appclone/AppCloneAdapter;->showDisableDialog(Landroid/widget/CompoundButton;Lcom/meizu/settings/appclone/AppCloneAppInfo;)V

    return-void
.end method

.method public updateIcon(Ljava/lang/String;)V
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mActive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    goto :goto_6

    .line 91
    :cond_19
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 92
    instance-of v2, v1, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;

    if-nez v2, :cond_22

    goto :goto_6

    .line 95
    :cond_22
    check-cast v1, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;

    .line 96
    iget-object v2, v1, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;->info:Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    check-cast v2, Lcom/meizu/settings/appclone/AppCloneAppInfo;

    .line 97
    invoke-virtual {v2}, Lcom/meizu/settings/appclone/AppCloneAppInfo;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 98
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    iget-object v1, v1, Lcom/meizu/settings/appclone/AppCloneAdapter$AppItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " drawable is Default = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->isDefaultIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppCloneAdaper"

    .line 101
    invoke-static {p1, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    return-void
.end method

.method public updateItemList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/appclone/AppCloneBaseInfo;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneAdapter;->mInfoList:Ljava/util/List;

    return-void
.end method
