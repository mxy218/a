.class Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "MzAppsPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 3

    .line 85
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    .line 86
    invoke-static {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->access$000(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    .line 87
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 88
    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 89
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    iput p0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    iput-object p1, v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    .line 96
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->access$102(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 97
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
