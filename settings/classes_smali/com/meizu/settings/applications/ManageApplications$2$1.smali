.class Lcom/meizu/settings/applications/ManageApplications$2$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/ManageApplications$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/applications/ManageApplications$2;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ManageApplications$2;)V
    .registers 2

    .line 2027
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$2$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2030
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$2$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$2;

    iget-object v0, v0, Lcom/meizu/settings/applications/ManageApplications$2;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$2$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$2;

    iget-object v0, v0, Lcom/meizu/settings/applications/ManageApplications$2;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications;->access$2200(Lcom/meizu/settings/applications/ManageApplications;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x0

    .line 2032
    :goto_15
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications$2$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$2;

    iget-object v1, v1, Lcom/meizu/settings/applications/ManageApplications$2;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v1}, Lcom/meizu/settings/applications/ManageApplications;->access$300(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 2033
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications$2$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$2;

    iget-object v1, v1, Lcom/meizu/settings/applications/ManageApplications$2;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v1}, Lcom/meizu/settings/applications/ManageApplications;->access$300(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    .line 2034
    iget-object v1, v1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_38

    .line 2035
    invoke-virtual {v1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 2038
    :cond_3b
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$2$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$2;

    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$2;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_4a

    .line 2039
    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications;->access$2300(Lcom/meizu/settings/applications/ManageApplications;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->resume(I)V

    :cond_4a
    return-void
.end method
