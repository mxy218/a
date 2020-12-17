.class Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;
.super Landroid/widget/BaseAdapter;
.source "DefaultAppSettingsDetails.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/DefaultAppSettingsDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DetalisAdapter"
.end annotation


# instance fields
.field private mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

.field private mDefaultPackge:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;)V
    .registers 5

    .line 99
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mAppInfoList:Ljava/util/ArrayList;

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mActive:Ljava/util/ArrayList;

    .line 100
    iput-object p2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mData:Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    .line 101
    iget-object p1, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultPackage:Ljava/lang/String;

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mDefaultPackge:Ljava/lang/String;

    .line 102
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mData:Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    iget p1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->dateType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_37

    .line 103
    iget-object p1, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->appInfos:Ljava/util/ArrayList;

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p1, v0, :cond_37

    .line 104
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mAppInfoList:Ljava/util/ArrayList;

    new-instance v1, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;

    invoke-direct {v1}, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->setEmpty(Z)Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_37
    iget-object p1, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->appInfos:Ljava/util/ArrayList;

    if-eqz p1, :cond_40

    .line 108
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_40
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mAppInfoList:Ljava/util/ArrayList;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_a
    return p0
.end method

.method public getItem(I)Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;
    .registers 2

    .line 119
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 93
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->getItem(I)Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    if-nez p2, :cond_2f

    .line 131
    new-instance p2, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;

    invoke-direct {p2}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;-><init>()V

    .line 132
    iget-object p3, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-static {p3}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$500(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d012b

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a00a8

    .line 134
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a00ad

    .line 135
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p2, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;->name:Landroid/widget/CheckedTextView;

    .line 136
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_38

    .line 138
    :cond_2f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 140
    :goto_38
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->getItem(I)Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;

    move-result-object p1

    .line 141
    iget-boolean v0, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->isEmpty:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_56

    .line 142
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mDefaultPackge:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 143
    iget-object p1, p2, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;->name:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_7f

    .line 145
    :cond_50
    iget-object p1, p2, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;->name:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_7f

    .line 148
    :cond_56
    iget-object v0, p2, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v0, p2, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;->name:Landroid/widget/CheckedTextView;

    iget-object v3, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mDefaultPackge:Ljava/lang/String;

    if-eqz v0, :cond_76

    iget-object v3, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 152
    iget-object v0, p2, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;->name:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_7b

    .line 154
    :cond_76
    iget-object v0, p2, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;->name:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 156
    :goto_7b
    iget-object p1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    iput-object p1, p2, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;->packageName:Ljava/lang/String;

    .line 158
    :goto_7f
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 2

    .line 165
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public refreshDefaultPackage(Ljava/lang/String;)V
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mDefaultPackge:Ljava/lang/String;

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    return-void

    .line 172
    :cond_7
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mDefaultPackge:Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 175
    :cond_12
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mDefaultPackge:Ljava/lang/String;

    .line 176
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;

    if-nez v0, :cond_2f

    goto :goto_1a

    .line 181
    :cond_2f
    iget-object v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 182
    iget-object v2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->mDefaultPackge:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 183
    iget-object v0, v0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;->name:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1a

    .line 185
    :cond_42
    iget-object v0, v0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;->name:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1a

    :cond_49
    return-void
.end method
