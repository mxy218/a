.class Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;
.super Ljava/lang/Object;
.source "DefaultAppSettingsDetails.java"

# interfaces
.implements Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/DefaultAppSettingsDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCategoryDataFinished(Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 73
    :cond_3
    iget-object v0, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->category:Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    .line 74
    iget v0, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-static {v1}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$100(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)I

    move-result v1

    if-eq v0, v1, :cond_10

    return-void

    .line 77
    :cond_10
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-static {v0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$202(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    .line 78
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$300(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

    move-result-object p1

    if-nez p1, :cond_3b

    .line 79
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    new-instance v0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$200(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;-><init>(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;)V

    invoke-static {p1, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$302(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;)Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

    .line 80
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$400(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-static {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$300(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_44

    .line 82
    :cond_3b
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-static {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$300(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_44
    return-void
.end method

.method public onGetCategoryListFinshed(I)V
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-static {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$000(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Lcom/meizu/settings/applications/DefaultAppSettingsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getCatagoryDatas()Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 52
    :cond_d
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-static {v1}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$100(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    const v1, 0x7f16009b

    if-ne p1, v1, :cond_24

    const/4 p1, 0x1

    .line 57
    iput p1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->dateType:I

    .line 59
    :cond_24
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-static {p1, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$202(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    .line 60
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$300(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

    move-result-object p1

    if-nez p1, :cond_4f

    .line 61
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    new-instance v0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$200(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;-><init>(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;)V

    invoke-static {p1, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$302(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;)Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

    .line 62
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$400(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-static {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$300(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_58

    .line 64
    :cond_4f
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-static {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->access$300(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_58
    return-void
.end method
