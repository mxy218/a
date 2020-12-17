.class public Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;
.super Landroid/widget/BaseAdapter;
.source "DndAppNotificationAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;,
        Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$CategoryHolder;,
        Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$MyCheckedChangeListener;
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

.field private mContext:Landroid/content/Context;

.field private mDndAppListState:Lcom/meizu/settings/donotdisturb/DndAppListState;

.field private mFragment:Landroid/app/Fragment;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/donotdisturb/DndBaseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mInfoList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mActive:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mFragment:Landroid/app/Fragment;

    .line 57
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mContext:Landroid/content/Context;

    .line 58
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/DndAppListState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/donotdisturb/DndAppListState;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mDndAppListState:Lcom/meizu/settings/donotdisturb/DndAppListState;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;)Lcom/meizu/settings/donotdisturb/DndAppListState;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mDndAppListState:Lcom/meizu/settings/donotdisturb/DndAppListState;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mInfoList:Ljava/util/List;

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

    .line 95
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mInfoList:Ljava/util/List;

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

    .line 181
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mInfoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/donotdisturb/DndBaseInfo;

    invoke-virtual {p0}, Lcom/meizu/settings/donotdisturb/DndBaseInfo;->getType()I

    move-result p0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 105
    invoke-virtual {p0, p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_cd

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    move-object p3, p2

    goto/16 :goto_106

    .line 152
    :cond_10
    invoke-virtual {p0, p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/donotdisturb/DndBaseInfo;

    if-eqz p2, :cond_22

    .line 155
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$CategoryHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_3e

    .line 157
    :cond_22
    new-instance p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$CategoryHolder;

    invoke-direct {p2}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$CategoryHolder;-><init>()V

    .line 158
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00a2

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a015c

    .line 160
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$CategoryHolder;->title:Landroid/widget/TextView;

    .line 161
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    :goto_3e
    iget-object v0, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$CategoryHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meizu/settings/donotdisturb/DndBaseInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iput-object p1, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$CategoryHolder;->info:Lcom/meizu/settings/donotdisturb/DndBaseInfo;

    goto/16 :goto_106

    .line 123
    :cond_4b
    invoke-virtual {p0, p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/donotdisturb/DndAppInfo;

    if-eqz p2, :cond_5d

    .line 125
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_8f

    .line 127
    :cond_5d
    new-instance p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;

    invoke-direct {p2}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00cd

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a033c

    .line 129
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a072c

    .line 130
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0a0702

    .line 131
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;->switcher:Landroid/widget/CheckBox;

    .line 132
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    :goto_8f
    invoke-virtual {p1}, Lcom/meizu/settings/donotdisturb/DndAppInfo;->getPkg()Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mDndAppListState:Lcom/meizu/settings/donotdisturb/DndAppListState;

    invoke-virtual {v1, v0}, Lcom/meizu/settings/donotdisturb/DndAppListState;->startGetIconIfNeeded(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    iget-object v1, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meizu/settings/donotdisturb/DndBaseInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;->switcher:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    iget-object v0, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;->switcher:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/meizu/settings/donotdisturb/DndAppInfo;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 140
    new-instance v0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$MyCheckedChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$MyCheckedChangeListener;-><init>(Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;Lcom/meizu/settings/donotdisturb/DndAppInfo;)V

    .line 141
    iget-object v1, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;->switcher:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    iput-object p1, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;->info:Lcom/meizu/settings/donotdisturb/DndBaseInfo;

    .line 143
    iget-object p1, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;->switcher:Landroid/widget/CheckBox;

    .line 144
    new-instance p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$1;-><init>(Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;Landroid/widget/CheckBox;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_106

    .line 109
    :cond_cd
    invoke-virtual {p0, p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/donotdisturb/DndBaseInfo;

    if-eqz p2, :cond_df

    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$CategoryHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_fb

    .line 113
    :cond_df
    new-instance p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$CategoryHolder;

    invoke-direct {p2}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$CategoryHolder;-><init>()V

    .line 114
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d01e3

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a06f5

    .line 115
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$CategoryHolder;->title:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    :goto_fb
    iget-object v0, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$CategoryHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meizu/settings/donotdisturb/DndBaseInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iput-object p1, p2, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$CategoryHolder;->info:Lcom/meizu/settings/donotdisturb/DndBaseInfo;

    .line 169
    :goto_106
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mActive:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mActive:Ljava/util/List;

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

    .line 191
    invoke-virtual {p0, p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->getItemViewType(I)I

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

    .line 176
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mActive:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateIcon(Ljava/lang/String;)V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mActive:Ljava/util/List;

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

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    goto :goto_6

    .line 71
    :cond_19
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 72
    instance-of v2, v1, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;

    if-nez v2, :cond_22

    goto :goto_6

    .line 75
    :cond_22
    check-cast v1, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;

    .line 76
    iget-object v2, v1, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;->info:Lcom/meizu/settings/donotdisturb/DndBaseInfo;

    check-cast v2, Lcom/meizu/settings/donotdisturb/DndAppInfo;

    .line 77
    invoke-virtual {v2}, Lcom/meizu/settings/donotdisturb/DndAppInfo;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 78
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    iget-object v1, v1, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter$AppItemHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " drawable is Default = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->isDefaultIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppCloneAdaper"

    .line 81
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    return-void
.end method

.method public updateItemList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/donotdisturb/DndBaseInfo;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->mInfoList:Ljava/util/List;

    return-void
.end method
