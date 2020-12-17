.class Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "DefaultAppSettingsList.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/DefaultAppSettingsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryAdapter"
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

.field private mAllCategoryData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;",
            ">;"
        }
    .end annotation
.end field

.field private mAppCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

.field final synthetic this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/applications/DefaultAppSettingsList;Lcom/meizu/settings/applications/DefaultAppSettingsState;)V
    .registers 3

    .line 79
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    .line 75
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mAllCategoryData:Landroid/util/SparseArray;

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mActive:Ljava/util/ArrayList;

    .line 80
    iput-object p2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_a
    return p0
.end method

.method public getItem(I)Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 72
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->getItem(I)Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    .line 106
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    .line 96
    iget p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->type:I

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 111
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->getItemViewType(I)I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_18

    .line 113
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->access$200(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0270

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    goto/16 :goto_cc

    :cond_18
    const/4 v1, 0x2

    const v2, 0x7f0a0157

    if-eq p3, v1, :cond_ac

    const/4 v1, 0x3

    if-ne p3, v1, :cond_23

    goto/16 :goto_ac

    :cond_23
    if-nez p2, :cond_64

    .line 121
    iget-object p2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-static {p2}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->access$200(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d012c

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 123
    new-instance p3, Lcom/meizu/settings/applications/DefaultAppSettingsList$ViewHolder;

    invoke-direct {p3}, Lcom/meizu/settings/applications/DefaultAppSettingsList$ViewHolder;-><init>()V

    const v0, 0x7f0a0156

    .line 124
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/meizu/settings/applications/DefaultAppSettingsList$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 125
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/meizu/settings/applications/DefaultAppSettingsList$ViewHolder;->lable:Landroid/widget/TextView;

    const v0, 0x7f0a015b

    .line 126
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/meizu/settings/applications/DefaultAppSettingsList$ViewHolder;->summay:Landroid/widget/TextView;

    const v0, 0x7f0a04dc

    .line 127
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/meizu/settings/applications/DefaultAppSettingsList$ViewHolder;->nextIcon:Landroid/widget/ImageView;

    .line 128
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_6a

    .line 130
    :cond_64
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/applications/DefaultAppSettingsList$ViewHolder;

    .line 132
    :goto_6a
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    .line 133
    iput-object p1, p3, Lcom/meizu/settings/applications/DefaultAppSettingsList$ViewHolder;->attchCategory:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    .line 134
    iget-object v0, p3, Lcom/meizu/settings/applications/DefaultAppSettingsList$ViewHolder;->lable:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mAllCategoryData:Landroid/util/SparseArray;

    iget p1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    if-eqz p1, :cond_cc

    .line 138
    iget-object v0, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultSummary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 139
    iget-object v0, p3, Lcom/meizu/settings/applications/DefaultAppSettingsList$ViewHolder;->summay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a4

    .line 141
    :cond_97
    iget-object v0, p3, Lcom/meizu/settings/applications/DefaultAppSettingsList$ViewHolder;->summay:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p3, Lcom/meizu/settings/applications/DefaultAppSettingsList$ViewHolder;->summay:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_a4
    iget-object p3, p3, Lcom/meizu/settings/applications/DefaultAppSettingsList$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_cc

    .line 115
    :cond_ac
    :goto_ac
    iget-object p2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-static {p2}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->access$200(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0134

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 116
    iget-object p3, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    .line 117
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->title:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_cc
    :goto_cc
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public getViewTypeCount()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public isEnabled(I)Z
    .registers 4

    .line 155
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 158
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 2

    .line 163
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public refreshCategories()V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getAppCategories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    invoke-direct {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;-><init>()V

    const/4 v1, 0x1

    .line 169
    iput v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->type:I

    .line 170
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    invoke-direct {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;-><init>()V

    const/4 v1, 0x2

    .line 172
    iput v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->type:I

    .line 173
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12017e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->title:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    invoke-direct {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;-><init>()V

    const/4 v1, 0x3

    .line 176
    iput v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->type:I

    .line 177
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12017f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->title:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getCatagoryDatas()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->mAllCategoryData:Landroid/util/SparseArray;

    return-void
.end method
