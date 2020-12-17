.class Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;)V
    .registers 2

    .line 832
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 3

    .line 835
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 836
    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->access$1600(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    .line 837
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 838
    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 839
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    iput p0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 4

    .line 845
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    iput-object p1, v0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    .line 846
    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->access$1700(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$1000(Lcom/meizu/settings/applications/ManageApplications;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 847
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->access$1700(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/meizu/settings/applications/ManageApplications;->access$1302(Lcom/meizu/settings/applications/ManageApplications;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_3f

    .line 849
    :cond_20
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->access$1802(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 850
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->access$1700(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {p2}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->access$1800(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/settings/applications/ManageApplications;->access$1902(Lcom/meizu/settings/applications/ManageApplications;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 851
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_3f
    return-void
.end method
