.class Lcom/meizu/settings/applications/ManageApplications$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/ManageApplications;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ManageApplications;)V
    .registers 2

    .line 1850
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$1;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 1853
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$1;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/meizu/settings/applications/ManageApplications;->access$1002(Lcom/meizu/settings/applications/ManageApplications;Z)Z

    .line 1854
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$1;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageApplications;->onCreateSearchView()V

    return v0
.end method
