.class Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "DefaultOpenFileSettingsList.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;
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

.field final synthetic this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;Lcom/meizu/settings/applications/DefaultAppSettingsState;)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    .line 69
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mAllCategoryData:Landroid/util/SparseArray;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mActive:Ljava/util/ArrayList;

    .line 74
    iput-object p2, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

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

    .line 84
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 66
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->getItem(I)Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    .line 89
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p2, :cond_45

    .line 96
    iget-object p2, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    invoke-static {p2}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;->access$200(Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d012c

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 98
    new-instance p3, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$ViewHolder;

    invoke-direct {p3}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$ViewHolder;-><init>()V

    const v0, 0x7f0a0156

    .line 99
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a0157

    .line 100
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$ViewHolder;->lable:Landroid/widget/TextView;

    const v0, 0x7f0a015b

    .line 101
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$ViewHolder;->summay:Landroid/widget/TextView;

    const v0, 0x7f0a04dc

    .line 102
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$ViewHolder;->nextIcon:Landroid/widget/ImageView;

    .line 103
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4b

    .line 105
    :cond_45
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$ViewHolder;

    .line 107
    :goto_4b
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    .line 108
    iput-object p1, p3, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$ViewHolder;->attchCategory:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    .line 109
    iget-object v0, p3, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$ViewHolder;->lable:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mAllCategoryData:Landroid/util/SparseArray;

    iget p1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    if-eqz p1, :cond_8e

    .line 113
    iget-object v0, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultSummary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 114
    iget-object v0, p3, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$ViewHolder;->summay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_85

    .line 116
    :cond_78
    iget-object v0, p3, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$ViewHolder;->summay:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p3, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$ViewHolder;->summay:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->defaultSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_85
    iget-object p3, p3, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    iget-object p1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_8e
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 2

    .line 129
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public refreshCategories()V
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getAppCategories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mAppCategories:Ljava/util/ArrayList;

    .line 134
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getCatagoryDatas()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->mAllCategoryData:Landroid/util/SparseArray;

    return-void
.end method
